/*{
    "CREDIT": "by darosh",
    "CATEGORIES": ["Example"],
    "INPUTS": [
        {"NAME": "scale", "TYPE": "float", "DEFAULT": 5, "MIN": 0.1, "MAX": 40},
        {"NAME": "speed", "TYPE": "float", "DEFAULT": 1, "MIN": 0, "MAX": 10}
    ],
    "ISFVSN": "2",
    "DESCRIPTION": "Example"
}*/

#include "lygia/generative/curl.glsl"

void main() {
    vec2 uv = isf_FragNormCoord;
    uv.x = (uv.x - 0.5) * (RENDERSIZE.x / RENDERSIZE.y) + .5;
    uv += -.5;
    vec3 c = curl(vec3(uv * scale, TIME * speed)) * 0.5 + 0.5;

    gl_FragColor = vec4(c, 1.0);
}
