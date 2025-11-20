/*{
    "CREDIT": "by darosh",
    "CATEGORIES": ["Example"],
    "INPUTS": [
        {"NAME": "inputImage", "TYPE": "image"},
        {"NAME": "X", "TYPE": "float", "DEFAULT": 0, "MIN": -1, "MAX": 1},
        {"NAME": "Y", "TYPE": "float", "DEFAULT": -1, "MIN": -1, "MAX": 1},
        {"NAME": "strength", "TYPE": "float", "DEFAULT": 0.25, "MIN": -1, "MAX": 1}
    ],
    "ISFVSN": "2",
    "DESCRIPTION": "Example"
}*/

// we cannot use sampler2D in jit.gl.isf
#define SAMPLER_TYPE int
#define SAMPLER_FNC(TEX, UV) IMG_NORM_PIXEL(inputImage, UV)

#include "lygia/filter/radialBlur.glsl"

void main() {
    vec2 uv = isf_FragNormCoord;
    vec4 c = radialBlur(0, uv, vec2(X, Y), strength);
    gl_FragColor = vec4(c.rgb, 1.0);
}
