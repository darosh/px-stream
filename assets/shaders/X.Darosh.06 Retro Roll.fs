/*{
    "CREDIT": "by darosh",
    "CATEGORIES": ["Audio Visualizer"],
    "INPUTS": [
        {"NAME": "wavuImage", "TYPE": "audio", "MAX": "1024"},
        {"NAME": "moveAmount", "TYPE": "float", "DEFAULT": -10, "MIN": -10, "MAX": 10},
        {"NAME": "warpAmount", "TYPE": "float", "DEFAULT": 10, "MIN": -10, "MAX": 10},
        {"NAME": "warpSpeed", "TYPE": "float", "DEFAULT": 0.14, "MIN": 0.1, "MAX": 5},
        {"NAME": "audioReactive", "TYPE": "float", "DEFAULT": 10, "MIN": 0, "MAX": 10},
        {"NAME": "decay", "TYPE": "float", "DEFAULT": 0.98, "MIN": 0.5, "MAX": 1},
        {"NAME": "thickness", "TYPE": "float", "DEFAULT": 0.5, "MIN": 0.5, "MAX": 100},
        {"NAME": "amplitude", "TYPE": "float", "DEFAULT": 1, "MIN": 0, "MAX": 2},
        {"NAME": "rotation", "TYPE": "float", "DEFAULT": -0.04, "MIN": -2, "MAX": 2},
        {"NAME": "separation", "TYPE": "float", "DEFAULT": 0.125, "MIN": 0, "MAX": 1},
        {"NAME": "radius", "TYPE": "float", "DEFAULT": 0.16, "MIN": 0, "MAX": 1},
        {"NAME": "doubled", "TYPE": "bool", "DEFAULT": 0},
        {"NAME": "smoothing", "TYPE": "bool", "DEFAULT": 0},
        {"NAME": "mono", "TYPE": "bool", "DEFAULT": 1},
        {"NAME": "stereo", "TYPE": "bool", "DEFAULT": 0},
        {"NAME": "circular", "TYPE": "bool", "DEFAULT": 1}
    ],
    "PASSES": [
    {"TARGET": "feedbackBuffer", "PERSISTENT": true}, 
    {"TARGET": "dataBuffer", "PERSISTENT": true, "WIDTH": 512, "HEIGHT": 1},
    {"TARGET": "renderWave", "WIDTH": 1024, "HEIGHT": 1},
    {"TARGET": "waveformPass", "PERSISTENT": true}, 
    {}],
    "ISFVSN": "2"
}*/

#define SAMPLER_TYPE int
#define SAMPLER_FNC(TEX, UV) IMG_NORM_PIXEL(renderWave, UV)

#include "lygia/generative/curl.glsl"
#include "darosh/draw/waveforms.glsl"

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
    float slots = 6;
    float iSlots = pow(2., floor(slots));

    if (PASSINDEX == 0) {
        vec2 px = vec2(1.) / RENDERSIZE;
        float audioLevel = 1. + getAudioLevel() * audioReactive;

        vec2 move = (uv -.5) * 2 * moveAmount;
        vec2 warp = curl(vec3(uv, TIME * warpSpeed)).xy * warpAmount;
        float vignette = smoothstep(.75, 0., length(uv -.5));
        vec2 warpOffset = (move + warp * audioLevel) * px * vignette;
        vec2 warpUV = uv + warpOffset;
        
        vec4 color = IMG_NORM_PIXEL(feedbackBuffer, warpUV);
        color *= mix(decay, decay * .95, min(length(uv -.5), 1.));
        color += IMG_NORM_PIXEL(waveformPass, uv);

        gl_FragColor = color;
    }
    else if (PASSINDEX == 1) {
        float fi = float(FRAMEINDEX);
        float bufferSlots = iSlots * 2.;
        float frameSlotId = mod(fi, bufferSlots);
        float currentSlot = uv.x * bufferSlots;
        float currentSlotId = floor(currentSlot);
        float currentSlotPos = fract(currentSlot);

        if (frameSlotId == currentSlotId) {
            gl_FragColor = IMG_NORM_PIXEL(wavuImage, vec2(currentSlotPos, 0.));
        } else {
            gl_FragColor = IMG_THIS_NORM_PIXEL(dataBuffer);
        }
    }
    else if (PASSINDEX == 2) {
        float fi = float(FRAMEINDEX);
        float bufferSlots = iSlots * 2.;
        float frameSlotId = fi;
        float displaySlot = uv.x * iSlots;
        float targetSlot = frameSlotId - iSlots + displaySlot - 1.;
        float readSlot = mod(targetSlot, bufferSlots);
        float currentSlotPos = readSlot / bufferSlots;

        if (targetSlot < 3.) {
            gl_FragColor = vec4(0.5);
        } else {
            gl_FragColor = IMG_NORM_PIXEL(dataBuffer, vec2(currentSlotPos, 0.));
        }
    }
    else if (PASSINDEX == 3) {
        float scale = length(RENDERSIZE)  / RENDERSIZE.y;

        vec4 color = drawWaveforms(
        mono, stereo, circular,
        smoothing, doubled, rotation, amplitude, thickness,
        separation, radius, scale);

        gl_FragColor = color;
    }
    else if (PASSINDEX == 4) {
        vec4 color = IMG_THIS_NORM_PIXEL(feedbackBuffer);
        vec2 center = uv - 0.5;
        float vignette = 0.9 - dot(center, center) * 2.;

        gl_FragColor = color * vignette;
    }
}
