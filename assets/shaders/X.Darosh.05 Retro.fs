/*{
    "CREDIT": "by darosh",
    "CATEGORIES": ["Audio Visualizer"],
    "INPUTS": [
        {"NAME": "wavuImage", "TYPE": "audio", "MAX": "1024"},
        {"NAME": "moveAmount", "TYPE": "float", "DEFAULT": 2, "MIN": -10, "MAX": 10},
        {"NAME": "warpAmount", "TYPE": "float", "DEFAULT": 2, "MIN": -10, "MAX": 10},
        {"NAME": "warpSpeed", "TYPE": "float", "DEFAULT": 1, "MIN": 0.1, "MAX": 5},
        {"NAME": "audioReactive", "TYPE": "float", "DEFAULT": 1, "MIN": 0, "MAX": 10},
        {"NAME": "decay", "TYPE": "float", "DEFAULT": 0.98, "MIN": 0.5, "MAX": 1},
        {"NAME": "thickness", "TYPE": "float", "DEFAULT": 1, "MIN": 0.5, "MAX": 100},
        {"NAME": "amplitude", "TYPE": "float", "DEFAULT": 0.2, "MIN": 0, "MAX": 1},
        {"NAME": "rotation", "TYPE": "float", "DEFAULT": 1, "MIN": -2, "MAX": 2},
        {"NAME": "separation", "TYPE": "float", "DEFAULT": 0.125, "MIN": 0, "MAX": 1},
        {"NAME": "radius", "TYPE": "float", "DEFAULT": 0.33, "MIN": 0, "MAX": 1},
        {"NAME": "doubled", "TYPE": "bool", "DEFAULT": 0},
        {"NAME": "smoothing", "TYPE": "bool", "DEFAULT": 1},
        {"NAME": "mono", "TYPE": "bool", "DEFAULT": 0},
        {"NAME": "stereo", "TYPE": "bool", "DEFAULT": 1},
        {"NAME": "circular", "TYPE": "bool", "DEFAULT": 0}
    ],
    "PASSES": [{"TARGET": "feedbackBuffer", "PERSISTENT": true}, {"TARGET": "waveformPass", "PERSISTENT": true}, {}],
    "ISFVSN": "2"
}*/

#define SAMPLER_TYPE int
#define SAMPLER_FNC(TEX, UV) IMG_NORM_PIXEL(wavuImage, UV)

#include "darosh/draw/waveforms.glsl"

vec2 getWarp(vec2 uv, float t) {
    float dx = (
    0.7 * sin(t * 0.1102 + 10.0) +
    0.6 * cos(t * 0.1312 + 20.0) +
    0.4 * sin(uv.y * 12.0 + t * 0.3));

    float dy = (
    0.6 * cos(t * 0.1204 + 40.0) +
    0.5 * sin(t * 0.1715 + 30.0) +
    0.4 * cos(uv.x * 12.0 + t * 0.4));

    return vec2(dx / 1.7, dy / 1.5);
}

float getAudioLevel() {
    float sum = 0.0;
    int samples = 32;
    float fsamples = float(samples);

    for (int i = 0; i < samples; i++) {
        float x = float(i) / fsamples;
        vec4 v = IMG_NORM_PIXEL(wavuImage, vec2(x, 0.0));
        sum += abs(v.r - 0.5);
        sum += abs(v.g - 0.5);
    }

    return 2 * sum / fsamples;
}

void main() {
    vec2 uv = isf_FragNormCoord;
    vec2 px = 1. / RENDERSIZE.xy;

    if (PASSINDEX == 0) {
        vec2 px = vec2(1.) / RENDERSIZE;
        float audioLevel = 1. + getAudioLevel() * audioReactive;

        vec2 move = (uv -.5) * 2 * moveAmount;
        vec2 warp = getWarp(uv, TIME * warpSpeed) * warpAmount;
        float vignette = smoothstep(.75, 0., length(uv -.5));
        vec2 warpOffset = (move + warp * audioLevel) * px * vignette;
        vec2 warpUV = uv + warpOffset;
        
        vec4 color = IMG_NORM_PIXEL(feedbackBuffer, warpUV);
        color *= mix(decay, decay * .95, min(length(uv -.5), 1.));
        color += IMG_NORM_PIXEL(waveformPass, uv);

        gl_FragColor = color;
    }
    else if (PASSINDEX == 1) {
        float scale = length(RENDERSIZE)  / RENDERSIZE.y;

        vec4 color = drawWaveforms(
        mono, stereo, circular,
        smoothing, doubled, rotation, amplitude, thickness,
        separation, radius, scale);

        gl_FragColor = color;
    }
    else if (PASSINDEX == 2) {
        vec4 color = IMG_THIS_NORM_PIXEL(feedbackBuffer);
        vec2 center = uv - 0.5;
        float vignette = 0.9 - dot(center, center) * 2.;

        gl_FragColor = color * vignette;
    }
}
