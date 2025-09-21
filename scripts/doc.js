import path from 'path'
import { glob } from 'glob'
import sharp from 'sharp'
import { readFile, writeFile } from 'fs/promises'
import screenshots, { imageToFile } from './screenshots.conf.js'

// === CONFIGURATION ===
const inputPattern = './assets/devices/*.webp' // adjust to your folder
const outputFile = './assets/devices.webp'
const htmlOutput = './assets/devices.html' // HTML snippet for GH README
const rows = 5 // number of rows
const align = 'justify' // "left" | "center" | "justify"
const spacing = 16 // minimal distance between images
const margin = 24 // outer margin around the whole collage
const targetWidth = 830 // target max width for GH rendering

function imgSection (name) {
  return path.parse(name).name
    .toLowerCase()
    .replace(/_v\d+$/, '')
    .replace(/_\(.+\)/, '')
    .replaceAll('_', '-')
    .replace(/^px-in/, 'in')
    .replace(/^px-fx/, 'fx')
    .replace(/^px-gen/, 'gen')
}

function imgTitle (name) {
  return path.parse(name).name
    .replace(/_v\d+$/, '')
    .replace(/_\(.+\)/, '')
    .replaceAll('_', ' ')
    .replace(/^px in/i, 'IN')
    .replace(/^px fx/i, 'FX')
    .replace(/^px gen/i, 'GEN')
}

function refineRows (rowImages, rowWidths, rowOptimalWidth, maxIterations = 5000) {
  const rows = rowImages.length

  function score (widths) {
    // lower is better: variance around target width
    return widths.reduce((acc, w) => acc + Math.pow(w - rowOptimalWidth, 2), 0)
  }

  let bestScore = score(rowWidths)

  for (let iter = 0; iter < maxIterations; iter++) {
    let improved = false

    // Try all pairs of rows
    for (let r1 = 0; r1 < rows; r1++) {
      for (let r2 = r1 + 1; r2 < rows; r2++) {
        // Try all pairs of images between row r1 and r2
        for (let i1 = 0; i1 < rowImages[r1].length; i1++) {
          for (let i2 = 0; i2 < rowImages[r2].length; i2++) {
            const img1 = rowImages[r1][i1]
            const img2 = rowImages[r2][i2]

            // widths after swap
            const newWidths = [...rowWidths]
            newWidths[r1] = newWidths[r1] - img1.width + img2.width
            newWidths[r2] = newWidths[r2] - img2.width + img1.width

            const newScore = score(newWidths)
            if (newScore < bestScore) {
              // accept swap
              rowImages[r1][i1] = img2
              rowImages[r2][i2] = img1
              rowWidths[r1] = newWidths[r1]
              rowWidths[r2] = newWidths[r2]
              bestScore = newScore
              improved = true
            }
          }
        }
      }
    }

    if (!improved) break // stop if no better swap found
  }

  return { rowImages, rowWidths }
}

async function createHtmlCollage (maxRowWidth, layout) {
  // Generate HTML snippet for GH
  const scaleFactor = targetWidth / (maxRowWidth + margin * 2)
  const html = []
  html.push(`<div>`)

  layout.forEach((row, rowIndex) => {
    // html.push(`  <div>`)
    row.forEach((img, i) => {
      const scaledWidth = Math.round(img.width * scaleFactor)
      const title = imgTitle(img.name)
      html.push(
        `    <a href="#${imgSection(img.name)}"><img src="./${path.join('assets', 'devices', img.name)}" title="${title}" width="${scaledWidth}"/></a>`
      )
    })
    // html.push('  </div>')
  })
  html.push('</div>')

  await writeFile(htmlOutput, html.join('\n'), 'utf-8')
  console.log('HTML snippet saved to', htmlOutput)

  return html
}

