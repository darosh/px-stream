/*{
    "CREDIT": "by VIDVOX",
    "CATEGORIES": ["Audio Visualizer"],
    "INPUTS": [
        {"NAME": "waveImage", "TYPE": "audio"},
        {"NAME": "rangeFFT", "TYPE": "float", "DEFAULT": 0.9, "MIN": 0, "MAX": 1},
        {"NAME": "waveSize", "TYPE": "float", "DEFAULT": 0.02, "MIN": 0, "MAX": 0.5},
        {"NAME": "vertical", "TYPE": "bool", "DEFAULT": 1},
        {"NAME": "stereo", "TYPE": "bool", "DEFAULT": 1},
        {"NAME": "wavecolor", "TYPE": "color", "DEFAULT": [1, 1, 1, 1]}
    ],
    "ISFVSN": "2",
    "DESCRIPTION": "Visualizes an FFT analysis image with custom set colors for frequency domain"
}*/

void main() {
	vec2 loc = isf_FragNormCoord;

	if(vertical) {
		loc.x = isf_FragNormCoord[1];
		loc.y = isf_FragNormCoord[0];
	}

	vec4 mixColor = vec4(1.);
	loc.y = loc.y * rangeFFT;

	float channel = 0.5;
	float offset = 0.0;

	if(stereo == true) {
		channel = (loc.x > 0.5) ? 0.0 : 1.0;
		offset = (loc.x > 0.5) ? 0.25 : -0.25;
	}

	vec4 fft = vec4(0.);
	vec2 waveLoc = vec2(loc.y, channel);
	vec4 wave = IMG_NORM_PIXEL(waveImage, waveLoc) + offset;
	vec4 waveAdd = ((1.0 - smoothstep(0.0, waveSize, abs(wave - loc.x))) * wavecolor) * wavecolor.a;

	fft += waveAdd;
	fft.a = mixColor.a + clamp((waveAdd.r + waveAdd.g + waveAdd.b) * wavecolor.a, 0.0, 1.0);

	gl_FragColor = fft;
}
