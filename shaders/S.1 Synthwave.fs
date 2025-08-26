/*{"CREDIT": "by darosh", "CATEGORIES": ["Audio Visualizer"], "INPUTS": [], "ISFVSN": "2", "DESCRIPTION": "Adapted from GLSL Sandbox 71493.0"}*/


#define usePixelation false
#define flickerFreq 1400.
#define flickerSpeed 30.
#define flickerIntensity .1

// Reduced iterations for better performance
#define iters 35  // Reduced from 70
#define minDst .002  // Slightly increased for early termination
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

// Optimized noise - fewer operations
float noise(vec2 seed) {
  return fract(sin(dot(seed, vec2(12.9898, 4.1414))) * 43758.5453);
}

// Cached height calculation with early exit
float getHeight(vec2 uv) {
  float t_time = TIME;
  uv += .5;
  uv.y -= t_time * speed;
  
  // Use floor once and reuse
  vec2 floorUV = floor(uv);
  vec2 fractUV = fract(uv);
  
  float x1 = floorUV.x, x2 = x1 + 1.;
  float y1 = floorUV.y, y2 = y1 + 1.;
  
  // Bilinear interpolation with fewer calls
  float iX1 = mix(noise(vec2(x1, y1)), noise(vec2(x2, y1)), fractUV.x);
  float iX2 = mix(noise(vec2(x1, y2)), noise(vec2(x2, y2)), fractUV.x);
  return mix(iX1, iX2, fractUV.y);
}

// Precompute cos for performance
float getDistance(vec3 p) {
  return p.z - (1. - cos(p.x * 15.)) * .03 * getHeight(vec2(p.x * lineCountX, p.y * lineCountY));
}

// Optimized grid with early ray-plane intersection
float getGridColor(vec2 uv) {
  float t_time = TIME;
  float col = 0.;
  
  // Early exit if we're looking up (no ground intersection)
  vec3 cam = vec3(0., 1., .1);
  vec3 lookat = vec3(0.);
  vec3 fwd = normalize(lookat - cam);
  vec3 u = normalize(cross(fwd, vec3(1., 0., 0.)));
  vec3 r = cross(u, fwd);
  
  vec3 ray = normalize(cam + fwd + r * uv.x + u * uv.y - cam);
  
  // Early exit if ray is pointing upward
  if(ray.z > -0.01) return 0.;
  
  // Analytical intersection with z=0 plane for initial guess
  float t0 = -cam.z / ray.z;
  if(t0 <= 0.) return 0.;
  
  vec3 p = cam + ray * max(t0 - 0.5, 0.1); // Start closer to intersection
  float distOrigin = length(p - cam);
  
  // Reduced iterations with adaptive step size
  int maxIters = int(mix(15., float(iters), clamp(1. - distOrigin * 0.3, 0., 1.)));
  
  for(int i = 0; i < iters; i++) {
    if(i >= maxIters) break;
    
    float distSur = getDistance(p);
    if(distOrigin > 2.) break;
    
    if(distSur < minDst) {
      float lineW = lineWidth * distOrigin;
      // Compute both lines at once
      vec2 linePos = vec2(p.x * lineCountX, p.y * lineCountY - t_time * speed);
      vec2 lineFract = abs(fract(linePos) - .5);
      
      float xLines = smoothstep(lineW, 0., lineFract.x);
      float yLines = smoothstep(lineW * 2., 0., lineFract.y);
      col += max(xLines, yLines);
      break;
    }
    
    // Adaptive step size - larger steps when far from surface
    float stepMult = mix(1., 2., clamp(distSur - minDst, 0., 1.));
    p += ray * distSur * stepMult;
    distOrigin += distSur * stepMult;
  }
  
  return max(0., col - (distOrigin * .8));
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

  // sun calculation (unchanged - already optimized)
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

  // Optimized grid calculation
  gridUV.y += .18;
  if(gridUV.y < 0.1) {
    float gridIntensity = getGridColor(gridUV);
    c += gridIntensity * 4. * gridColor;
  }
  
  // Effects (could be optimized further with LUT)
  gl_FragColor = 1.0 * (1.3 + sin(t_time * flickerSpeed + gridUV.y * flickerFreq) * flickerIntensity) * vec4(c, 1.0);
  
  float scanline = smoothstep(1. - .2 / flickerFreq, 1., sin(t_time * flickerSpeed * .1 + gridUV.y * 4.));
  gl_FragColor *= scanline * .2 + 1.;
}