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
        {"NAME": "smoothing", "TYPE": "bool", "DEFAULT": 0},
        {"NAME": "mono", "TYPE": "bool", "DEFAULT": 1},
        {"NAME": "stereo", "TYPE": "bool", "DEFAULT": 0},
        {"NAME": "circular", "TYPE": "bool", "DEFAULT": 0}
    ],
    "PASSES": [{}],
    "ISFVSN": "2"
}*/

#define SAMPLER_TYPE int
#define SAMPLER_FNC(TEX, UV) IMG_NORM_PIXEL(wavuImage, UV)

#include "darosh/draw/waveforms.glsl"

void main() {
    float scale = length(RENDERSIZE)  / RENDERSIZE.y;

    gl_FragColor = drawWaveforms(
    mono, stereo, circular,
    smoothing, doubled, rotation, amplitude, thickness,
    separation, radius, scale);
}
