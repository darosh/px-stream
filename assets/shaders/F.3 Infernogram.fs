/*{
    "CREDIT": "by darosh",
    "CATEGORIES": ["Audio Visualizer"],
    "INPUTS": [
        {"NAME": "fftuImage", "TYPE": "audioFFT"},
        {"NAME": "logScale", "TYPE": "bool", "DEFAULT": 1},
        {"NAME": "sharp", "TYPE": "float", "DEFAULT": 0},
        {"NAME": "colored", "TYPE": "bool", "DEFAULT": 1},
        {"NAME": "gain", "TYPE": "float", "DEFAULT": 1, "MIN": 0, "MAX": 4},
        {"NAME": "tilt", "TYPE": "float", "DEFAULT": 0.25, "MIN": -1, "MAX": 1},
        {"NAME": "center", "TYPE": "float", "DEFAULT": 0.5, "MIN": 0, "MAX": 1},
        {"NAME": "low", "TYPE": "float", "DEFAULT": 0, "MIN": 0, "MAX": 1},
        {"NAME": "high", "TYPE": "float", "DEFAULT": 1, "MIN": 0, "MAX": 1},
        {"NAME": "speed", "TYPE": "float", "DEFAULT": 0.25, "MIN": 0, "MAX": 50}
    ],
    "PASSES": [{"TARGET": "BUFFER", "PERSISTENT": true, "FLOAT": true}, {}],
    "ISFVSN": "2",
    "DESCRIPTION": "Displays incoming FFT data with a vertical scroll and color mapping based on the Inferno gradient.\nSupports optional logarithmic scaling on the X axis for better low-frequency detail. Adapted Shadertoy: tfKSzw by theko."
}*/

#define BINS 512.

// === Inferno-style gradient ===
vec3 infernoGradient(float t) {
    t = clamp(t, 0.0, 1.0);

    vec3 colors[7];
    colors[0] = vec3(250.0, 253.0, 161.0) / 255.0;// light yellow
    colors[1] = vec3(251.0, 182.0, 26.0) / 255.0;// orange
    colors[2] = vec3(237.0, 105.0, 37.0) / 255.0;// red
    colors[3] = vec3(188.0, 55.0, 84.0) / 255.0;// dark pink
    colors[4] = vec3(120.0, 28.0, 109.0) / 255.0;// violet
    colors[5] = vec3(50.0, 10.0, 94.0) / 255.0;// dark violet
    colors[6] = vec3(0.0, 0.0, 0.0);// black

    float scaled = t * float(6);// Scale t to index range
    int idx = int(floor(scaled));
    float frac = fract(scaled);

    return mix(colors[idx], colors[min(idx + 1, 6)], frac);
}

float getBinFFT(float bin) {
    float normalizedBin = bin / BINS;
    vec4 sampled = IMG_NORM_PIXEL(fftuImage, vec2(normalizedBin, 0.5));
    return max(sampled.r, sampled.g);
}

float getNormalizedFFT(float normalizedBin) {
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

float getLogScaledRangeFFT(float x0, float x1) {
    float bin0 = logScaled(x0) * BINS;
    float bin1 = logScaled(x1) * BINS;

    float binCenter = (bin0 + bin1) * 0.5;
    float fBinCenter = floor(binCenter);
    float amp = getBinFFT(fBinCenter);

    if (amp == 0.) {
        return 0.;
    }

    float pixelCenterX = (x0 + x1) * 0.5;
    amp += getTiltGain(pixelCenterX, center, tilt);

    if (sharp == 0.) {
        return amp;
    }

    float bx0 = binToX(fBinCenter);
    float bx1 = binToX(fBinCenter + 1.);
    float xCenter = (bx0 + bx1) * .5;

    float dist = abs(pixelCenterX - xCenter);
    float pixelWidth = abs(x1 - x0);
    float weight = (sharp == 1. && dist < pixelWidth * .5) ? 1. : 1. - clamp(0., 1., dist / mix(abs(bx1 - bx0), pixelWidth * .5, sharp));

    return amp * weight;
}

void main() {
    vec2 uv = isf_FragNormCoord;

    if (PASSINDEX == 0) {
        float shift = TIMEDELTA * speed;// Vertical scroll speed per frame

        if (uv.y < shift) {
            float amplitude;

            if (logScale) {
                uv.x = uv.x * (high - low) + low;
                float pixelWidth = 1.0 / RENDERSIZE.x;
                float x0 = uv.x - pixelWidth * 0.5;
                float x1 = uv.x + pixelWidth * 0.5;
                amplitude = getLogScaledRangeFFT(x0, x1);
            } else {
                amplitude = getNormalizedFFT(uv.x);
            }

            float value = clamp(amplitude * gain, 0.0, 1.0);
            vec3 newColor = colored ? infernoGradient(1.0 - value) : vec3(value);

            gl_FragColor = vec4(newColor, 1.0);
        } else {
            vec2 shiftedUV = uv - vec2(0.0, shift);
            vec3 oldColor = IMG_NORM_PIXEL(BUFFER, mod(shiftedUV, 1.0)).rgb;

            gl_FragColor = vec4(oldColor, 1.0);
        }

    } else if (PASSINDEX == 1) {
        vec3 col = IMG_NORM_PIXEL(BUFFER, mod(uv, 1.0)).rgb;
        gl_FragColor = vec4(col, 1.0);
    }
}
