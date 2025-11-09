#include "lygia/math/const.glsl"
#include "lygia/math/saturate.glsl"
#include "lygia/distort/displace.glsl"

void main(void) {
    vec4 color = vec4(vec3(0.0), 1.0);
    vec2 pixel = 1.0 / r;
    vec2 st = FC.xy * pixel;
    st.y = 1.0 - st.y;
    color.rgb = displace(b, b, st, pixel * 100 * m).rgb;
    o = color;
}
