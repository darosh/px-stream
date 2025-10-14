let WIDTHS = {}
let x0 = 14

export default {
  v: 0,
  y0: 1445,
  y1: 385,
  devices: [
    [1, 'Minimal patch', 248 + 674 + 276 + 2 * 10],
    [2, 'Adding FX', 248 + 674 + 276 + 276 + 276 + 4 * 10],
    [3, 'Using Mix Dry', 248 + 674 + 276 + 276 + 276 + 276 + 276 + 6 * 10],
    [4, 'Syphon streaming', 1050],
    [5, '_', 50, true],
    [5, 'Using MIDI', 2624],
  ].map(([src, name, x1, exclude]) => {
      WIDTHS[src] = WIDTHS[src] || 14
      const r = [src, name, WIDTHS[src], x1, exclude]
      WIDTHS[src] = r[2] + r[3] + 10
      return r
    })
    .filter(d => !d[4])
}

export function imageToFileGuide (name, v) {
  return v
    ? `./docs/media/guide/${name.replace(/\s+/g, '_')}_v${v}.webp`
    : `./docs/media/guide/${name.replace(/\s+/g, '_')}.webp`
}
