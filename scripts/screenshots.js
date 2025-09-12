import sharp from 'sharp'
import { glob } from 'glob'

import config from './screenshots.conf.js'

async function processScreenshots () {
  for (const device of config.devices) {
    const [src, name, x0, x1] = device
    const outputFile = `./assets/devices/${name.replace(/\s+/g, '_')}_v${config.v}.webp`
    const inputFile = `./assets/screenshot-${src}.png`

    await sharp(inputFile)
      .extract({ left: x0, top: config.y0, width: x1, height: config.y1 })
      .resize(null, 255)
      .toFile(outputFile)

    console.log(`Saved ${outputFile}`)
  }
}

await processScreenshots().catch(console.error)
