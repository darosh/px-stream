/*{
    "CREDIT": "by darosh",
    "CATEGORIES": ["Generator", "Text"],
    "INPUTS": [
        {"NAME": "value", "TYPE": "long", "DEFAULT": 1, "MIN": 0, "MAX": 1000},
        {"NAME": "digits", "TYPE": "long", "DEFAULT": 5, "MIN": 0, "MAX": 48},
        {"NAME": "scale", "TYPE": "float", "DEFAULT": 0.25, "MIN": 0.1, "MAX": 4},
        {"NAME": "spacing", "TYPE": "float", "DEFAULT": 1.2, "MIN": 0.8, "MAX": 2},
        {"NAME": "segmentColor", "LABEL": "Color", "TYPE": "color", "DEFAULT": [1, 0, 0, 1]},
        {"NAME": "width", "TYPE": "float", "DEFAULT": 1, "MIN": 0, "MAX": 2},
        {"NAME": "thickness", "TYPE": "float", "DEFAULT": 0.08, "MIN": 0, "MAX": 0.5},
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
#include "darosh/sdf/scifiDigitsSDF.glsl"

void main() {
    vec2 st = isf_FragNormCoord;
    st = center(st);
    st = aspect(st, RENDERSIZE.xy);
    st /= scale;
    st = uncenter(st);
    float px = 1.0 / RENDERSIZE.y;
    int v = int(speed * mod(TIME, 10.) + value);
    float d = scifiDigitsSDF(st, v, digits, spacing, thickness, width);
    gl_FragColor = mix(vec4(0.0), segmentColor, edge > 0. ? fill(d, px, edge) : fill(d, px));
}
