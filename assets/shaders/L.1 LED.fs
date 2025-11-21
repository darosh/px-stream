/*{
    "CATEGORIES": ["Automatically Converted", "Shadertoy"],
    "INPUTS": [
        {"NAME": "fftuImage", "TYPE": "audioFFT"},
        {"NAME": "bands", "TYPE": "long", "DEFAULT": 24, "MIN": 1, "MAX": 48},
        {"NAME": "segs", "TYPE": "long", "DEFAULT": 24, "MIN": 1, "MAX": 48},
        {"NAME": "off", "TYPE": "float", "DEFAULT": 0.1, "MIN": 0, "MAX": 1},
        {"NAME": "colored", "TYPE": "bool", "DEFAULT": 1},
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

float getFFT(float bin, float bins) {
    float normalizedBin = bin / bins;
    vec4 sampled = IMG_NORM_PIXEL(fftuImage, vec2(normalizedBin, 0.5));
    return max(sampled.r, sampled.g);
}

float getFFT(float normalizedBin) {
    vec4 sampled = IMG_NORM_PIXEL(fftuImage, vec2(normalizedBin, 0.5));
    return max(sampled.r, sampled.g);
}

float logScaled(float x, float bins) {
    float minBin = 1.0;
    float maxBin = bins;
    float b = pow(maxBin / minBin, x);
    return (b - minBin) / (maxBin - minBin);
}

float binToX(float bin, float bins) {
    float minBin = 1.0;
    float maxBin = bins;
    float b = (bin / bins) * (maxBin - minBin) + minBin;
    float x = log(b / minBin) / log(maxBin / minBin);
    return x;
}

float getTiltGain(float f, float pivotFreq, float maxTiltGain) {
    float octavesFromPivot = log2(f / pivotFreq);
    float tiltGain = octavesFromPivot * maxTiltGain;
    return clamp(tiltGain, -abs(maxTiltGain), abs(maxTiltGain));
}

float sampleFFT(float x0, float bins) {
    float bin0 = logScaled(x0, bins) * bins;
    float fBinCenter = floor(bin0);
    float amp = getFFT(fBinCenter, bins);

    if (amp == 0.) {
        return 0.;
    }

    amp += getTiltGain(x0, 0.5, 0.25);

    return amp;
}

void main() {
    // create pixel coordinates
    vec2 uv = gl_FragCoord.xy / RENDERSIZE.xy;
    // quantize coordinates
    vec2 p;
    p.x = floor(uv.x * bands) / bands;
    p.y = floor(uv.y * segs) / segs;
    // read frequency data from first row of texture
    float fft = sampleFFT(p.x * (high - low) + low, 128.);
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
