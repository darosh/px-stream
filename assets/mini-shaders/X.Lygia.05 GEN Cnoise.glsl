// https://github.com/patriciogonzalezvivo/lygia_of_examples/blob/main/bin/data/generative_cnoise.frag

#include "lygia/generative/cnoise.glsl"

void main(void) {
    vec4 color = vec4(vec3(0.0), 1.0);
    vec2 pixel = 1.0/r.xy;
    vec2 st = FC.xy * pixel;

    float d2 = cnoise(vec2(st * 5. + t)) * 0.5 + 0.5;
    float d3 = cnoise(vec3(st * 5., t)) * 0.5 + 0.5;

    color += mix(d2, d3, step(0.5, st.x));

    o = color;
}