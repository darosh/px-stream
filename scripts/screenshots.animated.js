import sharp from 'sharp'
import { spawn } from 'child_process'
import config from './screenshots.conf.js'

async function makeStaticWebp (inputFile, outputFile, x, y, w, h) {
  await sharp(inputFile)
    .extract({ left: x, top: y, width: w, height: h })
    .resize(null, 255)
    .toFile(outputFile)
}

function makeAnimatedWebp (inputFile, outputFile, x, y, w, h) {
  return new Promise((resolve, reject) => {
    const args = [
      '-y',                // overwrite output
      '-ss', '00:00:00',   // start at 2s
      '-t', '0.5',           // keep 6s
      '-i', inputFile,
      '-vf', `fps=16,crop=${w}:${h}:${x}:${y},scale=-1:255`,
      '-c:v', 'libwebp',   // webp encoder
      '-preset', 'default', // picture, drawing, text, default    
      '-q:v', '75',        // quality (0–100, ~75 is good balance)
      '-compression_level', '6',
      '-loop', '0',        // loop forever
      '-an',               // no audio
      outputFile
    ]

    const ff = spawn('ffmpeg', args, { stdio: 'inherit' })
    ff.on('error', reject)
    ff.on('exit', code => {
      if (code === 0) resolve()
      else reject(new Error(`ffmpeg exited with code ${code}`))
    })
  })
}

async function processScreenshots () {
  for (const device of config.devices) {
    const [src, name, x0, x1, animated = false] = device
    const outputFile = `./docs/media/devices/${name.replace(/\s+/g, '_')}_v${config.v}.webp`
    const inputFile = animated
      ? `./docs/media/temp/screenshot-${src}.mov`   // animated source (video)
      : `./docs/media/temp/screenshot-${src}.png`   // static source (image)

    const width = x1
    const height = config.y1
    const x = x0
    const y = config.y0

    if (animated) {
      await makeAnimatedWebp(inputFile, outputFile, x, y + 66, width, height)
      console.log(`Saved animated ${outputFile}`)
    } else {
      // await makeStaticWebp(inputFile, outputFile, x, y, width, height)
      // console.log(`Saved static ${outputFile}`)
    }
  }
}

await processScreenshots().catch(console.error)
