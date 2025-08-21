/*{
    "CREDIT": "by darosh",
    "CATEGORIES": ["Audio Visualizer"],
    "INPUTS": [{"NAME": "midiImage", "TYPE": "audio"}],
    "PASSES": [{"TARGET": "bufferA", "PERSISTENT": true, "FLOAT": true}, {}],
    "ISFVSN": "2",
    "DESCRIPTION": "Raw MIDI data"
}*/

/*
midiImage has 128x16 size,
for R color the width is MIDI note, height channel and R value is velocity,
for G color the width is MIDI CC number, height channel and G is CC value.
*/

void main() {
    vec2 uv = isf_FragNormCoord;

    if(PASSINDEX == 0) {
        vec3 old = IMG_NORM_PIXEL(bufferA, uv).rgb;
        vec3 new = IMG_NORM_PIXEL(midiImage, uv).rgb;

        gl_FragColor.rgb = max(old, new);
        gl_FragColor.a = 1.0;
    } else if(PASSINDEX == 1) {
        gl_FragColor.rgb = IMG_NORM_PIXEL(bufferA, uv).rgb;
    }
}
