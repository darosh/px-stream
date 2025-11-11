/*{
    "CREDIT": "by darosh",
    "CATEGORIES": ["MIDI Visualizer"],
    "INPUTS": [
        {"NAME": "midiImage", "TYPE": "audio"},
        {"NAME": "grid", "TYPE": "float", "DEFAULT": 4, "MIN": 2, "MAX": 8},
        {"NAME": "type", "TYPE": "float", "DEFAULT": 0, "MIN": 0, "MAX": 6},
        {"NAME": "margin", "TYPE": "float", "DEFAULT": 0.1, "MIN": 0, "MAX": 1},
        {"NAME": "edge", "TYPE": "float", "DEFAULT": 0, "MIN": 0, "MAX": 0.5},
        {"NAME": "brightness", "TYPE": "float", "DEFAULT": 0.25, "MIN": 0, "MAX": 1},
        {"NAME": "glow", "TYPE": "bool", "DEFAULT": 0},
        {"NAME": "N", "TYPE": "float", "DEFAULT": 7, "MIN": 2, "MAX": 12},
        {"NAME": "note", "TYPE": "float", "DEFAULT": 36, "MIN": 0, "MAX": 127},
        {"NAME": "rotation", "TYPE": "float", "DEFAULT": 0, "MIN": 0, "MAX": 2}
    ],
    "ISFVSN": "2",
    "DESCRIPTION": "4x4 finger drumming pad visualization"
}*/

#include "lygia/draw/fill.glsl"

#include "lygia/space/ratio.glsl"
#include "lygia/space/rotate.glsl"

#include "lygia/sdf/circleSDF.glsl"
#include "lygia/sdf/rectSDF.glsl"
#include "lygia/sdf/starSDF.glsl"
#include "lygia/sdf/flowerSDF.glsl"
#include "lygia/sdf/heartSDF.glsl"

#include "darosh/sdf/teddySDF.glsl"

float getPadActivity(float padIndex) {
    float targetNote = note + padIndex;
    float maxVel = 0.0;
    vec4 midiData = IMG_PIXEL(midiImage, vec2(targetNote + .5, .5));

    return midiData.r;
}

void main() {
    vec2 st = gl_FragCoord.xy / RENDERSIZE.xy;
    st = ratio(st, RENDERSIZE);

    st *= 1 + margin;
    st -= margin / 2;

    float gridSize = round(grid);
    vec3 color = vec3(0);
    vec2 gridSpace = st * gridSize;
    vec2 cellIndex = floor(gridSpace);

    if (cellIndex.x < 0.0 || cellIndex.x >= gridSize || cellIndex.y < 0.0 || cellIndex.y >= gridSize) {
        gl_FragColor = vec4(0);

        return;
    }

    float padIndex = cellIndex.x + cellIndex.y * gridSize;
    float activity = getPadActivity(padIndex);

    vec2 cellLocal = fract(gridSpace);
    float d, radius;

    if (rotation > 0) {
        cellLocal = rotate(cellLocal, rotation * ((mod(padIndex, 2) == 0 ? -1 : 1) * TIME * rotation * 1.4 + padIndex));
    }
    
    if (activity == 0) {
        d = 0;
        radius = 0;
    } else if (type < 1) {
        d = circleSDF(cellLocal);
        radius = 1 * (1.0 - margin);
    } else if (type < 2) {
        d = rectSDF(cellLocal);
        radius = 1 * (1.0 - margin);
    } else if (type < 3) {
        d = starSDF(cellLocal, int(N));
        radius = 1 * (0.75 - margin);
    } else if (type < 4) {
        d = flowerSDF(cellLocal, int(N));
        radius = 1 * (0.75 - margin);
    } else if (type < 5) {
        d = heartSDF(cellLocal);
        radius = 1 * (0.75 - margin);
    } else {
        d = teddySDF(cellLocal / (1.25 - margin));
        radius = .5;
    }

    float shape = edge > 0. ? fill(d, radius, edge) : fill(d, radius);
    activity = activity > 0. ? mix(brightness, 1.0, activity) : 0.;
    vec3 padColor = vec3(1.) * activity;

    if (glow && (activity > 0)) {
        float sdfEyes = teddyEyesSDF(cellLocal / (1.25 - margin));
        padColor.rgb = mix(padColor.rgb, vec3(2, 0, 0), fill(sdfEyes, 0.01, 1));
    }

    color = mix(color, padColor, shape);

    gl_FragColor = vec4(color, 1.0);
}
