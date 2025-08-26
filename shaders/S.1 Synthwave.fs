/*{"CREDIT": "by darosh", "CATEGORIES": ["Audio Visualizer"], "INPUTS": [], "ISFVSN": "2", "DESCRIPTION": "Adapted from GLSL Sandbox 71493.0"}*/

#define usePixelation false
#define flickerFreq 1400.
#define flickerSpeed 30.
#define flickerIntensity .1
#define motionblur .3

#define iters 70
#define minDst .001
#define lineWidth .2
#define lineCountX 35.
#define lineCountY 50./3.
#define speed 6.

#define pixelsize .2

#define gridColor vec3(.2,.05,1.)

float smin(float a, float b, float k) {
  float h = clamp(0.5 + 0.5 * (b - a) / k, 0.0, 1.0);
  return mix(b, a, h) - k * h * (1.0 - h);
}

float noise(vec2 seed) {
  return fract(sin(dot(seed, vec2(12.9898, 4.1414))) * 43758.5453);
}

float getHeight(vec2 uv) {
  float t_time = TIME;
  uv += .5;
  uv.y -= t_time * speed;
  float y1 = floor(uv.y);
  float y2 = floor(uv.y + 1.);
  float x1 = floor(uv.x);
  float x2 = floor(uv.x + 1.);
  float iX1 = mix(noise(vec2(x1, y1)), noise(vec2(x2, y1)), fract(uv.x));
  float iX2 = mix(noise(vec2(x1, y2)), noise(vec2(x2, y2)), fract(uv.x));
  return mix(iX1, iX2, fract(uv.y));
}

float getDistance(vec3 p) {
  return p.z - (1. - cos(p.x * 15.)) * .03 * getHeight(vec2(p.x * lineCountX, p.y * lineCountY));
}

float getGridColor(vec2 uv) {
  float t_time = TIME;
  float zoom = 1., col = 0.;
  vec3 cam = vec3(0., 1., .1), lookat = vec3(0.), fwd = normalize(lookat - cam), u = normalize(cross(fwd, vec3(1., 0., 0.))), r = cross(u, fwd), c = cam + fwd * zoom, i = c + r * uv.x + u * uv.y, ray = normalize(i - cam);
  float distSur, distOrigin = 0.;

  vec3 p = cam;

  for(int i = 0; i < iters; i++) {
    distSur = getDistance(p);
    if(distOrigin > 2.)
      break;
    if(distSur < minDst) {
      float lineW = lineWidth * distOrigin;
      float xLines = smoothstep(lineW, 0., abs(fract(p.x * lineCountX) - .5));
      float yLines = smoothstep(lineW * 2., 0., abs(fract(p.y * lineCountY - t_time * speed) - .5));
      col += max(xLines, yLines);
      break;
    }
    p += ray * distSur;
    distOrigin += distSur;
  }
  return max(0., col - (distOrigin * .98));
}

void main() {
  float t_time = TIME;
  vec2 t_resolution = RENDERSIZE;
  float val = 0.;
  float sunHeight = sin(t_time * .1) * .1 + .1;

  // Normalize coordinates properly for ISF
  vec2 R = t_resolution.xy;
  vec2 uv = (gl_FragCoord.xy - .5 * R) / R.y;

  // Store original UV for grid calculation
  vec2 gridUV = uv;

  // Apply sun positioning
  uv.y -= sunHeight;
  uv.x += val * .2;
  uv += 0.5; // Center for sun calculation

  // sun
  float dist = 2.5 * length(uv - vec2(0.5, 0.5));
  float divisions = 50.0;

  float pattern = (sin(uv.y * divisions * 10. - t_time * 2.) * 1.2 + uv.y * 8.3) * uv.y - 1.5 +
    sin(uv.x * 20. + t_time * 5.) * .01;
  float sunOutline = smoothstep(0.0, -0.0315, max(dist - 0.315, -pattern));

  vec3 c = sunOutline * mix(vec3(4.0, 0.0, 0.2), vec3(1.0, 1.1, 0.0), uv.y);

  // glow
  float glow = max(0.0, 1.0 - dist * 1.25);
  glow = min(glow * glow * glow, 0.325);
  c += glow * vec3(1.5, 0.3, (.2 + 1.0)) * 1.1;

  // Grid calculation - use original UV coordinates
  gridUV.y += .18;
  // Adjust the condition to show grid in lower portion
  if(gridUV.y < 0.1) {
    float gridIntensity = getGridColor(gridUV);
    c += gridIntensity * 4. * gridColor;
  }

  // Apply effects
  gl_FragColor = 1.0 * (1.3 + sin(t_time * flickerSpeed + gridUV.y * flickerFreq) * flickerIntensity) * vec4(c, 1.0);

  float scanline = smoothstep(1. - .2 / flickerFreq, 1., sin(t_time * flickerSpeed * .1 + gridUV.y * 4.));
  gl_FragColor *= scanline * .2 + 1.;
}
