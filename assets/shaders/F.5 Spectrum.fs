/*{
    "CATEGORIES": ["Example"],
    "INPUTS": [
        {"NAME": "fftuImage", "TYPE": "audioFFT"},
        {"NAME": "logScale", "TYPE": "bool", "DEFAULT": 1},
        {"NAME": "margin", "TYPE": "float", "DEFAULT": 0.1}
    ],
    "ISFVSN": "2",
    "DESCRIPTION": "FFT Spectrum example"
}*/

#define BINS 512.

float getNormalizedFFT(float normalizedBin) {
    vec4 sampled = IMG_NORM_PIXEL(fftuImage, vec2(normalizedBin, 0.5));
    return max(sampled.r, sampled.g);
}

float binToLogX(float bin) { // Convert bin index to logarithmic x position (0 to 1)
    // Map bin [0, BINS] to logarithmic space
    // Using log scale from 1 to BINS+1 to avoid log(0)
    return log(bin + 1.) / log(BINS + 1.);
}

float logXToBin(float x) { // Convert x position to bin index (inverse of above)
    return pow(BINS + 1., x) - 1.;
}

void main() {
    vec2 m = vec2(margin, margin * RENDERSIZE.x / RENDERSIZE.y); 
    vec2 uv = isf_FragNormCoord * (1. + m * 2.) - m;
    float pixelWidth = 1.0 / RENDERSIZE.x;
    vec3 color = vec3(0.);

    if (logScale) {
        float binStart = logXToBin(uv.x - pixelWidth * 0.5);
        float binEnd = logXToBin(uv.x + pixelWidth * 0.5);
        float firstBin = floor(binStart);
        float lastBin = floor(binEnd);
        float distToBoundary = 1e5;
        float fft = 0.;;

        for (float b = firstBin; b <= lastBin + 1.; b++) {
            if (b >= 0. && b <= BINS) {
                float binX = binToLogX(b);
                distToBoundary = min(distToBoundary, abs(uv.x - binX) / pixelWidth);
                fft = max(fft, uv.x >= 0. && uv.x <= 1. ? getNormalizedFFT(b / BINS) : 0.);
            }
        }

        distToBoundary = distToBoundary < 1 ? 0 : 1;
        distToBoundary = (fft > uv.y) && (0. <= uv.y) ? distToBoundary : 1e5;
        float lineWidth = 0.5;
        color = vec3(1.0 - smoothstep(lineWidth - 0.5, lineWidth + 0.5, distToBoundary));
    } else {
        float binIndex = floor(uv.x * BINS);
        float binX = binIndex / BINS;
        float nextBinX = (binIndex + 1.) / BINS;
        float distToBoundary = min(abs(uv.x - binX), abs(uv.x - nextBinX));
        float fft = uv.x >= 0. && uv.x <= 1. ? getNormalizedFFT(binX) : 0.;
        distToBoundary = distToBoundary < 1 ? 0 : 1;
        distToBoundary = (fft > uv.y) && (0. <= uv.y) ? distToBoundary : 1e5;
        float lineWidth = 0.5;
        color = vec3(1.0 - smoothstep(lineWidth - 0.5, lineWidth + 0.5, distToBoundary));
    }

    gl_FragColor = vec4(color, 1.0);
}
