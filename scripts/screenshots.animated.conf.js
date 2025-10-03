let WIDTHS = {}
let x0 = 14

export default {
  offset: 0.125,
  time: 1.825,
  v: 0,
  frame: 2,
  y0: 1445,
  y1: 385,
  devices: [
    [1, 'PX World', 248],
    [1, 'PX Mix View', 414, [
      [0, 'PX GEN Cos Pattern'],
      [2, 'PX GEN Mini Shader'],
      [4, 'PX GEN Sketching'],
      [6, 'PX GEN Text']
    ], [6, 35, 342, 342]],
    [1, 'PX GEN Cos Pattern', 646, 0],
    [1, 'PX GEN Mini Shader', 468, 2],
    [1, 'PX GEN Sketching', 468, 4],
    [1, 'PX GEN Text', 276, 6],
  ].map(([src, name, x1, animated, slice]) => {
    WIDTHS[src] = WIDTHS[src] || 14
    const r = [src, name, WIDTHS[src], x1, animated, slice]
    WIDTHS[src] = r[2] + r[3] + 10
    return r
  })
}

export function previewToFile (name, v) {
  return v
    ? `./docs/media/previews/${name.replace(/\s+/g, '_')}_v${v}.webp`
    : `./docs/media/previews/${name.replace(/\s+/g, '_')}.webp`
}

export function automationToFile (name, v) {
  return v
    ? `./docs/media/automation/${name.replace(/\s+/g, '_')}_v${v}.webp`
    : `./docs/media/automation/${name.replace(/\s+/g, '_')}.webp`
}
