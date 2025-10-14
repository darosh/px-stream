/*{
    "CREDIT": "by darosh",
    "CATEGORIES": ["MIDI Visualizer"],
    "INPUTS": [{"NAME": "midiImage", "TYPE": "audio"}],
    "ISFVSN": "2",
    "DESCRIPTION": "Raw MIDI data"
}*/

/*
midiImage has 128x16 size,
for R color the width is MIDI note, height channel and R value is velocity,
for G color the width is MIDI CC number, height channel and G is CC value.
for B color the width is voice number starting with [1,0], the position [0, 0] is number of voices, height is unused - use 0, and B is note value.
*/

void main() {
    vec2 uv = isf_FragNormCoord;
    vec3 rgb = IMG_PIXEL(midiImage, floor(uv * vec2(128.0, 16.0)) + vec2(0.5)).rgb;
    
    rgb.r = rgb.r > 0. ? 1. : 0.;
    rgb.b = rgb.b > 0. ? 1. : 0.;
    
    gl_FragColor.rgb = rgb;
    gl_FragColor.a = 1.0;
}
