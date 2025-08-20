/*{
    "CREDIT": "by darosh",
    "CATEGORIES": ["Audio Visualizer"],
    "INPUTS": [{"NAME": "fftImage", "TYPE": "audioFFT"}],
    "PASSES": [{"TARGET": "BufferA", "PERSISTENT": true, "FLOAT": true}, {}],
    "ISFVSN": "2",
    "DESCRIPTION": "Displays incoming FFT data with a vertical scroll and color mapping based on the Inferno gradient.\nSupports optional logarithmic scaling on the X axis for better low-frequency detail. Adapted Shadertoy: tfKSzw by theko."
}*/

#define LOG_SCALE
#define LOG_POWER 5.5 // Higher value = more low frequency stretch
#define      GAIN 1.0

// === Sample spectrogram and waveform values from audio texture ===
// vec2 (sampler2D tex, float p) {
//     float spectre = texture(tex, vec2(p, 0.0)).r;
//     float waveform = texture(tex, vec2(p, 1.0)).r;
//     return vec2(spectre, waveform);
// }

int min(int a, int b) {
    if(a < b) {
        return a;
    }

    return b;
}

// === Inferno-style gradient ===
vec3 infernoGradient(float t) {
    t = clamp(t, 0.0, 1.0);

    vec3 colors[7];
    colors[0] = vec3(250.0, 253.0, 161.0) / 255.0; // light yellow
    colors[1] = vec3(251.0, 182.0, 26.0) / 255.0; // orange
    colors[2] = vec3(237.0, 105.0, 37.0) / 255.0; // red
    colors[3] = vec3(188.0, 55.0, 84.0) / 255.0; // dark pink
    colors[4] = vec3(120.0, 28.0, 109.0) / 255.0; // violet
    colors[5] = vec3(50.0, 10.0, 94.0) / 255.0; // dark violet
    colors[6] = vec3(0.0, 0.0, 0.0);         // black

    float scaled = t * float(6); // Scale t to index range
    int idx = int(floor(scaled));
    float frac = fract(scaled);

    return mix(colors[idx], colors[min(idx + 1, 6)], frac);
}

// === Main ===
void main() {
    if(PASSINDEX == 0) {
	    //vec2 uv = gl_FragCoord.xy / RENDERSIZE.xy;
        vec2 uv = isf_FragNormCoord;

        float shift = TIMEDELTA * 0.15; // Vertical scroll speed per frame

        vec2 shiftedUV = uv - vec2(0.0, shift);
        vec3 oldColor = IMG_NORM_PIXEL(BufferA, mod(shiftedUV, 1.0)).rgb;

        float xMapped = uv.x;
	    #ifdef LOG_SCALE
	        // xMapped = pow(uv.x, LOG_POWER); // Apply logarithmic mapping
	    #endif

        float amplitude = IMG_NORM_PIXEL(fftImage, vec2(xMapped, .5)).r * GAIN;
        float value = clamp(amplitude, 0.0, 1.0);
        vec3 newColor = infernoGradient(1.0 - value);

        gl_FragColor = (uv.y < shift) ? vec4(newColor, 1.0) : vec4(oldColor, 1.0);
    } else if(PASSINDEX == 1) {
        vec2 uv = gl_FragCoord.xy / RENDERSIZE.xy;
        vec3 col = IMG_NORM_PIXEL(BufferA, mod(uv, 1.0)).rgb;
        gl_FragColor = vec4(col, 1.0);
    }

}
