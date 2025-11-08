// https://github.com/patriciogonzalezvivo/lygia_of_examples/blob/main/bin/data/generative_random.frag

#include "lygia/generative/random.glsl"

void main(void) {
    vec4 color = vec4(vec3(0.0), 1.0);
    vec2 pixel = 1.0/r.xy;
    vec2 st = FC.xy * pixel;

    float d2 = random(vec2(st * 5. + t));
    float d3 = random(vec3(st * 5., t));

    color += mix(d2, d3, step(0.5, st.x));

    o = color;
}
