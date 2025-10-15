import tokenizeString from 'glsl-tokenizer'

const defaultValues = {
  'int': '=0',
  'float': '=0.',
  'bool': '=false',
  'vec2': '=vec2(0.)',
  'vec3': '=vec3(0.)',
  'vec4': '=vec4(0.)',
  'ivec2': '=ivec2(0)',
  'ivec3': '=ivec3(0)',
  'ivec4': '=ivec4(0)',
  'bvec2': '=bvec2(false)',
  'bvec3': '=bvec3(false)',
  'bvec4': '=bvec4(false)',
  'mat2': '=mat2(1.)',
  'mat3': '=mat3(1.)',
  'mat4': '=mat4(1.)',
  'sampler2D': '', // Skip samplers - they're uniforms
  'samplerCube': '',
}

function fixUninitializedLoopVars (glslCode) {
  const tokens = tokenizeString(glslCode, { version: '300 es' })

  const fixes = []

  // Skip whitespace tokens for pattern matching
  const nonWhitespace = tokens.filter(t => t.type !== 'whitespace'
    && t.type !== 'preprocessor'
    && t.type !== 'line-comment')

  for (let i = 0; i < nonWhitespace.length - 6; i++) {
    const t = nonWhitespace

    // Pattern: for ( [int|float] varname [, varname2] ;
    if (t[i].type === 'keyword' && t[i].data === 'for' &&
      t[i + 1].type === 'operator' && t[i + 1].data === '(' &&
      t[i + 2].type === 'keyword' && defaultValues[t[i + 2].data]) {

      let pos = i + 3
      const varType = t[i + 2].data
      const initValue = defaultValues[varType]

      // Process each variable in the declaration
      while (pos < nonWhitespace.length && t[pos].data !== ';') {
        if (t[pos].type === 'ident') {
          // Check if this variable is already initialized
          const nextToken = pos + 1 < nonWhitespace.length ? t[pos + 1] : null

          if (!nextToken || nextToken.data !== '=') {
            // Variable is not initialized - add fix
            const varToken = t[pos]
            fixes.push({
              position: varToken.position + varToken.data.length,
              insert: initValue,
              variable: varToken.data
            })
          }
        }
        pos++
      }
    }
  }

  // Apply fixes from end to start to maintain positions
  let fixedCode = glslCode

  fixes.sort((a, b) => b.position - a.position).forEach(fix => {
    fixedCode = fixedCode.slice(0, fix.position) + fix.insert + fixedCode.slice(fix.position)
  })

  return {
    fixed: fixedCode,
    changes: fixes.length,
    details: fixes,
    tokens: nonWhitespace
  }
}

