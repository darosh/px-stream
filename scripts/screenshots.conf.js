let WIDTHS = {}
let x0 = 14

export default {
  v: 0,
  y0: 1445,
  y1: 385,
  devices: [
    [0, 'PX IN Stream (Spout)', 276],
    [1, 'PX World', 248],
    [1, 'PX Mix View', 676],
    [1, 'PX Shader', 856 + 3 * 16 * 2],
    [1, 'PX Mix Channel', 276],
    [1, 'PX Mix Dry', 276],
    [1, 'PX FX Transform', 276],
    [2, 'PX Route Audio', 224],
    [2, 'PX GEN Text', 276],
    [2, 'PX IN Stream (Syphon)', 276],
    [2, 'PX IN SVG', 276],
    [2, 'PX IN Mix', 276],
    [2, 'PX IN Channel', 276],
    [2, 'PX IN Cam', 276],
    [2, 'PX FX Pass', 276],
    [2, 'PX FX Kaleidoscope', 276],
    [2, 'PX IN Video', 276],
    [3, 'PX GEN Cos Pattern', 646],
    [3, 'PX FX Delay', 276],
    [3, 'PX FX Blur', 276],
    [3, 'DEV Info', 528],
    [3, 'DEV Console', 276],
    [3, 'PX FX Convert', 276],
    [3, 'PX FX Convert (convert back)', 276, true],
    [3, 'PX World (mad world)', 248],
    [4, 'PX FX Color', 648],
    [4, 'PX FX Color (gamma)', 620],
    [4, 'PX FX Color (hue)', 972],
    [4, 'PX FX Colorize', 452],
    [5, 'PX Mix View (expanded)', 1054],
    [5, 'PX Route MIDI (linked)', 224],
    [5, 'PX Shader (types)', 592 + 16 * 2],
    [5, 'PX GEN Text (expanded)', 536],
    [5, 'PX FX Alpha', 452],
    [6, 'PX FX Pixelization', 544],
    [6, 'PX IN Image', 276],
    [6, 'PX Mix Transition', 276],
    [6, 'PX GEN Sketching', 468],
    [6, 'PX GEN Mini Shader', 468],
    [6, 'PX Rec', 224]
  ].map(([s, name, x1, exclude]) => {
    const src = s + 1
    WIDTHS[src] = WIDTHS[src] || 14
    const r = [src, name, WIDTHS[src], x1, exclude]
    WIDTHS[src] = r[2] + r[3] + 10
    return r
  })
}

export function imageToFile (name, v) {
  return v
    ? `./docs/media/devices/${name.replace(/\s+/g, '_')}_v${v}.webp`
    : `./docs/media/devices/${name.replace(/\s+/g, '_')}.webp`
}
