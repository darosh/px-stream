// https://github.com/patriciogonzalezvivo/lygia_examples/blob/main/filter_kuwahara2D.frag

#include "lygia/sample/clamp2edge.glsl"
#define KUWAHARA_SAMPLER_FNC(TEX, UV) sampleClamp2edge(TEX, UV)
#include "lygia/filter/kuwahara.glsl"

#include "lygia/draw/digits.glsl"

void main (void) {
    vec3 color = vec3(0.0);
    vec2 pixel = 1.0/r;
    vec2 st = FC.xy * pixel;
    vec2 uv = vec2(st.x, 1.0 - st.y);

    float ix = floor(st.x * 5.0);
    float kernel_size = max(1.0, ix * 3.0);
    int ks = int(kernel_size);

    color += kuwahara(b, uv, pixel, ks).rgb;

    color += digits(st - vec2(ix/5.0 + 0.01, 0.01), kernel_size, 0.0);
    color -= step(.99, fract(st.x * 5.0));

    o = vec4(color,1.0);
}
