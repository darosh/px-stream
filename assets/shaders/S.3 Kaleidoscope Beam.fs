/*{
    "CREDIT": "by jshguo",
    "CATEGORIES": ["Scene"],
    "INPUTS": [
        {"NAME": "SPEED", "TYPE": "float", "DEFAULT": 1, "MIN": 0, "MAX": 10},
        {"NAME": "OFFSET", "TYPE": "float", "DEFAULT": 0, "MIN": 0, "MAX": 10},
        {"NAME": "mirrors", "TYPE": "float", "DEFAULT": 3, "MIN": 1, "MAX": 25},
        {"NAME": "noiseStrength", "TYPE": "float", "DEFAULT": 0.5, "MIN": 0, "MAX": 2.5},
        {"NAME": "distortionStrength", "TYPE": "float", "DEFAULT": 0.25, "MIN": 0, "MAX": 2.5}
    ],
    "ISFVSN": "2",
    "DESCRIPTION": "Adapted from https://www.shadertoy.com/view/t3SfW1"
}*/

// -----------------------------------------------------------------------------
//  Author: Joshua Guo - https://x.com/jshguo
//
//  Licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0
//  International License (CC BY-NC-SA 4.0). You must give appropriate credit,
//  provide a link to the license, indicate if changes were made, and you may not
//  use the material for commercial purposes. If you remix, transform, or build
//  upon this material, you must distribute your contributions under the same
//  license.
//  License: https://creativecommons.org/licenses/by-nc-sa/4.0/
// -----------------------------------------------------------------------------

const float PI = 3.14159265359;

float snoise(vec2 v) {
    return fract(sin(dot(v, vec2(12.9898, 78.233))) * 43758.5453123);
}

void main() {
    vec2 p = (2.0 * gl_FragCoord.xy - RENDERSIZE.xy) / RENDERSIZE.y;
    
    float angle = atan(p.y, p.x);
    float radius = length(p);

    float symmetricDistort =
    sin(angle * 6.0 + (TIME * SPEED + OFFSET)) * 0.05 +
    cos(radius * 8.0 - (TIME * SPEED + OFFSET)) * 0.05;

    float newAngle = angle + symmetricDistort * distortionStrength * 10.0;
    p = vec2(cos(newAngle), sin(newAngle)) * radius;

    radius = length(p);
    angle = atan(p.y, p.x);
    float normalizedAngle = 0.0;
    float mirrorStrength = 1.0;

    if (mirrors >= 1.0) {
        float sectorAngle = 2.0 * PI / mirrors;
        float wrappedAngle = mod(angle, 2.0 * PI);
        float rawAngle = mod(wrappedAngle, sectorAngle);
        float mirroredAngle = rawAngle > sectorAngle * 0.5 ? sectorAngle - rawAngle : rawAngle;
        normalizedAngle = mirroredAngle / (sectorAngle * 0.5 + 1e-5);

        p = radius * vec2(cos(mirroredAngle), sin(mirroredAngle));

        float angleMask = pow(abs(cos(normalizedAngle * PI)), 3.0);
        mirrorStrength = mix(0.5, 2.5, angleMask);
    } else {
        normalizedAngle = mod(angle, 2.0 * PI) / (2.0 * PI);
    }

    radius = length(p);

    vec2 uv = vec2(0.0, radius);
    uv = (2.0 * uv) - 1.0;

    float noise = snoise(p + (TIME * SPEED + OFFSET) * 0.1) * noiseStrength;
    float beamWidth = abs(5.0 / (30.0 * uv.y)) + noise;
    beamWidth *= mirrorStrength;

    vec3 color = vec3(beamWidth);
    gl_FragColor = vec4(color, 1.0);
}
