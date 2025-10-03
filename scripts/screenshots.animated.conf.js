let WIDTHS = {}
let x0 = 14

export default {
  offset: 0.125,
  time: 1.825,
  v: 1,
  y0: 1445,
  y1: 385,
  devices: [
    [1, 'PX World', 248],
    [1, 'PX Mix View', 414, [
      [0, 'PX GEN Cos Pattern Preview'],
      [2, 'PX GEN Mini Shader Preview'],
      [4, 'PX GEN Sketching Preview'],
      [6, 'PX GEN Text Preview']
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

export function imageToFile (name, v) {
  return v
    ? `./docs/media/devices/${name.replace(/\s+/g, '_')}_v${v}.animated.webp`
    : `./docs/media/devices/${name.replace(/\s+/g, '_')}.animated.webp`
}
