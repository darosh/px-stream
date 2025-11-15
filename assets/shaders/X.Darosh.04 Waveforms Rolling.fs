/*{
    "CREDIT": "by darosh",
    "CATEGORIES": ["Audio Visualizer"],
    "INPUTS": [
        {"NAME": "wavuImage", "TYPE": "audio", "MAX": "1024"},
        {"NAME": "thickness", "TYPE": "float", "DEFAULT": 1, "MIN": 0.5, "MAX": 100},
        {"NAME": "amplitude", "TYPE": "float", "DEFAULT": 0.5, "MIN": 0, "MAX": 1},
        {"NAME": "rotation", "TYPE": "float", "DEFAULT": 0, "MIN": -2, "MAX": 2},
        {"NAME": "separation", "TYPE": "float", "DEFAULT": 0.125, "MIN": 0, "MAX": 1},
        {"NAME": "radius", "TYPE": "float", "DEFAULT": 0.25, "MIN": 0, "MAX": 1},
        {"NAME": "doubled", "TYPE": "bool", "DEFAULT": 0},
        {"NAME": "smoothing", "TYPE": "bool", "DEFAULT": 1},
        {"NAME": "mono", "TYPE": "bool", "DEFAULT": 1},
        {"NAME": "stereo", "TYPE": "bool", "DEFAULT": 0},
        {"NAME": "circular", "TYPE": "bool", "DEFAULT": 0},
        {"NAME": "slots", "TYPE": "float", "DEFAULT": 7, "MIN": 1, "MAX": 8}
    ],
    "PASSES": [
        {"TARGET": "dataBuffer", "PERSISTENT": true, "WIDTH": 512, "HEIGHT": 1},
        {"TARGET": "renderWave", "WIDTH": 1024, "HEIGHT": 1},
        {}
    ],
    "ISFVSN": "2"
}*/

#define SAMPLER_TYPE int
#define SAMPLER_FNC(TEX, UV) IMG_NORM_PIXEL(renderWave, UV)

#include "darosh/draw/waveforms.glsl"

void main() {
    float iSlots = pow(2., floor(slots));

    if (PASSINDEX == 0) {
        vec2 uv = isf_FragNormCoord;
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
    else if (PASSINDEX == 1) {
        vec2 uv = isf_FragNormCoord;
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
    else {
        float scale = RENDERSIZE.x  / RENDERSIZE.y;

        gl_FragColor = drawWaveforms(
        mono, stereo, circular,
        smoothing, doubled, rotation, amplitude, thickness,
        separation, radius, scale);
    }
}
