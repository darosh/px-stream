const VERT = `attribute vec2 _p;
varying vec2 _uv;
void main() {
gl_Position = vec4(_p,0.0,1.0);
_uv = vec2(0.5, 0.5) * (_p+vec2(1.0, 1.0));
}`

// these functions make a GLSL code that map the texture2D uv to preserve ratio for a given ${r} image ratio.
// there are different modes:
const resizeModes = {
  cover: (r) =>
    `.5+(uv-.5)*vec2(min(ratio/${r},1.),min(${r}/ratio,1.))`,
  contain: (r) =>
    `.5+(uv-.5)*vec2(max(ratio/${r},1.),max(${r}/ratio,1.))`,
  stretch: () => 'uv',
}

const makeFrag = (transitionGlsl, resizeMode = 'contain') => {
  const r = resizeModes[resizeMode]
  if (!r) throw new Error('invalid resizeMode=' + resizeMode)
  return `\
//precision highp float;
varying vec2 texcoord0;
varying vec2 texdim0, texdim1;
uniform sampler2DRect tex0, tex1;
uniform float progress;

float ratio = texdim0.x / texdim0.y;

vec4 getFromColor(vec2 uv){return texture2DRect(tex0, uv*texdim0);}

vec4 getToColor(vec2 uv){return texture2DRect(tex1, uv*texdim1);}

${transitionGlsl}

void main(){gl_FragColor=transition(texcoord0/texdim0);}`
}

export default (transition, options = {}) => {
  const { resizeMode } = { resizeMode: 'cover', ...options }
  return makeFrag(transition.glsl, resizeMode)
}