function fixUninitializedVars (glslCode) {
  const tokens = tokenizeString(glslCode)
  const fixes = []

  // Skip whitespace tokens for pattern matching
  const nonWhitespace = tokens.filter(t => t.type !== 'whitespace'
    && t.type !== 'preprocessor'
    && t.type !== 'line-comment')

  for (let i = 0; i < nonWhitespace.length - 2; i++) {
    const t = nonWhitespace

    // Only look for actual variable declarations
    if (t[i].type === 'keyword' && defaultValues.hasOwnProperty(t[i].data)) {
      const varType = t[i].data
      const initValue = defaultValues[varType]

      if (!initValue) continue

      // Skip if previous token suggests this is NOT a declaration
      const prevToken = i > 0 ? t[i - 1] : null
      if (prevToken && (
        prevToken.data === '.' ||
        prevToken.data === '(' ||
        prevToken.data === '=' ||
        prevToken.type === 'ident' ||
        prevToken.type === 'builtin'
      )) {
        continue
      }

      // Check if this is at statement beginning or after certain tokens
      if (prevToken && !(
        prevToken.data === ';' ||
        prevToken.data === '{' ||
        prevToken.data === '}' ||
        prevToken.data === ',' ||
        prevToken.type === 'keyword'
      )) {
        continue
      }

      // At this point, t[i].type === 'keyword' and defaultValues.hasOwnProperty(t[i].data)
      if (i + 2 < nonWhitespace.length &&
        t[i + 1].type === 'ident' &&
        t[i + 2].data === '(') {
        // This is a function declaration (type identifier '('), skip it
        let pos = i + 2 // Start at '('
        let paren = 1 // Track nested parentheses
        while (pos < nonWhitespace.length && paren > 0) {
          pos++
          if (pos < nonWhitespace.length) {
            if (t[pos].data === '(') paren++
            if (t[pos].data === ')') paren--
          }
        }

        i = pos // Move past the closing ')'
        continue // Skip to next iteration
      }

      // Process potential variable declarations
      let pos = i + 1
      let foundValidDeclaration = false

      while (pos < nonWhitespace.length && t[pos].data !== ';') {
        if (t[pos].type === 'ident') {
          const varToken = t[pos]
          const nextToken = pos + 1 < nonWhitespace.length ? t[pos + 1] : null

          // Check if this is a variable declaration
          if (nextToken && (
            nextToken.data === '=' ||
            nextToken.data === '[' ||
            nextToken.data === ',' ||
            nextToken.data === ';'
          )) {
            foundValidDeclaration = true

            // Only add fix if not initialized (no '=' or '[' follows)
            if (nextToken.data !== '=' && nextToken.data !== '[') {
              fixes.push({
                position: varToken.position + varToken.data.length,
                insert: initValue,
                variable: varToken.data,
                type: varType
              })
            }

            // If followed by '=', skip the initialization expression
            if (nextToken.data === '=') {
              pos++
              let paren = 0
              while (pos < nonWhitespace.length && (paren > 0 || (t[pos].data !== ',' && t[pos].data !== ';'))) {
                if (t[pos].data === '(') paren++
                if (t[pos].data === ')') paren--
                pos++
              }
              // If we stopped at a comma, continue to process next variable
              if (pos < nonWhitespace.length && t[pos].data === ',') pos++
              continue
            }
          } else {
            // Invalid declaration pattern, break
            break
          }
        }

        // Move to next token, but skip parentheses correctly
        if (t[pos].data === '(') {
          let paren = 1
          pos++
          while (pos < nonWhitespace.length && paren > 0) {
            if (t[pos].data === '(') paren++
            if (t[pos].data === ')') paren--
            pos++
          }
        } else {
          pos++
        }
      }

      if (foundValidDeclaration) {
        i = pos - 1 // Move to the last processed token
      }
    }
  }

  // Apply fixes from end to start to maintain positions
  let fixedCode = glslCode

  fixes.sort((a, b) => b.position - a.position).forEach(fix => {
    fixedCode = fixedCode.slice(0, fix.position) + fix.insert + fixedCode.slice(fix.position)
  })

  return {
    fixed: fixedCode,
    changes: fixes.length,
    details: fixes,
    tokens: nonWhitespace
  }
}

// Based on https://github.com/doxas/twigl/blob/master/src/fragmen.js

const noise = `
// Description : Array and textureless GLSL 2D simplex noise function.
//      Author : Ian McEwan, Ashima Arts.
//  Maintainer : stegu
//     Lastmod : 20110822 (ijm)
//     License : Copyright (C) 2011 Ashima Arts. All rights reserved.
//               Distributed under the MIT License. See LICENSE file.
//               https://github.com/ashima/webgl-noise
//               https://github.com/stegu/webgl-noise
`

