// https://github.com/patriciogonzalezvivo/lygia_of_examples/blob/main/bin/data/draw_digits.frag

#include "lygia/sdf/circleSDF.glsl"
#include "lygia/draw/fill.glsl"
#include "lygia/draw/stroke.glsl"
#include "lygia/draw/digits.glsl"
#include "lygia/space/ratio.glsl"

void main(void) {
    vec3 color = vec3(0.0);
    vec2 xy = FC.xy/r.xy;

    xy = ratio(xy, r);

    float sdf = circleSDF(xy);

    // External ring
    float size1 = 0.5;
    float width = 0.1 + (sin(t) * 0.5 + 0.5) * 0.1;
    color += stroke(sdf, size1, width);

    // Inside circle
    float size2 = (size1 - width) * (cos(t * 0.25) * 0.5 + 0.5);
    color += fill(sdf, size2);

    // Debug
    color += digits(xy, width);
    color += digits(xy - vec2(0.5, 0.0), size2);

    o = vec4(color, 1.0);
}
