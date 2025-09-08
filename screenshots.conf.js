let WIDTHS = {}
let x0 = 14

export default {
  v: 1,
  y0: 1441,
  y1: 385,
  devices: [
    [1, 'PX World', 248],
    [1, 'PX Mix View', 676],
    [1, 'PX Shader', 856],
    [1, 'PX Mix Channel', 276],
    [1, 'PX Mix Dry', 276],
    [1, 'PX Transform', 276],
    [2, 'PX Route MIDI', 224],
    [2, 'PX Route Audio', 224],
    [2, 'PX IN Text', 276],
    [2, 'PX IN Syphon', 276],
    [2, 'PX IN SVG', 276],
    [2, 'PX IN Mix', 276],
    [2, 'PX IN Channel', 276],
    [2, 'PX IN Cam', 276],
    [2, 'PX FX Pass', 276],
    [2, 'PX FX Kaleidoscope', 276],
    [3, 'PX IN Cos Pattern', 646],
    [3, 'PX FX Delay', 276],
    [3, 'PX FX Blur', 276],
  ].map(([src, name, x1]) => {
    WIDTHS[src] = WIDTHS[src] || 14
    const r = [src, name, WIDTHS[src], x1]
    WIDTHS[src] = r[2] + r[3] + 10
    return r
  })
}