const UTILS = {
  noise: {
    code: noise
  },
  F4: {
    code: `#define F4 0.309016994374947451`
  },
  mod289: {
    code: `float mod289(float x){return x - floor(x * (1.0 / 289.0)) * 289.0;}
vec2  mod289(vec2 x) {return x - floor(x * (1.0 / 289.0)) * 289.0;}
vec3  mod289(vec3 x) {return x - floor(x * (1.0 / 289.0)) * 289.0;}
vec4  mod289(vec4 x) {return x - floor(x * (1.0 / 289.0)) * 289.0;}`
  },
  permute: {
    deps: ['mod289'],
    code: `float permute(float x){return mod289(((x*34.0)+1.0)*x);}
vec3  permute(vec3 x) {return mod289(((x*34.0)+1.0)*x);}
vec4  permute(vec4 x) {return mod289(((x*34.0)+1.0)*x);}`
  },
  taylorInvSqrt: {
    code: `float taylorInvSqrt(float r_){return 1.79284291400159 - 0.85373472095314 * r_;}
vec4  taylorInvSqrt(vec4 r_) {return 1.79284291400159 - 0.85373472095314 * r_;}`
  },
  snoise2D: {
    deps: ['noise', 'mod289', 'permute'],
    code: `float snoise2D(vec2 v){
  const vec4 C = vec4(0.211324865405187,  // (3.0-sqrt(3.0))/6.0
                      0.366025403784439,  // 0.5*(sqrt(3.0)-1.0)
                     -0.577350269189626,  // -1.0 + 2.0 * C.x
                      0.024390243902439); // 1.0 / 41.0
  // First corner
  vec2 i  = floor(v + dot(v, C.yy) );
  vec2 x0 = v -   i + dot(i, C.xx);

  // Other corners
  vec2 i1;
  //i1.x = step( x0.y, x0.x ); // x0.x > x0.y ? 1.0 : 0.0
  //i1.y = 1.0 - i1.x;
  i1 = (x0.x > x0.y) ? vec2(1.0, 0.0) : vec2(0.0, 1.0);
  // x0 = x0 - 0.0 + 0.0 * C.xx ;
  // x1 = x0 - i1 + 1.0 * C.xx ;
  // x2 = x0 - 1.0 + 2.0 * C.xx ;
  vec4 x12 = x0.xyxy + C.xxzz;
  x12.xy -= i1;

  // Permutations
  i = mod289(i); // Avoid truncation effects in permutation
  vec3 p = permute(permute(i.y + vec3(0.0, i1.y, 1.0 )) + i.x + vec3(0.0, i1.x, 1.0 ));
  vec3 m = max(0.5 - vec3(dot(x0,x0), dot(x12.xy,x12.xy), dot(x12.zw,x12.zw)), 0.0);
  m = m * m;
  m = m * m;

  // Gradients: 41 points uniformly over a line, mapped onto a diamond.
  // The ring size 17*17 = 289 is close to a multiple of 41 (41*7 = 287)

  vec3 x = 2.0 * fract(p * C.www) - 1.0;
  vec3 h = abs(x) - 0.5;
  vec3 ox = floor(x + 0.5);
  vec3 a0 = x - ox;

  // Normalise gradients implicitly by scaling m
  // Approximation of: m *= inversesqrt( a0*a0 + h*h );
  m *= 1.79284291400159 - 0.85373472095314 * ( a0*a0 + h*h );

  // Compute final noise value at P
  vec3 g;
  g.x  = a0.x  * x0.x  + h.x  * x0.y;
  g.yz = a0.yz * x12.xz + h.yz * x12.yw;
  return 130.0 * dot(m, g);
}`
  },
  snoise3D: {
    deps: ['mod289', 'permute', 'taylorInvSqrt'],
    code: `float snoise3D(vec3 v){
  const vec2 C = vec2(1.0 / 6.0, 1.0 / 3.0);
  const vec4 D = vec4(0.0, 0.5, 1.0, 2.0);

  // First corner
  vec3 i  = floor(v + dot(v, C.yyy) );
  vec3 x0 =   v - i + dot(i, C.xxx) ;

  // Other corners
  vec3 g = step(x0.yzx, x0.xyz);
  vec3 l = 1.0 - g;
  vec3 i1 = min( g.xyz, l.zxy );
  vec3 i2 = max( g.xyz, l.zxy );

  //   x0 = x0 - 0.0 + 0.0 * C.xxx;
  //   x1 = x0 - i1  + 1.0 * C.xxx;
  //   x2 = x0 - i2  + 2.0 * C.xxx;
  //   x3 = x0 - 1.0 + 3.0 * C.xxx;
  vec3 x1 = x0 - i1 + C.xxx;
  vec3 x2 = x0 - i2 + C.yyy; // 2.0*C.x = 1/3 = C.y
  vec3 x3 = x0 - D.yyy;      // -1.0+3.0*C.x = -0.5 = -D.y

  // Permutations
  i = mod289(i);
  vec4 p = permute( permute( permute(
             i.z + vec4(0.0, i1.z, i2.z, 1.0 ))
           + i.y + vec4(0.0, i1.y, i2.y, 1.0 ))
           + i.x + vec4(0.0, i1.x, i2.x, 1.0 ));

  // Gradients: 7x7 points over a square, mapped onto an octahedron.
  // The ring size 17*17 = 289 is close to a multiple of 49 (49*6 = 294)
  float n_ = 0.142857142857; // 1.0/7.0
  vec3  ns = n_ * D.wyz - D.xzx;

  vec4 j = p - 49.0 * floor(p * ns.z * ns.z);  //  mod(p,7*7)

  vec4 x_ = floor(j * ns.z);
  vec4 y_ = floor(j - 7.0 * x_ );    // mod(j,N)

  vec4 x = x_ *ns.x + ns.yyyy;
  vec4 y = y_ *ns.x + ns.yyyy;
  vec4 h = 1.0 - abs(x) - abs(y);

  vec4 b0 = vec4( x.xy, y.xy );
  vec4 b1 = vec4( x.zw, y.zw );

  //vec4 s0 = vec4(lessThan(b0,0.0))*2.0 - 1.0;
  //vec4 s1 = vec4(lessThan(b1,0.0))*2.0 - 1.0;
  vec4 s0 = floor(b0)*2.0 + 1.0;
  vec4 s1 = floor(b1)*2.0 + 1.0;
  vec4 sh = -step(h, vec4(0.0));

  vec4 a0 = b0.xzyw + s0.xzyw*sh.xxyy ;
  vec4 a1 = b1.xzyw + s1.xzyw*sh.zzww ;

  vec3 p0 = vec3(a0.xy,h.x);
  vec3 p1 = vec3(a0.zw,h.y);
  vec3 p2 = vec3(a1.xy,h.z);
  vec3 p3 = vec3(a1.zw,h.w);

  //Normalise gradients
  vec4 norm = taylorInvSqrt(vec4(dot(p0,p0), dot(p1,p1), dot(p2, p2), dot(p3,p3)));
  p0 *= norm.x;
  p1 *= norm.y;
  p2 *= norm.z;
  p3 *= norm.w;

  // Mix final noise value
  vec4 m = max(0.6 - vec4(dot(x0,x0), dot(x1,x1), dot(x2,x2), dot(x3,x3)), 0.0);
  m = m * m;
  return 42.0 * dot( m*m, vec4( dot(p0,x0), dot(p1,x1), dot(p2,x2), dot(p3,x3) ) );
}`
  },
  grad4: {
    code: `vec4 grad4(float j, vec4 ip){
  const vec4 ones = vec4(1.0, 1.0, 1.0, -1.0);
  vec4 p,s;

  p.xyz = floor( fract (vec3(j) * ip.xyz) * 7.0) * ip.z - 1.0;
  p.w = 1.5 - dot(abs(p.xyz), ones.xyz);
  s = vec4(lessThan(p, vec4(0.0)));
  p.xyz = p.xyz + (s.xyz*2.0 - 1.0) * s.www;

  return p;
}`
  },
  snoise4D: {
    deps: ['F4', 'mod289', 'permute', 'taylorInvSqrt', 'grad4'],
    code: `float snoise4D(vec4 v){
  const vec4  C = vec4( 0.138196601125011,  // (5 - sqrt(5))/20  G4
                        0.276393202250021,  // 2 * G4
                        0.414589803375032,  // 3 * G4
                       -0.447213595499958); // -1 + 4 * G4

  // First corner
  vec4 i  = floor(v + dot(v, vec4(F4)) );
  vec4 x0 = v -   i + dot(i, C.xxxx);

  // Other corners

  // Rank sorting originally contributed by Bill Licea-Kane, AMD (formerly ATI)
  vec4 i0;
  vec3 isX = step( x0.yzw, x0.xxx );
  vec3 isYZ = step( x0.zww, x0.yyz );
  //  i0.x = dot( isX, vec3( 1.0 ) );
  i0.x = isX.x + isX.y + isX.z;
  i0.yzw = 1.0 - isX;
  //  i0.y += dot( isYZ.xy, vec2( 1.0 ) );
  i0.y += isYZ.x + isYZ.y;
  i0.zw += 1.0 - isYZ.xy;
  i0.z += isYZ.z;
  i0.w += 1.0 - isYZ.z;

  // i0 now contains the unique values 0,1,2,3 in each channel
  vec4 i3 = clamp( i0, 0.0, 1.0 );
  vec4 i2 = clamp( i0-1.0, 0.0, 1.0 );
  vec4 i1 = clamp( i0-2.0, 0.0, 1.0 );

  //  x0 = x0 - 0.0 + 0.0 * C.xxxx
  //  x1 = x0 - i1  + 1.0 * C.xxxx
  //  x2 = x0 - i2  + 2.0 * C.xxxx
  //  x3 = x0 - i3  + 3.0 * C.xxxx
  //  x4 = x0 - 1.0 + 4.0 * C.xxxx
  vec4 x1 = x0 - i1 + C.xxxx;
  vec4 x2 = x0 - i2 + C.yyyy;
  vec4 x3 = x0 - i3 + C.zzzz;
  vec4 x4 = x0 + C.wwww;

  // Permutations
  i = mod289(i);
  float j0 = permute( permute( permute( permute(i.w) + i.z) + i.y) + i.x);
  vec4 j1 = permute( permute( permute( permute (
             i.w + vec4(i1.w, i2.w, i3.w, 1.0 ))
           + i.z + vec4(i1.z, i2.z, i3.z, 1.0 ))
           + i.y + vec4(i1.y, i2.y, i3.y, 1.0 ))
           + i.x + vec4(i1.x, i2.x, i3.x, 1.0 ));

  // Gradients: 7x7x6 points over a cube, mapped onto a 4-cross polytope
  // 7*7*6 = 294, which is close to the ring size 17*17 = 289.
  vec4 ip = vec4(1.0/294.0, 1.0/49.0, 1.0/7.0, 0.0) ;

  vec4 p0 = grad4(j0,   ip);
  vec4 p1 = grad4(j1.x, ip);
  vec4 p2 = grad4(j1.y, ip);
  vec4 p3 = grad4(j1.z, ip);
  vec4 p4 = grad4(j1.w, ip);

  // Normalise gradients
  vec4 norm = taylorInvSqrt(vec4(dot(p0,p0), dot(p1,p1), dot(p2, p2), dot(p3,p3)));
  p0 *= norm.x;
  p1 *= norm.y;
  p2 *= norm.z;
  p3 *= norm.w;
  p4 *= taylorInvSqrt(dot(p4,p4));

  // Mix contributions from the five corners
  vec3 m0 = max(0.6 - vec3(dot(x0,x0), dot(x1,x1), dot(x2,x2)), 0.0);
  vec2 m1 = max(0.6 - vec2(dot(x3,x3), dot(x4,x4)            ), 0.0);
  m0 = m0 * m0;
  m1 = m1 * m1;
  return 49.0 * ( dot(m0*m0, vec3( dot( p0, x0 ), dot( p1, x1 ), dot( p2, x2 )))
                + dot(m1*m1, vec2( dot( p3, x3 ), dot( p4, x4 ) ) ) ) ;
}`
  },
  fsnoise: {
    code: `float fsnoise (vec2 c){return fract(sin(dot(c, vec2(12.9898, 78.233))) * 43758.5453);}`
  },
  fsnoiseDigits: {
    code: `float fsnoiseDigits(vec2 c){return fract(sin(dot(c, vec2(0.129898, 0.78233))) * 437.585453);}`
  },
  hsv: {
    code: `vec3 hsv(float h, float s, float v){
    vec4 t = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
    vec3 p = abs(fract(vec3(h) + t.xyz) * 6.0 - vec3(t.w));
    return v * mix(vec3(t.x), clamp(p - vec3(t.x), 0.0, 1.0), s);
}`
  },
  rotate2D: {
    code: `mat2 rotate2D(float r_){
    return mat2(cos(r_), sin(r_), -sin(r_), cos(r_));
}`
  },
  rotate3D: {
    code: `mat3 rotate3D(float angle, vec3 axis){
    vec3 a = normalize(axis);
    float s = sin(angle);
    float c = cos(angle);
    float r_ = 1.0 - c;
    return mat3(
        a.x * a.x * r_ + c,
        a.y * a.x * r_ + a.z * s,
        a.z * a.x * r_ - a.y * s,
        a.x * a.y * r_ - a.z * s,
        a.y * a.y * r_ + c,
        a.z * a.y * r_ + a.x * s,
        a.x * a.z * r_ + a.y * s,
        a.y * a.z * r_ - a.x * s,
        a.z * a.z * r_ + c
    );
}`
  },
  PI: {
    code: 'const float PI = 3.141592653589793;'
  },
  PI2: {
    deps: ['PI'],
    code: 'const float PI2 = PI * 2.0;'
  },
  tanh: {
    code: `#define tanh(x) tanh(clamp(x, -10.,10.))`
  }
}

