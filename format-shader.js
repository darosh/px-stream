// based on https://github.com/msfeldstein/interactive-shader-format-js/

import { readFile, readdir, writeFile } from 'fs/promises'
import stringify from 'json-stringify-pretty-compact'

async function formatFile(path) {
  const rawFragmentShader = await readFile(path, 'utf8')

  const regex = /\*([^*]|[\r\n]|(\*+([^*/]|[\r\n])))*\*+/
  const results = regex.exec(rawFragmentShader)
  let metadataString = results[0].substring(1, results[0].length - 1)
  const metadata = JSON.parse(metadataString)
  const endOfMetadata = rawFragmentShader.indexOf(metadataString) + metadataString.length + 2
  const rawFragmentMain = rawFragmentShader.substring(endOfMetadata)

  const orderedInputs = (metadata.INPUTS || []).map(i => ({
    NAME: i.NAME,
    LABEL: i.LABEL,
    TYPE: i.TYPE,
    DEFAULT: i.DEFAULT,
    MIN: i.MIN,
    MAX: i.MAX
  }))

  const orderedPasses = (metadata.PASSES || []).map(p => ({
    TARGET: p.TARGET,
    PERSISTENT: p.PERSISTENT,
    FLOAT: p.FLOAT,
    WIDTH: p.WIDTH,
    HEIGHT: p.HEIGHT,
    DESCRIPTION: p.DESCRIPTION
  }))

  const orderedMetadata = {
    CREDIT: metadata.CREDIT,
    CATEGORIES: metadata.CATEGORIES,
    IMPORTED: Object.keys(metadata.IMPORTED || {}).length === 0 ? undefined : metadata.IMPORTED,
    INPUTS: orderedInputs,
    PASSES: orderedPasses.length === 0 ? undefined : orderedPasses,
    ISFVSN: metadata.ISFVSN || '2',
    DESCRIPTION: metadata.DESCRIPTION
  }
  const newMeta = stringify(orderedMetadata, { maxLength: 140, indent: 4 })
  const newMain = rawFragmentMain.trim()
  const newFile = `/*${newMeta}*/\n\n${newMain}\n`

  return { newFile, newMeta }
}

const dir = await readdir('./shaders')

for (const f of dir) {
  if (!f.endsWith('.fs')) {
    continue
  }

  console.log(f)
  const nf = await formatFile(`./shaders/${f}`)

  // console.log(nf.newMeta)
  await writeFile(`./shaders/${f}`, nf.newFile)
}
