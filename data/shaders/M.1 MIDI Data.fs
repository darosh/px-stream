/*{
    "CREDIT": "by darosh + chatgpt",
    "CATEGORIES": ["Audio Visualizer"],
    "INPUTS": [
        {"NAME": "midiImage", "TYPE": "audio"},
        {"NAME": "scrollSpeed", "TYPE": "float", "DEFAULT": 1, "MIN": 0.2, "MAX": 4},
        {"NAME": "stroke", "TYPE": "float", "DEFAULT": 0.12, "MIN": 0, "MAX": 3},
        {"NAME": "fade", "TYPE": "float", "DEFAULT": 1, "MIN": 0, "MAX": 1}
    ],
    "PASSES": [{"TARGET": "bufferA", "PERSISTENT": true, "FLOAT": true}, {}],
    "ISFVSN": "2",
    "DESCRIPTION": "Raw MIDI visualizer: top=128x16 note grid (R), bottom=rolling CC line charts (G). midiImage: R/G width = note/CC (0..127), height = channel (0..15)."
}*/

/*
midiImage has 128x16 size,
for R the width is MIDI note, height channel and R value is velocity,
for G the width is MIDI CC number, height channel and G is CC value.
*/

const float EPS = 1e-5;

vec3 hsv2rgb(vec3 c) {
  // from glsl-book
  vec3 p = abs(fract(c.xxx + vec3(0.0, 2.0/3.0, 1.0/3.0)) * 6.0 - 3.0);
  vec3 rgb = clamp(p - 1.0, 0.0, 1.0);
  return c.z * mix(vec3(1.0), rgb, c.y);
}

float gridLine(float v, float cells, float thickness) {
  float g = fract(v * cells);
  g = min(g, 1.0 - g);
  return smoothstep(thickness, 0.0, g);
}

float chanFromY(float y, float y0, float y1) {
  // Map y in [y0,y1] to channel index 0..15 + local coord
  float h = y1 - y0;
  float ly = clamp((y - y0) / max(h, EPS), 0.0, 0.999999);
  return ly * 16.0; // 0..16
}

void main() {
  vec2 uv = isf_FragNormCoord;
  float aspectX = RENDERSIZE.x;
  float dx = (scrollSpeed / max(aspectX, 1.0)); // pixels worth of scroll per frame (normalized)

  if (PASSINDEX == 0) {
    // Read previous
    vec3 prev = IMG_NORM_PIXEL(bufferA, uv).rgb;

    // Split screen
    bool topHalf = (uv.y >= 0.5);
    vec3 col = vec3(0.0);

    // ------------------------
    // TOP: 128x16 note LED grid
    // ------------------------
    if (topHalf) {
      // LED cell coords
      float noteF = clamp(uv.x * 128.0, 0.0, 127.9999);
      float chanF = clamp((uv.y - 0.5) * 2.0 * 16.0, 0.0, 15.9999); // map [0.5,1] -> 0..16

      int note = int(floor(noteF));
      int chan = int(floor(chanF));

      // sample R=velocity at cell center from midiImage
      vec2 midiUV = vec2((float(note) + 0.5) / 128.0,
                         (float(chan) + 0.5) / 16.0);
      float vel = IMG_NORM_PIXEL(midiImage, midiUV).r;

      // LED look
      float cellX = fract(noteF);
      float cellY = fract(chanF);
      float led = step(0.001, vel); // on if any velocity
      // rounded-square-ish falloff for nicer LED
      float sx = abs(cellX - 0.5) * 2.0;
      float sy = abs(cellY - 0.5) * 2.0;
      float d  = max(sx, sy);
      float ledFace = smoothstep(1.0, 0.8, d) * led;

      // grid lines
      float gx = gridLine(uv.x - 0.5, 128.0, 0.2);
      float gyp = (uv.y - 0.5) * 2.0;
      float gt = 0.06;
      float gy = gridLine(gyp, 16.0, (gyp < gt / 2.) || (gyp > (1. - gt / 2.)) ? gt * 2. : gt);
      float grid = max(gx, gy);

      vec3 ledColor = hsv2rgb(vec3(.333, 0.8, vel));                 // white LED intensity by velocity
      vec3 gridColor = vec3(0.24);               // faint grid

      col = mix(vec3(0.0), ledColor, ledFace);
      col = max(col, grid * gridColor);
    } else {
      // -------------------------------------------
      // BOTTOM: rolling CC traces per channel (G)
      // -------------------------------------------
      // Scroll previous left by dx; for right margin, we’ll inject the newest column.
      vec2 from = uv + vec2(dx, 0.0);
      vec3 scrolled = (from.x <= 1.0) ? IMG_NORM_PIXEL(bufferA, from).rgb * fade : vec3(0.0);
      col = scrolled;

      // Are we inside the injection column (rightmost dx)?
      bool inject = (uv.x >= 1.0 - dx - 1e-6);

      if (inject) {
        // Determine which channel band we are in
        float chf = chanFromY(uv.y, 0.0, 0.5); // 0..16
        if (chf >= 0.0 && chf < 16.0) {
          int ch = int(floor(chf));
          float ly = fract(chf); // local 0..1 inside the channel band

          // For each CC (0..127), compute its value and draw a point/short dash at its value position.
          // This single right-edge column becomes a vertical "raster" slice that will scroll left next frames.
          float accum = 0.0;
          vec3 accumRGB = col;

          // Thickness (in local band units)
          float t = stroke; // ~0.006 at default

          // Draw all CCs with different hues to help separation
          for (int cc = 0; cc < 128; ++cc) {
            vec2 ccUV = vec2((float(cc) + 0.5) / 128.0,
                             (float(ch) + 0.5) / 16.0);
            float v = IMG_NORM_PIXEL(midiImage, ccUV).g; // 0..1

            // Target y inside the band (0..1). 0 at bottom, 1 at top.
            float ty = v;

            // Distance of this fragment's local y to the CC value
            float d = abs(ly - ty);

            // Soft line
            float line = smoothstep(t, 0.0, d);

            // Color by CC number (hue sweep), value modulates brightness
            // float hue = float(cc) / 128.0;
            float hue = .333;
            // vec3 clr = v == 0. ? hsv2rgb(vec3(hue, 0.8, 0.)) : hsv2rgb(vec3(hue, 1., mix(0.25, 1.0, v)));
            vec3 clr = v == 0. ? hsv2rgb(vec3(hue, 0.8, 0.)) : hsv2rgb(vec3(hue, 1., 1.));

            // alpha contribution (keep faint to allow many overlaps)
            float a = line * 1.;

            accumRGB = mix(accumRGB, clr, a); // simple “under” blend for crispness
          }

          col = accumRGB;
        }
      }
    }

    gl_FragColor = vec4(col, 1.0);
  } else {
    // Display pass
    gl_FragColor = vec4(IMG_NORM_PIXEL(bufferA, uv).rgb, 1.0);
  }
}
