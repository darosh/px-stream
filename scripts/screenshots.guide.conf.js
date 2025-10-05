let WIDTHS = {}
let x0 = 14

export default {
  v: 0,
  y0: 1445,
  y1: 385,
  devices: [
    [1, 'Minimal patch', 248 + 676 + 468 + 2*10]
  ].map(([src, name, x1, exclude]) => {
    WIDTHS[src] = WIDTHS[src] || 14
    const r = [src, name, WIDTHS[src], x1, exclude]
    WIDTHS[src] = r[2] + r[3] + 10
    return r
  })
}

export function imageToFileGuide (name, v) {
  return v
    ? `./docs/media/guide/${name.replace(/\s+/g, '_')}_v${v}.webp`
    : `./docs/media/guide/${name.replace(/\s+/g, '_')}.webp`
}
