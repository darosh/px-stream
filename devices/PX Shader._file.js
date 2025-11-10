import { inlineIncludes } from '../scripts/shaders/include.js'

const GLOBAL = new Global('px-stream')
GLOBAL.local = GLOBAL.local ?? 0
GLOBAL.local++

const LOCAL = GLOBAL.local

function readInlineFile (path) {
  const f = new File(path, 'read')

  if (f.isopen) {
    const t = f.readstring(1e6)
    f.close()
    return t
  }
}

function readFile (fileName) {
  if (!fileName) {
    return
  }

  const fsFile = new File(fileName, 'read')

  if (!fsFile.isopen) {
    post(`File failed: ${fileName}\n`)
    return
  }

  const fsLines = []

  while (fsFile.position < fsFile.eof) {
    const l = fsFile.readline(1e6)
    fsLines.push(l)
  }

  fsFile.close()

  const parts = fileName.split('/')
  parts.pop()
  parts[parts.length - 1] = 'lib'
  const base = parts.join('/') + '/'

  const fsInlinedLines = inlineIncludes(fsLines, base, readInlineFile)

  // post(`File lines: ${fsLines.length}\n`)
  // post(`File inlined lines: ${fsInlinedLines.length}\n`)

  if (fsLines.length === fsInlinedLines.length) {
    outlet(0, 'read', fileName)
    return
  }

  parts[parts.length - 1] = 'shaders'
  parts.push(`.temp-${LOCAL}.fs`)
  const fileWriteName = parts.join('/')
  const fsWriteFile = new File(fileWriteName, 'write')

  if (!fsWriteFile.isopen) {
    post(`File failed: ${fileWriteName}\n`)
    return
  }

  fsWriteFile.eof = 0
  fsWriteFile.position = 0

  for (const l of fsInlinedLines) {
    fsWriteFile.writeline(l)
  }

  fsWriteFile.close()
  // post(`File written: ${fileWriteName}\n`)

  const vsFileName = fileName.replace(/\.fs$/, '.vs')
  const vsReadFile = new File(vsFileName, 'read')

  // post(`VS File isopen: ${vsReadFile.isopen}\n`)

  if (vsReadFile.isopen) {
    const vsWriteFile = new File(vsWriteName, 'write')

    if (!vsWriteFile.isopen) {
      post(`File write failed: ${vsWriteName}\n`)
      return
    }

    while (vsReadFile.position < vsReadFile.eof) {
      const l = vsReadFile.readline(1e6)
      vsWriteFile.writeline(l)
    }

    vsWriteFile.close()
    vsReadFile.close()
  } else {
    vsReadFile.close()
  }

  outlet(0, 'read', fileWriteName)
}

readFile()
