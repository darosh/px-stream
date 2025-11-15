/*{
    "CREDIT": "by darosh",
    "CATEGORIES": ["Audio Visualizer"],
    "INPUTS": [
        {"NAME": "wavuImage", "TYPE": "audio", "MAX": "1024"},
        {"NAME": "thickness", "TYPE": "float", "DEFAULT": 1, "MIN": 0.5, "MAX": 100},
        {"NAME": "amplitude", "TYPE": "float", "DEFAULT": 0.5, "MIN": 0, "MAX": 1},
        {"NAME": "rotation", "TYPE": "float", "DEFAULT": 0.1, "MIN": 0, "MAX": 10},
        {"NAME": "separation", "TYPE": "float", "DEFAULT": 0.125, "MIN": 0, "MAX": 1},
        {"NAME": "radius", "TYPE": "float", "DEFAULT": 0.25, "MIN": 0, "MAX": 1},
        {"NAME": "doubled", "TYPE": "bool", "DEFAULT": 0},
        {"NAME": "smoothing", "TYPE": "bool", "DEFAULT": 1},
        {"NAME": "mono", "TYPE": "bool", "DEFAULT": 1},
        {"NAME": "stereo", "TYPE": "bool", "DEFAULT": 0},
        {"NAME": "circular", "TYPE": "bool", "DEFAULT": 0},
        {"NAME": "frameHold", "TYPE": "float", "DEFAULT": 3, "MIN": 1, "MAX": 60}
    ],
    "PASSES": [
        {"TARGET": "prevWave", "PERSISTENT": true, "WIDTH": 1024, "HEIGHT": 1},
        {"TARGET": "currWave", "PERSISTENT": true, "WIDTH": 1024, "HEIGHT": 1},
        {"TARGET": "renderWave", "WIDTH": 1024, "HEIGHT": 1},
        {}
    ],
    "ISFVSN": "2"
}*/

#define SAMPLER_TYPE int
#define SAMPLER_FNC(TEX, UV) IMG_NORM_PIXEL(renderWave, UV)

#include "darosh/draw/waveforms.glsl"

void main() {
    float fi = float(FRAMEINDEX);
    bool isSnapshot = mod(fi, frameHold) < 1.0;

    if (PASSINDEX == 0) {
        if (isSnapshot) {
            gl_FragColor = IMG_THIS_NORM_PIXEL(currWave);
        } else {
            gl_FragColor = IMG_THIS_NORM_PIXEL(prevWave);
        }
    }
    else if (PASSINDEX == 1) {
        if (isSnapshot) {
            gl_FragColor = IMG_NORM_PIXEL(wavuImage, isf_FragNormCoord);
        } else {
            gl_FragColor = IMG_THIS_NORM_PIXEL(currWave);
        }
    }
    else if (PASSINDEX == 2) {
        float cycle = mod(fi, frameHold) / (frameHold - 1.0);
        float t = smoothstep(0.0, 1.0, cycle);

        vec4 prev = IMG_THIS_NORM_PIXEL(prevWave);
        vec4 curr = IMG_THIS_NORM_PIXEL(currWave);

        gl_FragColor = mix(prev, curr, t);// ← Smooth interpolation
    }
    else {
        float scale = length(RENDERSIZE)  / RENDERSIZE.y;

        gl_FragColor = drawWaveforms(
        mono, stereo, circular,
        smoothing, doubled, rotation, amplitude, thickness,
        separation, radius, scale);
    }
}
