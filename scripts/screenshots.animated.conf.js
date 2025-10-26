let WIDTHS = {}
let x0 = 14

const COL = 46

export default {
  offset: [0.5, 0.75, 0.7, 0.5, 0.6, 0, 0, 0.8],
  time: 1.825, // 1.825 2.825
  v: 1,
  frame: 2,
  y0: 1445,
  y1: 385,
  devices: [

    /* 1 */
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

    /* 2 */
    [2, 'PX Mix View', 414, [
      [0, 'PX FX Alpha'],
      [2, 'PX FX Blur'],
      [4, 'PX FX Colorize'],
      [6, 'PX FX Delay']
    ], [6, 35, 342, 342]],

    [2, '_', COL],
    [2, 'PX FX Alpha', 452, 0],
    [2, '_', COL],
    [2, 'PX FX Blur', 276, 2],
    [2, '_', COL],
    [2, 'PX FX Colorize', 452, 4],
    [2, '_', COL],
    [2, 'PX FX Delay', 276, 6],

    /* 3 */
    [3, 'PX Mix View', 414, [
      [0, 'PX FX Kaleidoscope'],
      [2, 'PX FX Pass'],
      [4, 'PX FX Pixelization'],
      [6, 'PX FX Transform']
    ], [6, 35, 342, 342]],

    [3, '_', COL],
    [3, 'PX FX Kaleidoscope', 276, 0],
    [3, '_', COL],
    [3, 'PX FX Pass', 276, 2],
    [3, '_', COL],
    [3, 'PX FX Pixelization', 544, 4],
    [3, '_', COL],
    [3, 'PX FX Transform', 276, 6],

    /* 4 */
    [4, 'PX Mix View', 414, [
      [0, 'PX IN SVG'],
      [2, 'PX IN Image'],
      [4, 'PX IN Video'],
      [6, 'PX Mix Dry'],
      [8, 'PX Mix Transition'],
      [10, 'PX FX Convert']
    ], [6, 35, 342, 342]],

    [4, 'PX IN SVG', 276, 0],
    [4, 'PX IN Image', 276, 2],
    [4, 'PX IN Video', 276, 4],
    [4, '_', COL],
    [4, '_', COL],
    [4, 'PX Mix Dry', 276, 6],
    [4, '_', COL],
    [4, '_', COL],
    [4, 'PX Mix Transition', 276, 8],
    [4, '_', 276],
    [4, 'PX FX Convert', 276, 10],

    /* 5 */
    [5, 'PX Mix View', 414, [
      [0, 'PX FX Color'],
      [2, 'PX Shader'],
    ], [6, 35, 342, 342]],

    [5, '_', 276],
    [5, 'PX FX Color', 648, 0],

    /* 6 */
    [6, 'Using XY Oscilloscope', 1918, 0],

    /* 7 */
    [7, 'Using Feedback', 2386, 0],

    /* 8 */
    [8, 'PX Mix View', 412, [
      [0, 'PX Mix Grid']
    ], [6, 35, 342, 342]],

    [8, 'PX Mix Grid', 276, 0],
  ]
    // .filter(d => d[0] === 8)
    .map(([src, name, x1, animated, slice]) => {
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
