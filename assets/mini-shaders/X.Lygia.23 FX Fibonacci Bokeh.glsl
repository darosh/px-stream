// https://github.com/patriciogonzalezvivo/lygia_examples/blob/main/filter_fibonacciBokeh.frag

#include "lygia/filter/fibonacciBokeh.glsl"

#include "lygia/draw/digits.glsl"

void main () {
    vec3 color = vec3(0.0);
    vec2 pixel = 1.0/r;
    vec2 st = FC.xy * pixel;
    vec2 uv = st;
    st.y = 1.0 - st.y;

    float ix = floor(st.x * 5.0);
    float radius = (ix/4.0) * 0.5;

    color += fibonacciBokeh(b, st, pixel, radius).rgb;
    
    color -= digits(uv - vec2(ix/5.0 + 0.01, 0.01), radius, 2.);
    color -= step(.99, fract(uv.x * 5.0));

    o = vec4(color,1.0);
}
