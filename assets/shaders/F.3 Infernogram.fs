/*{
    "CREDIT": "by darosh",
    "CATEGORIES": ["Audio Visualizer"],
    "INPUTS": [
        {"NAME": "fftImage", "TYPE": "audioFFT"},
        {"NAME": "logScale", "TYPE": "bool", "DEFAULT": 1},
        {"NAME": "sharp", "TYPE": "bool", "DEFAULT": 0},
        {"NAME": "colored", "TYPE": "bool", "DEFAULT": 1},
        {"NAME": "gain", "TYPE": "float", "DEFAULT": 1, "MIN": 0, "MAX": 5},
        {"NAME": "speed", "TYPE": "float", "DEFAULT": 0.25, "MIN": 0, "MAX": 100}
    ],
    "PASSES": [{"TARGET": "BufferA", "PERSISTENT": true, "FLOAT": true}, {}],
    "ISFVSN": "2",
    "DESCRIPTION": "Displays incoming FFT data with a vertical scroll and color mapping based on the Inferno gradient.\nSupports optional logarithmic scaling on the X axis for better low-frequency detail. Adapted Shadertoy: tfKSzw by theko."
}*/

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

float getFFT(float bin, float bins) {
    float normalizedBin = bin / bins;
    return IMG_NORM_PIXEL(fftImage, vec2(normalizedBin, 0.5)).r;
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
    return log(b / minBin) / log(maxBin / minBin);
}

float sampleFFT(float x0, float x1, float bins) {
    float bin0 = logScaled(x0, bins) * bins;
    float bin1 = logScaled(x1, bins) * bins;

    float binCenter = (bin0 + bin1) * 0.5;
    float fBinCenter = floor(binCenter);
    float amp = getFFT(fBinCenter, bins);
    
    if (!sharp) {
        return amp;
    }

    float pixelCenterX = (x0 + x1) * 0.5;
    float xCenter = binToX(fBinCenter, bins);
    float dist = abs(pixelCenterX - xCenter);
    float pixelWidth = abs(x1 - x0);
    float weight = dist < (pixelWidth * 2.) ? 1. : 0.;
    
    return  amp * weight;
}

void main() {
    if (PASSINDEX == 0) {
        vec2 uv = isf_FragNormCoord;
        float shift = TIMEDELTA * speed;// Vertical scroll speed per frame
        vec2 shiftedUV = uv - vec2(0.0, shift);
        vec3 oldColor = IMG_NORM_PIXEL(BufferA, mod(shiftedUV, 1.0)).rgb;

        float amplitude;

        if (logScale) {
            float pixelWidth = 1.0 / RENDERSIZE.x;
            float x0 = uv.x - pixelWidth * 0.5;
            float x1 = uv.x + pixelWidth * 0.5;
            amplitude = sampleFFT(x0, x1, 512.);
        } else {
            amplitude = IMG_NORM_PIXEL(fftImage, vec2(uv.x, .5)).r;
        }

        float value = clamp(amplitude * gain, 0.0, 1.0);
        vec3 newColor = colored ? infernoGradient(1.0 - value) : vec3(value);

        gl_FragColor = (uv.y < shift) ? vec4(newColor, 1.0) : vec4(oldColor, 1.0);
    } else if (PASSINDEX == 1) {
        vec2 uv = gl_FragCoord.xy / RENDERSIZE.xy;
        vec3 col = IMG_NORM_PIXEL(BufferA, mod(uv, 1.0)).rgb;
        gl_FragColor = vec4(col, 1.0);
    }
}
