import sharp from 'sharp'
import config from './screenshots.conf.js'

async function processScreenshots () {
  for (const device of config.devices) {
    const [src, name, x0, x1] = device
    const outputFile = `./assets/devices/${name.replace(/\s+/g, '_')}_v${config.v}.jpg`
    const inputFile = `./assets/screenshot-${src}.png`

    await sharp(inputFile)
      .extract({ left: x0, top: config.y0, width: x1, height: config.y1 })
      .toFile(outputFile)

    console.log(`Saved ${outputFile}`)
  }
}

processScreenshots().catch(console.error)
