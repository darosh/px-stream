// https://github.com/patriciogonzalezvivo/lygia_of_examples/blob/main/bin/data/generative_voronoise.frag

#include "lygia/generative/voronoise.glsl"

void main(void) {
    vec4 color = vec4(vec3(0.0), 1.0);
    vec2 pixel = 1.0/r.xy;
    vec2 st = FC.xy * pixel;
    vec2 p = 0.5 - 0.5*cos(t *vec2(1.0, 0.5));

    p = p*p*(3.0-2.0*p);
    p = p*p*(3.0-2.0*p);
    p = p*p*(3.0-2.0*p);

    color += voronoise(vec3(24.0*st, t), p.x, 1.);

    o = color;
}
