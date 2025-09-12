import fs from 'fs'
import path from 'path'
import { glob } from 'glob'
import sharp from 'sharp'

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
    .replace(/_v\d+$/, '')
    .toLowerCase()
    .replace(/_\(.+\)/, '')
    .replaceAll('_', '-')
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

  // Initialize rows
  const rowImages = Array.from({ length: rows }, () => [])
  const rowWidths = Array(rows).fill(0)

  // Greedy bin packing: assign each image to the row with least current width
  for (const img of images) {
    let targetRow = rowWidths.indexOf(Math.min(...rowWidths))
    rowImages[targetRow].push(img)
    rowWidths[targetRow] += img.width + spacing
  }

  // Compute max row width
  const maxRowWidth = Math.max(
    ...rowImages.map(
      (row) => row.reduce((s, img) => s + img.width, 0) + (row.length - 1) * spacing
    )
  )

  const totalHeight = rows * rowHeight + (rows - 1) * spacing

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

  // Generate HTML snippet for GH
  const scaleFactor = targetWidth / (maxRowWidth + margin * 2)
  const html = []
  html.push(`<div style="display:flex; flex-direction:column; gap:${spacing}px; max-width:${targetWidth}px;">`)

  layout.forEach((row, rowIndex) => {
    html.push(`  <div style="display:flex; gap:${spacing}px; justify-content:space-between;">`)
    row.forEach((img, i) => {
      const scaledWidth = Math.round(img.width * scaleFactor)
      html.push(
        `    <a href="#${imgSection(img.name)}"><img src="./${path.join('assets', 'devices', img.name)}" width="${scaledWidth}"/></a>`
      )
    })
    html.push('  </div>')
  })
  html.push('</div>')

  fs.writeFileSync(htmlOutput, html.join('\n'), 'utf-8')
  console.log('HTML snippet saved to', htmlOutput)
}

await createCollage().catch(console.error)