class Fragmen {
  static get MODE_GEEKEST_300 () {return 7}

  static get ES_300_CHUNK () {return '#version 330 core\n'}

  static get GEEKEST_CHUNK () {
    return `#define FC gl_FragCoord

precision highp float;

uniform vec2 r;
uniform vec2 m;
uniform float t;
uniform float f;
uniform float s;
uniform sampler2D b;
`
  }

  static get GEEKEST_OUT_CHUNK () {return 'out vec4 o;\n\n'}

  constructor () {
    this.mode = Fragmen.MODE_GEEKEST_300
  }

  preprocessFragmentCode (code, noise) {
    let chunk300 = ''
    let chunkOut = ''
    let chunkMain = ''
    let chunkClose = ''
    switch (this.mode) {
      case Fragmen.MODE_GEEKEST_300:
        chunk300 = Fragmen.ES_300_CHUNK
        chunkOut = Fragmen.GEEKEST_CHUNK
          //.substr(0, Fragmen.GEEKEST_CHUNK.length - 1)
          + noise
          + '\n'
          + Fragmen.GEEKEST_OUT_CHUNK

        if (!/void\s+main\s*\(/.test(code)) {
          code = `void main() {\no = vec4(0.);\n${code.trim()}\n}`
        } else {
          code = code.trim().replace(
            /(void\s+main\s*\(\s*\)\s*\{)/,
            `$1\no = vec4(0.);\n`
          )
        }
        break
      default:
        throw new Error(`Invalid fragmen mode: ${this.mode} (it might be a string number?)`)
    }
    
    return chunk300 + chunkOut + chunkMain + code + chunkClose
  }
}

function toJxs (fs) {
  return `<jittershader name="shading">
    <param name="b" type="int" default="0" />
    <param name="position" type="vec3" state="POSITION" />
    <param name="textureMatrix0" type="mat4" state="TEXTURE0_MATRIX" />
    <param name="r" type="vec2" default="512 512" />
    <param name="m" type="vec2" default="0 0" />
    <param name="t" type="float" default="1" />
    <param name="f" type="float" default="1000" />
    <language name="glsl" version="3.3">
        <bind param="b" program="fp" />
        <bind param="position" program="vp" />
        <bind param="textureMatrix0" program="vp" />
        <bind param="r" program="fp" />
        <bind param="m" program="fp" />
        <bind param="t" program="fp" />
        <bind param="f" program="fp" />
        <program name="vp" type="vertex">
            <![CDATA[
#version 330
in  vec3 position;
uniform mat4 textureMatrix0;

void main(){
    vec2 vTexCoord = (position.xy - 0.5).xy * 2.0;
    gl_Position = vec4(vTexCoord, 0., 1.0);
}
]]>
        </program>
        <program name="fp" type="fragment">
            <![CDATA[
${fs}
]]>
        </program>
    </language>
</jittershader>`
}

function getIdents (tokens) {
  return {
    text: tokens.filter(t => t.type === 'preprocessor').map(t => t.data),
    idents: tokens.filter(t => t.type === 'ident').map(t => t.data)
  }
}

function addUtil (u, list) {
  if (!list.includes(u)) {
    list.push(u)
  }

  const deps = UTILS[u].deps || []

  for (const dep of deps) {
    addUtil(dep, list)
  }
}

function getUtils (tokens) {
  const { text, idents } = getIdents(tokens)
  const used = Object.keys(UTILS).filter(key => text.filter(t => t.includes(key)).length || idents.includes(key))
  const list = [...used]

  for (const u of used) {
    addUtil(u, list)
  }

  return Object.entries(UTILS)
    .filter(([k, v]) => list.includes(k))
    .map(([k, v]) => v.code)
    .join('\n')
}

const fs = new Fragmen()

function convert (original) {
  const fixedLoops = fixUninitializedLoopVars(original)
  const fixedVars = fixUninitializedVars(fixedLoops.fixed)
  const code = fs.preprocessFragmentCode(fixedVars.fixed, getUtils(fixedVars.tokens))

  return toJxs(code)
}

let folder

function temp_folder (f) {
  folder = f
}

function load_file (original) {
  if (!original) {
    return
  }

  const jxs = convert(original)
  const path = `${folder}/.temp.jxs`
  const f = new File(path, 'readwrite')

  if (!f.isopen) {
    post('new file not opened ' + path + '\n')

    return
  }

  f.eof = 0
  f.position = 0
  f.writestring(jxs)
  f.close()

  outlet(0, 'jxs', 'file', path)
}

temp_folder()
load_file()
