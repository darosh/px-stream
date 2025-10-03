import { spawn } from 'child_process'
import { glob } from 'glob'
import config, { automationToFile, previewToFile } from './screenshots.animated.conf.js'

function makeAnimatedWebp (inputFile, outputFile, x, y, w, h, s, t) {
  console.log({inputFile, outputFile, x, y, w, h, s, t})
  
  return new Promise((resolve, reject) => {
    const args = [
      '-y',                // overwrite output
      '-ss', s,   // start
      '-t', t,         // keep
      '-i', inputFile,
      '-vf', `fps=16,crop=${w}:${h}:${x}:${y},scale=-1:255`,
      '-c:v', 'libwebp',   // webp encoder
      '-preset', 'default', // picture, drawing, text, default    
      '-q:v', '75',        // quality (0–100, ~75 is good balance)
      '-compression_level', '6',
      '-loop', '0',        // loop forever
      '-an',               // no audio
      '-hide_banner',
      '-loglevel', 'error',
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
  const sources = glob.sync('./docs/media/temp/Screen Recording *.mov').sort()

  for (const device of config.devices) {
    const [src, name, x0, x1, animated = false, slice] = device
    const outputFile = automationToFile(name, config.v)
    const inputFile = sources[src - 1]
    const width = x1
    const height = config.y1
    const x = x0
    const y = config.y0

    console.log(`Processing "${name}" from ${inputFile}.`)

    if (typeof animated === 'number') {
      await makeAnimatedWebp(inputFile, outputFile, x, y + 66, width, height, animated + config.offset[src - 1], config.time)
      console.log(`Saved animated ${outputFile}`)
    } else if (Array.isArray(animated)) {
      for (const [s, n] of animated) {
        const outputFiles = previewToFile(n, config.v)

        await makeAnimatedWebp(
          inputFile,
          outputFiles,
          x + slice[0] - config.frame,
          y + 66 + slice[1]  - config.frame,
          slice[2] + config.frame * 2,
          slice[3] + config.frame * 2,
          s + config.offset[src - 1], 
          config.time
        )
        
        console.log(`Saved preview ${outputFiles}`)
      }
    }
  }
}

await processScreenshots().catch(console.error)
