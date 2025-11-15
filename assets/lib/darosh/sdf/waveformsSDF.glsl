#ifndef FNC_WAVEFORMSSDF
#define FNC_WAVEFORMSSDF

#include "../../lygia/sampler.glsl"
#include "../../lygia/math/const.glsl"
#include "../../lygia/sdf/lineSDF.glsl"

vec4 doubleWrap(SAMPLER_TYPE tex, float x) {
    return SAMPLER_FNC(tex, vec2(abs(x * 2.0 - 1.0), 0.0));
}

float singleWaveform(SAMPLER_TYPE audioTexture, vec2 uv, float amplitude) {
    if (uv.x < 0. || uv.x > 1.) {
        return 1.;
    }
    
    // Sample audio at this X position
    vec4 audioValueTex = SAMPLER_FNC(audioTexture, vec2(uv.x, 0.0));
    float audioValue = (audioValueTex.r + audioValueTex.g - 1.) / 2.;

    // Calculate waveform Y position
    float waveY = 0.5 + audioValue * amplitude;

    // Distance from current pixel to waveform
    float dist = abs(uv.y - waveY);

    return dist;
}

float singleWaveformSmooth(SAMPLER_TYPE audioTexture, vec2 uv, float px, float amplitude) {
    if (uv.x < 0. || uv.x > 1.) {
        return 1.;
    }

    vec4 audioCenterTex = SAMPLER_FNC(audioTexture, vec2(uv.x, 0.0));
    vec4 audioPrevTex = SAMPLER_FNC(audioTexture, vec2(uv.x - px, 0.0));
    vec4 audioNextTex = SAMPLER_FNC(audioTexture, vec2(uv.x + px, 0.0));

    float audioCenter = (audioCenterTex.r + audioCenterTex.g - 1.) / 2;
    float audioPrev = (audioPrevTex.r + audioPrevTex.g - 1.) / 2;
    float audioNext = (audioNextTex.r + audioNextTex.g - 1.) / 2;

    // Calculate wave positions
    float yCenter = 0.5 + audioCenter * amplitude;
    float yPrev = 0.5 + audioPrev * amplitude;
    float yNext = 0.5 + audioNext * amplitude;

    // Create line segment positions
    vec2 prevPoint = vec2(uv.x - px, yPrev);
    vec2 centerPoint = vec2(uv.x, yCenter);
    vec2 nextPoint = vec2(uv.x + px, yNext);

    // Distance to line segments
    float distLeft = lineSDF(uv, prevPoint, centerPoint);
    float distRight = lineSDF(uv, centerPoint, nextPoint);
    float dist = min(distLeft, distRight);

    return dist;
}

float stereoWaveform(SAMPLER_TYPE audioTexture, vec2 uv, float px, float amplitude, float separation) {
    if (uv.x < 0. || uv.x > 1.) {
        return 1.;
    }

    vec4 audioTex = SAMPLER_FNC(audioTexture, vec2(uv.x, 0.0));

    float audioLeft = audioTex.r - 0.5;
    float yLeft = (0.5 + separation) + audioLeft * amplitude;
    float distLeft = abs(uv.y - yLeft);

    float audioRight = audioTex.g - 0.5;
    float yRight = (0.5 - separation) + audioRight * amplitude;
    float distRight = abs(uv.y - yRight);

    return min(distLeft, distRight);
}

