// https://github.com/patriciogonzalezvivo/lygia_of_examples/blob/main/bin/data/generative_voronoi.frag

#include "lygia/generative/voronoi.glsl"

void main(void) {
    vec4 color = vec4(vec3(0.0), 1.0);
    vec2 pixel = 1.0/r.xy;
    vec2 st = FC.xy * pixel;

    vec3 d2 = voronoi(vec2(st * 5. + t));
    vec3 d3 = voronoi(vec3(st * 5., t));

    color.rgb += mix(d2, d3, step(0.5, st.x));

    o = color;
}