import sharp from 'sharp'
import { glob } from 'glob'

import config, { imageToFile } from './screenshots.conf.js'
import configGuide, { imageToFileGuide } from './screenshots.guide.conf.js'

async function processScreenshots (p, config, imageToFile) {
  const max = Math.max(...config.devices.map(x => x[0]))
  const screenshots = glob.sync(p).sort().slice(-max)

  for (const device of config.devices) {
    const [src, name, x0, x1] = device
    const outputFile = imageToFile(name, config.v)
    const inputFile = `./${screenshots[src - 1]}`

    await sharp(inputFile)
      .extract({ left: x0, top: config.y0, width: x1, height: config.y1 })
      .resize(null, 255)
      .toFile(outputFile)

    console.log(`Saved ${outputFile}`)
  }
}

await processScreenshots('./docs/media/temp/Screenshot 2*.png', config, imageToFile)
  .catch(console.error)

await processScreenshots('./docs/media/temp/guide/Screenshot 2*.png', configGuide, imageToFileGuide)
  .catch(console.error)
