//

#define SAMPLER_TYPE sampler2DRect

#include "lygia/sample/clamp2edge.glsl"
//#define NOISEBLUR_SAMPLER_FNC(TEX, UV) sampleClamp2edge(TEX, UV)
#include "lygia/filter/noiseBlur.glsl"

#include "lygia/draw/digits.glsl"

void main () {
    vec3 color = vec3(0.0);
    vec2 pixel = 1.0/r;
    vec2 st = FC.xy * pixel;
    vec2 uv = vec2(st.x, 1.0 - st.y);

    float ix = floor(st.x * 5.0);
    float radius = max(1.0, ix * 4.0);

    color += noiseBlur(b, FC.xy, vec2(1.), radius).rgb;

    color += digits(st - vec2(ix/5.0 + 0.01, 0.01), radius, 0.0);
    color -= step(.99, fract(st.x * 5.0));

    o = vec4(color, 1.0);
}
