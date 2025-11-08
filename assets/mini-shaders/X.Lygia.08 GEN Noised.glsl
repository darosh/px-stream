// https://github.com/patriciogonzalezvivo/lygia_of_examples/blob/main/bin/data/generative_noised.frag

#include "lygia/generative/noised.glsl"

void main(void) {
    vec4 color = vec4(vec3(0.0), 1.0);
    vec2 pixel = 1.0/r.xy;
    vec2 st = FC.xy * pixel;

    vec2 d2 = noised(vec2(st * 5. + t)).yz * 0.5 + 0.5;
    vec3 d3 = noised(vec3(st * 5., t)).yzw * 0.5 + 0.5;

    color.rgb += mix(vec3(d2,0.0), d3, step(0.5, st.x));

    o = color;
}
