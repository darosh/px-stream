/*{
    "CREDIT": "by VIDVOX",
    "CATEGORIES": ["Audio Visualizer"],
    "INPUTS": [
        {"NAME": "waveImage", "TYPE": "audio", "MAX": 1024},
        {"NAME": "waveSize", "TYPE": "float", "DEFAULT": 0.01, "MIN": 0, "MAX": 0.5}
    ],
    "ISFVSN": "2",
    "DESCRIPTION": "Visualizes an audio waveform image"
}*/

void main() {
	//	just grab the first audio channel here
    float channel = 0.0;

	//	get the location of this pixel
    vec2 loc = isf_FragNormCoord;

    vec2 waveLoc = vec2(loc.x, channel);
    vec4 wave = IMG_NORM_PIXEL(waveImage, waveLoc);
    vec4 waveAdd = (1.0 - smoothstep(0.0, waveSize, abs(wave - loc.y)));

    gl_FragColor = vec4(vec3(waveAdd), 1.);
}
