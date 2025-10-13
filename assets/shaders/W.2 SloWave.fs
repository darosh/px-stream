/*{
    "CREDIT": "by ensonador.bsky.social",
    "CATEGORIES": ["Audio Visualizer"],
    "INPUTS": [
        {"NAME": "waveImage", "TYPE": "audio"},
        {"NAME": "waveSize", "TYPE": "float", "DEFAULT": 0.01, "MIN": 0, "MAX": 0.5},
        {"NAME": "frameHold", "TYPE": "float", "DEFAULT": 6, "MIN": 1, "MAX": 240}
    ],
    "PASSES": [{"TARGET": "buffer", "PERSISTENT": true}],
    "ISFVSN": "2"
}*/

void main() {
    vec2 loc = isf_FragNormCoord;
    float channel = 0.0;
    float fi = float(FRAMEINDEX);
    bool refresh = mod(fi, frameHold) < 1.;
    vec4 lastFrame = IMG_THIS_NORM_PIXEL(buffer);

    if(refresh) {
        // Draw new waveform
        vec2 waveLoc = vec2(loc.x, channel);
        vec4 wave = IMG_NORM_PIXEL(waveImage, waveLoc);
        vec4 waveAdd = (1.0 - smoothstep(0.0, waveSize, abs(wave - loc.y)));
        gl_FragColor = vec4(vec3(waveAdd), 1.0);
    } else {
        // Keep old image
        gl_FragColor = lastFrame;
    }
}
