#ifndef FNC_DRAWWAVEFORMS
#define FNC_DRAWWAVEFORMS

#include "../../lygia/space/aspect.glsl"
#include "../../lygia/space/center.glsl"
#include "../../lygia/space/uncenter.glsl"
#include "../../lygia/space/rotate.glsl"
#include "../../lygia/draw/fill.glsl"

#include "../../darosh/sdf/waveformsSDF.glsl"

vec4 drawWaveforms(
bool mono,
bool stereo,
bool circular,
bool smoothing,
bool doubled,
float rotation,
float amplitude,
float thickness,
float separation,
float radius,
float scale
) {
    float px = 1. / max(RENDERSIZE.x, RENDERSIZE.y);

    vec2 uv = isf_FragNormCoord;
    vec4 color = vec4(0., 0., 0., 1.);
    float rotation_t = rotation * TIME;

    vec2 uvA = center(uv);
    uvA = aspect(uvA, RENDERSIZE.xy);
    uvA = uncenter(uvA);
    uvA = rotate(uvA, rotation_t);
    
    vec2 uvB = center(uv);
    uvB = aspect(uvB, RENDERSIZE.xy);
    uvB /= scale;
    uvB = uncenter(uvB);
    uvB = rotate(uvB, rotation_t);

    float v = 1.;

    if (mono) {
        v = min(v, smoothing
        ? singleWaveformSmooth(0, uvB, px, amplitude)
        : singleWaveform(0, uvB, amplitude));
    }

    if (stereo) {
        v = min(v, smoothing
        ? stereoWaveformSmooth(0, uvB, px, amplitude, separation)
        : stereoWaveform(0, uvB, px, amplitude, separation));
    }

    if (circular) {
        v = min(v, smoothing
        ? circularWaveformSmooth(0, uvA, px, amplitude * scale, radius, doubled)  / scale
        : circularWaveform(0, uvA, amplitude * scale, radius, doubled)) / scale;
    }

    color += fill(v, px * thickness, px / 2.);

    return color;
}
#endif
