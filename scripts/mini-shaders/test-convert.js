import { readFile, writeFile } from 'fs/promises'
import { glob } from 'glob'
import { fixUninitializedLoopVars, fixUninitializedVars } from './fix.js'
import { Fragmen } from './fragmen.js'
import { toJxs } from './jxs.js'

const files = glob.sync('./devices/mini-shaders/*.mfs')

const fs = new Fragmen()

for (const file of files) {
  console.log('File', file)
  const original = await readFile(file, 'utf8')
  const fixedLoops = fixUninitializedLoopVars(original.trim())
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
