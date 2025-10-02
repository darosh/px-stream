/*{
    "CREDIT": "by darosh",
    "CATEGORIES": ["Audio Visualizer"],
    "INPUTS": [{"NAME": "xycImage", "TYPE": "audio"}],
    "ISFVSN": "2",
    "DESCRIPTION": "XY Oscilloscope, all connected lines"
}*/

void main() {
    vec2 uv = isf_FragNormCoord;
    uv.x = (uv.x - 0.5) * (RENDERSIZE.x / RENDERSIZE.y) + .5;
    vec3 color = (uv.x >= 0. && uv.x <= 1.) ? vec3(IMG_NORM_PIXEL(xycImage, uv).r) : vec3(0);
    gl_FragColor = vec4(color * 2., 1.0);
}
