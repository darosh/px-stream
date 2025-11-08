// https://github.com/ossia/score-examples/blob/main/lygia-example.frag

#include "lygia/space/ratio.glsl"
#include "lygia/math/decimate.glsl"
#include "lygia/draw/circle.glsl"

void main(void) {
    vec3 color = vec3(0.0);
    vec2 st = FC.xy/r.xy;
    st = ratio(st, r);

    color = vec3(st.x,st.y,abs(sin(t)));
    color = decimate(color, 20.);
    color += circle(st, .5, .1);

    o = vec4(color, 1.0);
}
