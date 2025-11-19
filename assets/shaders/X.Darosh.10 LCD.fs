/*{
    "CREDIT": "by darosh",
    "CATEGORIES": ["Generator", "Text"],
    "INPUTS": [
        {"NAME": "value", "TYPE": "long", "DEFAULT": 1, "MIN": 0, "MAX": 1000},
        {"NAME": "scale", "TYPE": "float", "DEFAULT": 0.2, "MIN": 0.01, "MAX": 4},
        {"NAME": "segmentColor", "LABEL": "Color", "TYPE": "color", "DEFAULT": [1, 0, 0, 1]},
        {"NAME": "thickness", "TYPE": "float", "DEFAULT": 24, "MIN": 0, "MAX": 128},
        {"NAME": "edge", "TYPE": "float", "DEFAULT": 0, "MIN": 0, "MAX": 0.5},
        {"NAME": "speed", "TYPE": "float", "DEFAULT": 0, "MIN": 0, "MAX": 100}
    ],
    "ISFVSN": "2",
    "DESCRIPTION": "Generates scifi text segment display"
}*/

#include "lygia/space/aspect.glsl"
#include "lygia/space/center.glsl"
#include "lygia/space/uncenter.glsl"
#include "lygia/draw/fill.glsl"
#include "darosh/sdf/lcdSDF.glsl"

void main() {
    vec2 st = isf_FragNormCoord;
    st = center(st);
    st = aspect(st, RENDERSIZE.xy);
    st /= scale;
    st = uncenter(st);
    float px = 1.0 / RENDERSIZE.y;
    int v = int(mod(floor(st.x + 10.), 10.));
//    st = fract(st) - vec2(0.5);
//    st *= 2.3;
//    st *= 2;
    //float d = lcdDigitSDF(st, v);
    //float d = lcdDotSDF(st);
    float d = lcdTimerSDF(st, vec2(.5), vec2(0.5), TIME);
    gl_FragColor = mix(vec4(0.0), segmentColor, edge > 0. ? fill(d, px * thickness, edge) : fill(d, px * thickness));
//    gl_FragColor = mix(vec4(0.0), segmentColor, d);
}
