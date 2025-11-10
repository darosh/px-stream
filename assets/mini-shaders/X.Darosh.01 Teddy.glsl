#include "lygia/draw/fill.glsl"
#include "lygia/space/aspect.glsl"
#include "lygia/space/ratio.glsl"
#include "lygia/space/center.glsl"
#include "lygia/space/uncenter.glsl"
#include "lygia/space/rotate.glsl"

#include "lygia/sdf/polySDF.glsl"
#include "darosh/sdf/teddySDF.glsl"

void main() {
    vec4 color = vec4(vec3(0.0), 1.0);
    vec2 pixel = 1.0/r.xy;
    vec2 st = FC.xy * pixel;

    st = center(st);
    st = aspect(st, r.xy);
    st = uncenter(st);

    float cols = 4.0;
    st *= cols;
    vec2 st_i = floor(st);
    vec2 st_f = fract(st);
    
    float sdf = 0.0;
    float index = (st_i.x + (cols-st_i.y - 1.0) * cols);

    st_f = rotate(st_f, (mod(index, 2) == 0 ? -1 : 1) * t * 1.4 + index);
    
    if (index < 20.0) sdf = teddySDF(st_f);
    else sdf = 1.0;

    color.rgb += fill(sdf, 0.5) * mix(0.3, 0.9, abs(sin(index + mod(index, 3))));

    o = color;
}
