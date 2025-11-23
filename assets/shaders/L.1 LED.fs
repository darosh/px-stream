/*{
    "CATEGORIES": ["Automatically Converted", "Shadertoy"],
    "INPUTS": [
        {"NAME": "fftuImage", "TYPE": "audioFFT"},
        {"NAME": "logScale", "TYPE": "bool", "DEFAULT": 1},
        {"NAME": "bands", "TYPE": "long", "DEFAULT": 24, "MIN": 1, "MAX": 48},
        {"NAME": "segs", "TYPE": "long", "DEFAULT": 24, "MIN": 1, "MAX": 48},
        {"NAME": "off", "TYPE": "float", "DEFAULT": 0.1, "MIN": 0, "MAX": 1},
        {"NAME": "colored", "TYPE": "bool", "DEFAULT": 1},
        {"NAME": "gain", "TYPE": "float", "DEFAULT": 1, "MIN": 0, "MAX": 4},
        {"NAME": "tilt", "TYPE": "float", "DEFAULT": 0, "MIN": -1, "MAX": 1},
        {"NAME": "center", "TYPE": "float", "DEFAULT": 0.5, "MIN": 0, "MAX": 1},
        {"NAME": "low", "TYPE": "float", "DEFAULT": 0, "MIN": 0, "MAX": 1},
        {"NAME": "high", "TYPE": "float", "DEFAULT": 1, "MIN": 0, "MAX": 1}
    ],
    "ISFVSN": "2",
    "DESCRIPTION": "Automatically converted from https://www.shadertoy.com/view/Mlj3WV by uNiversal.  A simple 2D LED Spectrum analyser visualisation, based on Led Spectrum Analyser by: simesgreen\n\nMade to work in Kodi shadertoy addon https://github.com/topfs2/visualization.shadertoy/pull/3"
}*/

/*
2D LED Spectrum - Visualiser
Based on Led Spectrum Analyser by: simesgreen - 27th February, 2013 https://www.shadertoy.com/view/Msl3zr
2D LED Spectrum by: uNiversal - 27th May, 2015
Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License.
*/

#define BINS 512.

float getBinFFT(float bin) {
    float normalizedBin = bin / BINS;
    vec4 sampled = IMG_NORM_PIXEL(fftuImage, vec2(normalizedBin, 0.5));
    return max(sampled.r, sampled.g);
}

float logXToBin(float x) { // Convert x position to bin index (inverse of above)
    return pow(BINS + 1., x) - 1.;
}

float binToX(float b) {
    return b / (BINS - 1.);
}

float logScaled(float x) {
    return binToX(logXToBin(x));
}

float getTiltGain(float f, float pivotFreq, float maxTiltGain) {
    float octavesFromPivot = log2(f / pivotFreq);
    float tiltGain = octavesFromPivot * maxTiltGain;
    return clamp(tiltGain, -abs(maxTiltGain), abs(maxTiltGain));
}

float getRangeFFT(float x0, float x1) {
    float bin0 = x0 * BINS;
    float bin1 = x1 * BINS;

    float fBin0 = floor(bin0);
    float fBin1 = floor(bin1);

    float amp = 0.;

    for (float bin = fBin0; bin < fBin1; bin++) {
        amp = max(amp, getBinFFT(bin));
    }

    return amp;
}

float getLogScaledRangeFFT(float x0, float x1) {
    float bin0 = logScaled(x0) * BINS;
    float bin1 = logScaled(x1) * BINS;

    float fBin0 = floor(bin0);
    float fBin1 = floor(bin1);

    float amp = 0.;

    fBin1 = fBin0 == fBin1 ? fBin0 + 1. : fBin1;
    
    for (float bin = fBin0; bin < fBin1; bin++) {
        amp = max(amp, getBinFFT(bin));
    }

    if (amp == 0.) {
        return 0.;
    }

    amp += getTiltGain(x0, center, tilt);

    return amp;
}

void main() {
    // create pixel coordinates
    vec2 uv = isf_FragNormCoord;
    // quantize coordinates
    vec2 p;
    p.x = floor(uv.x * bands) / bands;
    p.y = floor(uv.y * segs) / segs;

    float b0 = floor(uv.x * bands);
    float b1 = b0 + 1;

    // read frequency data from first row of texture
    float fft = logScale
    ? getLogScaledRangeFFT(p.x * (high - low) + low, (b1 / bands) * (high - low) + low)
    : getRangeFFT(p.x * (high - low) + low, (b1 / bands) * (high - low) + low);

    fft *= gain;

    // led color
    vec3 color = mix(vec3(0.0, 2.0, 0.0), vec3(2.0, 0.0, 0.0), sqrt(uv.y));
    // mask for bar graph
    float mask = (p.y < fft) ? 1.0 : off;
    // led shape
    vec2 d = fract((uv - p) * vec2(bands, segs)) - 0.5;
    float led = smoothstep(0.5, 0.35, abs(d.x)) * smoothstep(0.5, 0.35, abs(d.y));
    vec3 ledColor = led * (colored ? color : vec3(1.)) * mask;
    // output final color
    gl_FragColor = vec4(ledColor, 1.0);
}
