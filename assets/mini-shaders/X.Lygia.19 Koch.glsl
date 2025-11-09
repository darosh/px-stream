#include "lygia/draw/stroke.glsl"
#include "lygia/sdf/kochSDF.glsl"

void main() {
    vec4 color = vec4(vec3(0.0), 1.0);
    vec2 pixel = 1.0/r.xy;
    vec2 st = FC.xy * pixel;

    float sdf = kochSDF(st, 6);
    color.rgb += stroke(sdf, 0.01, 0.01);

    o = color;
}
