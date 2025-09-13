outlets = 1

const extra = {
  fftuImage: {dim: [1, 1024, 512, 'audio']},
  fftImage: {dim: [1, 1024, 512, 'audio']},
  wavuImage: {dim: [1, 1024, 512, 'audio']},
  waveImage: {dim: [1, 1024, 512, 'audio']},
  xyImage: {dim: [16, 1024, 512, 'audio']},
  xydImage: {dim: [16, 1024, 512, 'audio'], scale:[0.01, 5, .5], line: [0.01, 25, 1], skip: [0, 2, 0.1]},
  xyeImage: {dim: [16, 1024, 512, 'audio'], scale:[0.01, 5, .5], line: [0.001, .2, 0.02], base: [0, 1, 0.87], intensity:[0.0, 5., 1.]},
  xycImage: {dim: [16, 1024, 512, 'audio']},
  midiImage: {dim: [16, 1024, 128, 'audio']},
  inputImage: {}
}

function anything () {

  const d = new Dict(arguments[0])

  const keys = d.getkeys()
  const o = {}

  for (const k of keys) {
    const p = d.get(k)
    const t = p.get('type')


    if (t === 'color') {
      for (const c of [0, 1, 2, 3]) {
        const cn = `${'RGBA'[c]}_${k}`

        o[cn] = { type: "_float" }
        o[cn].min = p.get('min')?.[c] ?? 0.
        o[cn].max = p.get('max')?.[c] ?? 0.
        o[cn].default = p.get('default')?.[c] ?? 1.
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
      })
    }

    if (t === 'audio') {
      continue
      //o[k].max = 1024
      //o[k].default = 1024
    } else if (t === 'audiofft') {
      continue
      //o[k].max = 1024
      //o[k].default = 1024
    }

    o[k] = {}

    const ms = p.getkeys() ?? []

    for (const m of ms) {
      o[k][m] = p.get(m)
    }

    o[k].min = o[k].min ?? 0
    o[k].max = o[k].max ?? 1.
    o[k].default = o[k].default ?? 1.
    o[k].group = o[k].group ?? '_'
  }

  //post(JSON.stringify(o, null, 2) + '\n')
  outlet(0, JSON.stringify(o))
}
