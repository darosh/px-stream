/*{
    "CREDIT": "by darosh",
    "CATEGORIES": ["MIDI Visualizer"],
    "INPUTS": [
        {"NAME": "midiImage", "TYPE": "audio"},
        {"NAME": "margin", "TYPE": "float", "DEFAULT": 0.1, "MIN": 0, "MAX": 0.5}
    ],
    "ISFVSN": "2",
    "DESCRIPTION": "4x4 finger drumming pad visualization"
}*/

#include "lygia/draw/fill.glsl"
#include "lygia/space/ratio.glsl"
#include "lygia/sdf/circleSDF.glsl"

float getPadActivity(float padIndex) {
    float targetNote = 36.0 + padIndex;
    float maxVel = 0.0;
    vec4 midiData = IMG_PIXEL(midiImage, vec2(targetNote + .5, .5));
    
    return midiData.r;
}

void main() {
    vec2 st = gl_FragCoord.xy / RENDERSIZE.xy;
    st = ratio(st, RENDERSIZE);

    // Grid setup
    float gridSize = 4.0;
    float cellSize = 1.0 / gridSize;

    vec3 color = vec3(0.1);

    // Loop through each pad position
    for (float row = 0.0; row < gridSize; row += 1.0) {
        for (float col = 0.0; col < gridSize; col += 1.0) {
            // Calculate pad center
            vec2 padCenter = vec2(
            (col + .5) * cellSize - .5,
            (row + .5) * cellSize - .5
            );

            // Distance from current pixel to pad center
            float d = circleSDF(st - padCenter);

            // Radius of each pad (with margin)
            float radius = cellSize * 0.5 * (1.0 - margin);

            // Fill the circle
            float circle = fill(d, radius);

            // Get activity (dummy - always on)
            float padIndex = col + row * gridSize;
            float activity = getPadActivity(padIndex);

            activity = activity > .0 ? 1. : 0;
            
            // Color the pad
            vec3 padColor = vec3(0.2, 0.6, 1.0) * activity;
            color = mix(color, padColor, circle);
        }
    }

    gl_FragColor = vec4(color, 1.0);
}
