import { readFile, writeFile } from 'fs/promises'
import { glob } from 'glob'
import { fixUninitializedLoopVars, fixUninitializedVars } from './fix.js'
import { Fragmen } from './fragmen.js'
import { toJxs } from './jxs.js'

const preview = true
const files = glob.sync('./devices/mini-shaders/*.mfs')

const fs = new Fragmen()

for (const file of files) {
  console.log('File', file)
  const original = await readFile(file, 'utf8')

  const previewCode = `
  float red = 0., gre = 0., blu = 0.;
  if (o.r > 1 || o.g > 1 || o.b > 1) {
    red = 1.;
  }
  if (o.r < 0 || o.g < 0 || o.b < 0) {
    blu = 1.;
  }
  o.rgb = vec3(red, gre, blu);
  `
  
  const fixedLoops = fixUninitializedLoopVars(original.trim() + preview ? previewCode : '')
  const fixed = fixUninitializedVars(fixedLoops.fixed)
  
  if (fixed.changes) {
    console.log('Fixed vars', fixed.changes)
    // console.log('Fixed tokens', fixed.tokens)
    // console.log('Fixed details', fixed.details)
  }
  
  if (fixedLoops.changes) {
    console.log('Fixed loops', fixedLoops.changes)
  }
  
  const code = fs.preprocessFragmentCode(fixed.fixed)
  const jxs = toJxs(code)
  
  await writeFile(`${file}.jxs`, jxs)
}