float stereoWaveformSmooth(SAMPLER_TYPE audioTexture, vec2 uv, float px, float amplitude, float separation) {
    if (uv.x < 0. || uv.x > 1.) {
        return 1.;
    }

    vec4 audioTex = SAMPLER_FNC(audioTexture, vec2(uv.x, 0.0));
    vec4 audioPrevTex = SAMPLER_FNC(audioTexture, vec2(uv.x - px, 0.0));
    vec4 audioNextTex = SAMPLER_FNC(audioTexture, vec2(uv.x + px, 0.0));

    float audioLeft = audioTex.r - 0.5;
    float audioLeftPrev = audioPrevTex.r - 0.5;
    float audioLeftNext = audioNextTex.r - 0.5;

    float yLeft = (0.5 + separation) + audioLeft * amplitude;
    float yLeftPrev = (0.5 + separation) + audioLeftPrev * amplitude;
    float yLeftNext = (0.5 + separation) + audioLeftNext * amplitude;

    vec2 leftA = vec2(uv.x - px, yLeftPrev);
    vec2 leftB = vec2(uv.x, yLeft);
    vec2 leftC = vec2(uv.x + px, yLeftNext);

    float distLeft = min(
    lineSDF(uv, leftA, leftB),
    lineSDF(uv, leftB, leftC)
    );

    float audioRight = audioTex.g - 0.5;
    float audioRightPrev = audioPrevTex.g - 0.5;
    float audioRightNext = audioNextTex.g - 0.5;

    float yRight = (0.5 - separation) + audioRight * amplitude;
    float yRightPrev = (0.5 - separation) + audioRightPrev * amplitude;
    float yRightNext = (0.5 - separation) + audioRightNext * amplitude;

    vec2 rightA = vec2(uv.x - px, yRightPrev);
    vec2 rightB = vec2(uv.x, yRight);
    vec2 rightC = vec2(uv.x + px, yRightNext);

    float distRight = min(
    lineSDF(uv, rightA, rightB),
    lineSDF(uv, rightB, rightC)
    );

    return min(distLeft, distRight);
}

float circularWaveform(SAMPLER_TYPE audioTexture, vec2 uv,
float amplitude, float radius, bool doubled) {
    vec2 center = vec2(0.5, 0.5);
    vec2 toPixel = uv - center;

    // Convert to polar coordinates
    float angle = atan(toPixel.y, toPixel.x);
    float dist = length(toPixel);

    // Normalize angle to 0-1 for audio sampling
    float angleSample = fract((angle + PI) / TAU);

    // Sample audio at this angle
    vec4 audioValueTex = doubled 
    ? doubleWrap(audioTexture, angleSample)
    : SAMPLER_FNC(audioTexture, vec2(angleSample, 0.0));
    
    float audioValue = (audioValueTex.r + audioValueTex.g - 1.) / 2.;

    // Calculate ideal radius for waveform at this angle
    float waveRadius = radius + audioValue * amplitude;

    // Distance from pixel to waveform circle
    float distToWave = abs(dist - waveRadius);

    return distToWave;
}

float circularWaveformSmooth(SAMPLER_TYPE audioTexture, vec2 uv, float px,
float amplitude, float radius, bool doubled) {
    vec2 center = vec2(0.5, 0.5);
    vec2 toPixel = uv - center;

    float angle = atan(toPixel.y, toPixel.x);
    float angleSample = fract((angle + PI) / TAU);

    vec4 audioCurrentTex, audioPrevTex, audioNextTex;

    if (doubled) {
        audioCurrentTex = doubleWrap(audioTexture, angleSample);
        audioPrevTex = doubleWrap(audioTexture, angleSample - px);
        audioNextTex = doubleWrap(audioTexture, angleSample + px);
    } else {
        audioCurrentTex = SAMPLER_FNC(audioTexture, vec2(angleSample, 0.0));
        audioPrevTex = SAMPLER_FNC(audioTexture, vec2(angleSample - px, 0.0));
        audioNextTex = SAMPLER_FNC(audioTexture, vec2(angleSample + px, 0.0));
    }

    float audioCurrent = (audioCurrentTex.r + audioCurrentTex.g - 1.) / 2.;
    float audioPrev = (audioPrevTex.r + audioPrevTex.g - 1.) / 2.;
    float audioNext = (audioNextTex.r + audioNextTex.g - 1.) / 2.;

    float rCurrent = radius + audioCurrent * amplitude;
    float rPrev = radius + audioPrev * amplitude;
    float rNext = radius + audioNext * amplitude;

    // Convert back to cartesian for line segment
    float angleStep = px * TAU;

    vec2 pointCurrent = center + vec2(cos(angle), sin(angle)) * rCurrent;
    vec2 pointPrev = center + vec2(cos(angle - angleStep), sin(angle - angleStep)) * rPrev;
    vec2 pointNext = center + vec2(cos(angle + angleStep), sin(angle + angleStep)) * rNext;

    // Distance to line segments
    float distPrev = lineSDF(uv, pointPrev, pointCurrent);
    float distNext = lineSDF(uv, pointCurrent, pointNext);
    float dist = min(distPrev, distNext);

    return dist;
}

#endif
