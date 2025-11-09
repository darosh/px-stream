#include "lygia/distort/grain.glsl"

void main() {
    vec2 st = FC.xy / r.xy;
    st.y = 1.0 - st.y;
    o.rgb = grain(b, st, r * 2, t);
}
