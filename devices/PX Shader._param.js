outlets = 1

const extra = {
  fftuImage: { dim: [1, 1024, 512, 'audio'] },
  fftImage: { dim: [1, 1024, 512, 'audio'] },
  wavuImage: { dim: [1, 1024, 512, 'audio'] },
  waveImage: { dim: [1, 1024, 512, 'audio'] },
  xyImage: { dim: [16, 1024, 512, 'audio'] },
  xydImage: { dim: [16, 1024, 512, 'audio'], scale: [0.01, 5, .5], line: [0.01, 25, 1], skip: [0, 2, 0.1] },
  xyeImage: {
    dim: [16, 1024, 512, 'audio'],
    scale: [0.01, 5, .5],
    line: [0.001, .2, 0.02],
    base: [0, 1, 0.87],
    intensity: [0.0, 5., 1.]
  },
  xycImage: { dim: [16, 1024, 512, 'audio'] },
  // midiImage: { dim: [16, 1024, 128, 'audio'] },
  inputImage: {}
}

function typeToLabel (type) {
  // Insert space before capital letters
  return type.replace(/([a-z])([A-Z])/g, '$1 $2')
    // Replace one or more underscores with a single space
    .replace(/_+/g, ' ')
    // Lowercase everything
    .toLowerCase()
    // Capitalize the first letter
    .replace(/^./, (c) => c.toUpperCase())
    .trim()
}

function anything () {
  const d = new Dict(arguments[0])

  const keys = d.getkeys() ?? []
  const o = {}

  for (const k of keys) {
    const p = d.get(k)
    const t = p.get('type')

    if (t === 'color') {
      for (const c of [0, 1, 2, 3]) {
        const cn = `${'RGBA'[c]}_${k}`

        o[cn] = { type: '_float' }
        o[cn].min = p.get('min')?.[c] ?? 0.
        o[cn].max = p.get('max')?.[c] ?? 0.
        o[cn].default = p.get('default')?.[c] ?? 1.
        o[cn].label = o[cn]?.label?.trim() || typeToLabel(k)
        o[cn].label += ` ${'RGBA'[c]}`
      }

      continue
    }

    if (extra[k]) {
      const eks = Object.keys(extra[k])

      if (eks.length === 0) {
        continue
      }

      eks.map(ek => {
        const [min, max, default_, type] = extra[k][ek]
        o[`_${ek}`] = { min, max, default: default_, type: type ?? '_float', group: k }
        o[`_${ek}`].label = o[`_${ek}`]?.label?.trim() || typeToLabel(`_${ek}`)
      })
    }

    if (t === 'audio') {
      continue
      //o[k].max = 1024
      //o[k].default = 1024
    } else if (t === 'audiofft') { // jit.gl.fft seems to convert to lowercase :(
      continue
      //o[k].max = 1024
      //o[k].default = 1024
    }

    o[k] = {}

    const ms = p.getkeys() ?? []

    for (const m of ms) {
      o[k][m] = p.get(m)
      // post('o[k][m]: ' + [k, m] + ': ' + JSON.stringify(o[k][m])  + '\n')
    }

    if (o[k]?.values) {
      o[k].min = Math.min(...o[k].values)
      o[k].max = Math.max(...o[k].values)
    }

    o[k].min = o[k].min ?? 0
    o[k].max = o[k].max ?? 1.
    o[k].default = o[k].default ?? o[k].max ?? 1.
    o[k].group = o[k].group ?? '_'
    o[k].label = o[k]?.label?.trim() || typeToLabel(k)
  }

  //post(JSON.stringify(o, null, 2) + '\n')
  outlet(0, JSON.stringify(o))
}
