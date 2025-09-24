// node scripts/sample-points.js 'devices/svg/PX.1 Logo.svg' 100 100 66 666

import { createCanvas, loadImage } from 'canvas'

const inputPath = process.argv[2]
const targetW = parseInt(process.argv[3] || 100, 10)
const targetH = parseInt(process.argv[4] || 100, 10)
const threshold = parseInt(process.argv[5] || 66, 10)
const pointsCount = parseInt(process.argv[6] || 666, 10)

if (!inputPath) {
  console.error('Usage: node sample-points.js <image> [width] [height] [threshold] [pointsCount]')
  process.exit(1)
}

async function main () {
  const img = await loadImage(inputPath)

  // Keep aspect ratio
  const aspect = img.width / img.height
  let w = targetW, h = targetH

  if (aspect > 1) {
    h = Math.round(w / aspect)
  } else {
    w = Math.round(h * aspect)
  }

  const canvas = createCanvas(w, h)
  const ctx = canvas.getContext('2d')

  const dx = Math.floor((targetW - w) / 2)
  const dy = Math.floor((targetH - h) / 2)
  
  ctx.drawImage(img, 0, 0, w, h)
  const { data } = ctx.getImageData(0, 0, w, h)

  // Collect all valid positions
  const candidates = []
  
  for (let y = 0; y < h; y++) {
    for (let x = 0; x < w; x++) {
      const idx = (y * w + x) * 4
      const r = data[idx]
      const g = data[idx + 1]
      const b = data[idx + 2]
      const maxC = Math.max(r, g, b)

      if (maxC > threshold) {
        candidates.push([x + dx, y + dy])
      }
    }
  }

  if (candidates.length === 0) {
    console.error('No points found above threshold.')
    process.exit(1)
  }

  // Sample without duplicates
  const result = []
  const used = new Set()
  
  while (result.length < pointsCount * 2 && candidates.length > 0) {
    const idx = Math.floor(Math.random() * candidates.length)
    const [x, y] = candidates[idx]
    const key = `${x},${y}`
    if (!used.has(key)) {
      used.add(key)
      result.push(x, y)
    }
    
    // Remove candidate to avoid re-picking
    candidates.splice(idx, 1)
  }

  console.log(JSON.stringify(result))
}

main().catch(err => {
  console.error(err)
  process.exit(1)
})
