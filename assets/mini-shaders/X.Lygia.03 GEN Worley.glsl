// https://github.com/patriciogonzalezvivo/lygia_of_examples/blob/main/bin/data/generative_worley.frag

#include "lygia/generative/worley.glsl"

void main(void) {
    vec4 color = vec4(vec3(0.0), 1.0);
    vec2 pixel = 1.0/r.xy;
    vec2 st = FC.xy * pixel;

    float d2 = worley(vec2(st*10. + t));
    float d3 = worley(vec3(st*10., t));

    color += mix(d2, d3, step(0.5, st.x));

    o = color;
}