async function createCollage () {
  // Get images
  const files = glob.sync(inputPattern)
  if (files.length === 0) throw new Error('No images found')

  // Load metadata (width, height)
  const images = await Promise.all(
    files.map(async (file) => {
      const metadata = await sharp(file).metadata()
      return { file, width: metadata.width, height: metadata.height, name: path.basename(file) }
    })
  )

  const rowHeight = images[0].height

  // Sort images by width (descending)
  images.sort((a, b) => b.width - a.width)

  const totalWidth = images.reduce((acc, { width }) => acc + width + spacing, 0)
  const rowOptimalWidth = totalWidth / rows

  // Initialize rows
  let rowImages = Array.from({ length: rows }, () => [])
  let rowWidths = Array(rows).fill(0)

  // Greedy bin packing: assign each image to the row with least current width
  for (const img of images) {
    let targetRow = rowWidths.indexOf(Math.min(...rowWidths))
    rowImages[targetRow].push(img)
    rowWidths[targetRow] += img.width + spacing
  }

  // console.log({ rowWidths })

  const { rowImages: refinedImages, rowWidths: refinedWidths } = refineRows(rowImages, rowWidths, rowOptimalWidth)
  rowImages = refinedImages

  // console.log({ refinedWidths })

  // Compute max row width
  const maxRowWidth = Math.max(
    ...rowImages.map(
      (row) => row.reduce((s, img) => s + img.width, 0) + (row.length - 1) * spacing
    )
  )

  const totalHeight = rows * rowHeight + (rows - 1) * spacing

  for (let rowIndex = 1; rowIndex < rowImages.length; rowIndex += 2) {
    const t = rowImages[rowIndex]
    rowImages[rowIndex] = rowImages[rowIndex + 1]
    rowImages[rowIndex + 1] = t
  }

  for (const row of rowImages) {
    let indexOf = rowImages.indexOf(row)
    indexOf = indexOf === 3 ? indexOf + 1 : indexOf

    const index = (indexOf % 2 === 0) * 1
    const pick = row[index]
    row.splice(index, 1)
    row.push(pick)
  }

  // Prepare sharp composites and layout data for HTML
  const composites = []
  const layout = []
  let y = margin

  for (const row of rowImages) {
    const totalWidth = row.reduce((s, img) => s + img.width, 0)
    const gaps = row.length - 1

    let x = margin
    let extraSpace = maxRowWidth - totalWidth - gaps * spacing

    let gapSpacing = spacing
    let remainder = 0

    if (align === 'center') {
      x += Math.floor(extraSpace / 2)
    } else if (align === 'justify' && gaps > 0) {
      gapSpacing = spacing + Math.floor(extraSpace / gaps)
      remainder = extraSpace % gaps // distribute leftover pixels
    }

    const rowLayout = []

    for (let i = 0; i < row.length; i++) {
      const img = row[i]
      composites.push({
        input: img.file,
        top: y,
        left: x,
      })
      rowLayout.push({ ...img, width: img.width, height: rowHeight })

      x += img.width
      if (i < row.length - 1) {
        x += gapSpacing
        if (remainder > 0) {
          x += 1 // distribute an extra pixel
          remainder--
        }
      }
    }

    layout.push(rowLayout)
    y += rowHeight + spacing
  }

  // Create blank canvas and composite
  const collage = sharp({
    create: {
      width: maxRowWidth + margin * 2,
      height: totalHeight + margin * 2,
      channels: 4,
      background: { r: 56, g: 56, b: 56, alpha: 1 },
    },
  })
    .composite(composites)
    .webp()

  await collage.toFile(outputFile)
  console.log('Collage saved to', outputFile)

  return { maxRowWidth, layout }
}

function replaceLines (lines, slug, replace) {
  const begin = `<!-- begin: ${slug} -->`
  const end = `<!-- end: ${slug} -->`

  return [
    ...lines.slice(0, lines.indexOf(begin) + 1),
    ...Array.isArray(replace) ? replace : replace.split('\n'),
    ...lines.slice(lines.indexOf(end))
  ]
}

function updateDescription (lines, device, description, images) {
  const title = imgTitle(device)

  const start = lines.indexOf(`### ${title}`)

  if (start === -1) {
    console.error(`Mising ${device}`)
    process.exit()
  }

  let end = start + 1

  while (!(lines[end][0] === '#' || lines[end] === '---')) {
    end++
  }

  const imagesHtml = images.map(i => {
    return `<img src="${imageToFile(i, screenshots.v)}" height="289" />`
  })

  let descLines = Array.isArray(description) ? description : description.split('\n')

  descLines = !descLines.join('').trim() ? [] : ['', ...descLines]

  return [
    ...lines.slice(0, start + 1),
    ...descLines,
    '',
    ...imagesHtml,
    '',
    ...lines.slice(end)
  ]
}

function updateDeviceInfo (lines, devices) {
  let updated = lines

  for (const [device, { description }] of Object.entries(devices)) {
    const images = screenshots.devices
      .filter(([_id, name]) => {
        return name.replace(/ \(.+\)/, '') === device
      })
      .map(([_id, name]) => name)

    updated = updateDescription(updated, device, description, images)
  }

  return updated
}

async function updateReadme (htmlCollage) {
  const outputFile = './README.md'
  const rm = readFile(outputFile, 'utf8')
  let lines = (await rm).split('\n')
  lines = replaceLines(lines, 'collage', htmlCollage)
  const devices = JSON.parse(await readFile('./assets/devices.json', 'utf8'))
  lines = updateDeviceInfo(lines, devices)
  await writeFile(outputFile, lines.join('\n'))
  console.log('README.md updated', outputFile)
}

const { maxRowWidth, layout } = await createCollage().catch(console.error)
const htmlCollage = await createHtmlCollage(maxRowWidth, layout)
await updateReadme(htmlCollage)
