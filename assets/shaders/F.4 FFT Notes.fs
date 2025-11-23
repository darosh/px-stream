/*{
    "CREDIT": "by darosh",
    "CATEGORIES": ["Audio Visualizer"],
    "INPUTS": [
        {"NAME": "fftuImage", "TYPE": "audioFFT"},
        {"NAME": "colored", "TYPE": "bool", "DEFAULT": 1},
        {"NAME": "shape", "TYPE": "long", "DEFAULT": 0, "MIN": 0, "MAX": 3},
        {"NAME": "blackKeys", "TYPE": "float", "DEFAULT": 1},
        {"NAME": "scale", "TYPE": "float", "DEFAULT": 1, "MIN": 0, "MAX": 4},
        {"NAME": "gain", "TYPE": "float", "DEFAULT": 1, "MIN": 0, "MAX": 4},
        {"NAME": "decay", "TYPE": "float", "DEFAULT": 0.98, "MIN": 0, "MAX": 1},
        {"NAME": "lowThreshold", "TYPE": "float", "DEFAULT": 0.5, "MIN": 0, "MAX": 1},
        {"NAME": "low", "TYPE": "float", "DEFAULT": 0.75, "MIN": 0, "MAX": 1}
    ],
    "PASSES": [{"TARGET": "BUFFER", "PERSISTENT": true, "FLOAT": true, "WIDTH": 512, "HEIGHT": 1}, {}],
    "ISFVSN": "2",
    "DESCRIPTION": "Adapted from https://www.shadertoy.com/view/tcG3Rm"
}*/

#define SRQ 11025.// Sample Rate / 4.
#define BINS 512.

float getNormalizedFreqShiftFFT(float normalizedBin) {
    const float b0 = (SRQ/BINS)*.5;
    const float b1 = SRQ-((SRQ/BINS)*.5);
    float adjustedBin = (normalizedBin * SRQ - b0) / (b1 - b0);
    vec4 sampled = IMG_NORM_PIXEL(BUFFER, vec2(adjustedBin, 0.5));
    return max(sampled.r, sampled.g);
}

// https://www.shadertoy.com/view/tcG3Rm
// Fork of "Visualiser 203" by Cotterzz. https://shadertoy.com/view/tsGGRy
// 2025-05-22 11:51:47

#define TWO_PI 6.28318530718

#define C9 8372.02
#define Db9 8870.
#define D9 9398.
#define Eb9 9974.
#define E9 10548.
#define F9 11176.
#define Gb9 11840.
#define G9 12544.
#define Ab9 13290.
#define A9 14080.
#define Bb9 14918.
#define B9 15804.

float notes[] = float[](C9, Db9, D9, Eb9, E9, F9, Gb9, G9, Ab9, A9, Bb9, B9);
bool flats[] = bool[](true, false, true, false, true, true, false, true, false, true, false, true);
vec3 cols[] = vec3[](
vec3(1, 1, 0),
vec3(0.5, 1, 0.1),
vec3(0, 0.8, 0),
vec3(0, .8, 0.6),
vec3(0, 0.8, 1),
vec3(0, 0.2, 1),
vec3(0.35, 0, 0.75),
vec3(0.5, 0, 1),
vec3(0.8, 0, 0.7),
vec3(0.8, 0, 0),
vec3(1, 0.1, 0),
vec3(1, 0.5, 0));

void main() {
    if (PASSINDEX == 0) {
        vec4 newPX = IMG_THIS_PIXEL(fftuImage);
        vec4 oldPX = IMG_THIS_PIXEL(BUFFER) * decay;

        gl_FragColor = newPX.x > oldPX.x ? newPX : oldPX;
    } else {
        vec2 U = isf_FragNormCoord;
        vec2 to = U * vec2(13, 11);

        to.x -= .5;
        to.y -= .5;

        if (to.x < 0. || to.x > 12. || to.y < 0. || to.y > 10.) {
            gl_FragColor = vec4(0.);
            return;
        }

        vec2 TO = floor(to);
        vec2 D  =  abs(fract(to) - .5);
        vec3 col = colored ? cols[int(TO.x)] : vec3(1.);
        float flt = flats[int(TO.x)] ? 1. : blackKeys;
        float dist;

        if (shape == 0) {
            dist = D.x;
        } else if (shape == 1) {
            dist = D.y;
        } else if (shape == 2) {
            dist = min(D.x, D.y);
        } else {
            dist = max(D.x, D.y);
        }

        dist *= scale;

        float frequency = notes[int(TO.x)] / exp2(9.-TO.y);

        float f =  gain * getNormalizedFreqShiftFFT(frequency/SRQ);
        float fa = gain * getNormalizedFreqShiftFFT((frequency*1.13)/SRQ);
        float fb = gain * getNormalizedFreqShiftFFT((frequency*0.87)/SRQ);
        float fc = gain * getNormalizedFreqShiftFFT((frequency*1.2)/SRQ);
        float fd = gain * getNormalizedFreqShiftFFT((frequency*0.8)/SRQ);
        float av = (f+fa+fb+fc+fd)/5.;
        float ff = (f-av)*8.*f;

        f=(f+f+f+ff+ff)/4.;
        f = clamp(0, 0.99, f);

        float bright = smoothstep(.0, 0.01, f*f*f*f - dist * 2.);

        gl_FragColor = bright * vec4(col * flt, 1.) * (f > lowThreshold ? 1. : low);
    }
}
