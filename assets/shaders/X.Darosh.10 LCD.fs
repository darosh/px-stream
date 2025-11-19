/*{
    "CREDIT": "by darosh",
    "CATEGORIES": ["Generator", "Text"],
    "INPUTS": [
        {"NAME": "segmentColor", "LABEL": "Color", "TYPE": "color", "DEFAULT": [1, 0, 0, 1]},
        {"NAME": "thickness", "TYPE": "float", "DEFAULT": 24, "MIN": 0, "MAX": 128},
        {"NAME": "edge", "TYPE": "float", "DEFAULT": 0.01, "MIN": 0, "MAX": 0.5}
    ],
    "ISFVSN": "2",
    "DESCRIPTION": "Example of darosh/sdf/lcdSDF.glsl usage"
}*/

#include "lygia/space/aspect.glsl"
#include "lygia/space/center.glsl"
#include "lygia/space/uncenter.glsl"
#include "lygia/draw/fill.glsl"
#include "darosh/sdf/lcdSDF.glsl"
// #include "lygia/draw/line.glsl"

void main() {
    float scale = .2;
    vec2 st = isf_FragNormCoord;
    st = center(st);
    st = aspect(st, RENDERSIZE.xy);
    st /= scale;
    st = uncenter(st);
    float px = 1.0 / RENDERSIZE.y;
    int v = int(mod(floor(st.x + 10.), 10.));
    vec2 pos = vec2(0.5);
    vec2 size = vec2(0.5);
    st -= pos;
    st /= size;

    float d = lcdTimerSDF(st + vec2(0., 3.0), TIME);
    d = min(d, lcdTimeSDF(st + vec2(0., 1.0), TIME));
    d = min(d, lcdIntSDF(st + vec2(0., -3.0), int(TIME)));
    d = min(d, lcdFloatSDF(st + vec2(0., -1.0), TIME, 2));

    vec4 color = mix(vec4(0.0), segmentColor, edge > 0. ? fill(d, px * thickness, edge) : fill(d, px * thickness));
    // color += line(st, vec2(0., -10), vec2(0., 10), px * 24);
    
    gl_FragColor = color;
}
