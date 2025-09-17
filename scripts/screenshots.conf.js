let WIDTHS = {}
let x0 = 14

export default {
  v: 1,
  y0: 1445,
  y1: 385,
  devices: [
    [1, 'PX World', 248],
    [1, 'PX Mix View', 676, true],
    [1, 'PX Shader', 856],
    [1, 'PX Mix Channel', 276],
    [1, 'PX Mix Dry', 276],
    [1, 'PX FX Transform', 276],
    [1, 'PX IN IMG', 276],
    [2, 'PX Route Audio', 224],
    [2, 'PX IN Text', 276],
    [2, 'PX IN Syphon', 276],
    [2, 'PX IN SVG', 276],
    [2, 'PX IN Mix', 276],
    [2, 'PX IN Channel', 276],
    [2, 'PX IN Cam', 276],
    [2, 'PX FX Pass', 276],
    [2, 'PX FX Kaleidoscope', 276],
    [2, 'PX IN MOV', 276],
    [3, 'PX IN Cos Pattern', 646],
    [3, 'PX FX Delay', 276],
    [3, 'PX FX Blur', 276],
    [3, 'DEV Info', 528],
    [3, 'DEV Console', 276],
    [3, 'PX FX Convert', 276],
    [3, 'PX FX Convert (convert back)', 276],
    [3, 'PX World (mad world)', 248],
    [4, 'PX FX Color', 648],
    [4, 'PX FX Color (gamma)', 620],
    [4, 'PX FX Color (hue)', 972],
    [4, 'PX FX Colorize', 452],
    [5, 'PX Mix View (expanded)', 1054],
    [5, 'PX Route MIDI (linked)', 224],
    [5, 'PX Shader (types)', 592],
    [5, 'PX IN Text (expanded)', 536],
    [5, 'PX FX Alpha', 452],
    [6, 'PX FX Pixelization', 544],
  ].map(([src, name, x1, animated]) => {
    WIDTHS[src] = WIDTHS[src] || 14
    const r = [src, name, WIDTHS[src], x1, animated]
    WIDTHS[src] = r[2] + r[3] + 10
    return r
  })
}
