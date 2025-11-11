/*{
    "CREDIT": "by darosh",
    "CATEGORIES": ["Example"],
    "INPUTS": [
        {"NAME": "scale", "TYPE": "float", "DEFAULT": 1, "MIN": 0, "MAX": 10},
        {"NAME": "speed", "TYPE": "float", "DEFAULT": 1, "MIN": 0, "MAX": 10}
    ],
    "ISFVSN": "2",
    "DESCRIPTION": "Custom library + Lygia usage example"
}*/

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
    vec2 st = gl_FragCoord.xy / RENDERSIZE.xy;

    st = center(st);
    st = aspect(st, RENDERSIZE.xy);
    st *= scale;
    st = uncenter(st);

    float cols = 4.0;
    st *= cols;
    vec2 st_i = floor(st + .5);
    vec2 st_f = fract(st + .5);

    float index = (st_i.x + (cols-st_i.y - 1.0) * cols);

    float sdf = 1.0;
    float sdfEyes = 1.0;

    st_f = rotate(st_f, (mod(index, 2) == 0 ? -1 : 1) * TIME * speed * 1.4 + index);

    sdf = teddySDF(st_f);
    sdfEyes = teddyEyesSDF(st_f);

    color.rgb += fill(sdf, 0.5) * mix(0.3, 0.9, abs(sin(index + 2 + mod(index, 3))));
    color.rgb = mix(color.rgb, vec3(2, 0, 0), fill(sdfEyes, 0.01, 1));

    gl_FragColor = color;
}
