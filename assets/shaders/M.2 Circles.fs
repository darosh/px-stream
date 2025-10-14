/*{
    "CREDIT": "by darosh",
    "CATEGORIES": ["MIDI Visualizer"],
    "INPUTS": [
        {"NAME": "midiImage", "TYPE": "audio"},
        {"NAME": "maxPolyphony", "TYPE": "float", "MIN": 1.0, "MAX": 16.0, "DEFAULT": 4.0},
        {"NAME": "circleSharpness", "TYPE": "float", "MIN": 0.0, "MAX": 1.0, "DEFAULT": 0.8},
        {"NAME": "margin", "TYPE": "float", "MIN": 0.0, "MAX": 0.5, "DEFAULT": 0.2},
        {"NAME": "radius", "TYPE": "float", "MIN": 0.01, "MAX": 5, "DEFAULT": 1.0},
        {"NAME": "paletteA", "TYPE": "color", "DEFAULT": [0.5, 0.5, 0.5, 1.0]},
        {"NAME": "paletteB", "TYPE": "color", "DEFAULT": [0.5, 0.5, 0.5, 1.0]},
        {"NAME": "paletteC", "TYPE": "color", "DEFAULT": [1.0, 1.0, 1.0, 1.0]},
        {"NAME": "paletteD", "TYPE": "color", "DEFAULT": [0.0, 0.33, 0.67, 1.0]}
    ],
    "ISFVSN": "2",
    "DESCRIPTION": "Polyphonic voice visualization with dynamic slots"
}*/

// Cosine palette function
vec3 cosPalette(float t, vec3 a, vec3 b, vec3 c, vec3 d) {
    return a + b * cos(6.28318 * (c * t + d));
}

void main() {
    vec2 uv = isf_FragNormCoord;
    vec2 centeredUV = (uv - 0.5) * vec2(RENDERSIZE.x / RENDERSIZE.y, 1.0);

    int maxPoly = int(maxPolyphony);

    // Find highest active voice
    int highestVoice = int(IMG_PIXEL(midiImage, vec2(0.5)).b * 127.);
    
    highestVoice = highestVoice > maxPoly ? maxPoly : highestVoice;
    highestVoice--;

    // Calculate slot width based on maxPolyphony (not current voices)
    float totalMargin = margin * 2.0;// left + right margin
    float availableWidth = (RENDERSIZE.x / RENDERSIZE.y) * (1.0 - totalMargin);
    float slotWidth = availableWidth / float(maxPoly);
    float circleRadius = slotWidth * radius;// Leave some space between circles

    vec3 color = vec3(0.0);

    // Only draw if we have active voices
    if (highestVoice >= 0) {
        int activeSlots = highestVoice + 1;

        // Calculate actual width needed for active slots
        float activeWidth = slotWidth * float(activeSlots);
        float startX = -activeWidth * 0.5;

        
        // Draw each active slot
        for (int v = 0; v <= highestVoice; v++) {
            // Calculate circle center position
            float centerX = startX + slotWidth * (float(v) + 0.5);
            float centerY = 0.0;
            vec2 circleCenter = vec2(centerX, centerY);

            // Distance to circle center
            float dist = length(centeredUV - circleCenter);

            // Sample voice data
            vec2 sampleUV = vec2(float(v + 1) +.5, .5);
            float noteValue = IMG_PIXEL(midiImage, sampleUV).b * 127.0;

            if (noteValue > 0.) {
                // Calculate octave position for palette
                float octaveValue = mod(noteValue / 12.0, 1.0);

                // Get color from palette
                vec3 paletteColor = cosPalette(
                octaveValue,
                paletteA.rgb,
                paletteB.rgb,
                paletteC.rgb,
                paletteD.rgb
                );

                // Create circle with smooth edge
                float circleMask = 1.0 - smoothstep(
                circleRadius * (1.0 - circleSharpness),
                circleRadius * (1.0 + circleSharpness * 0.5),
                dist
                );

                color += paletteColor * circleMask;
            }
        }
    }

    gl_FragColor = vec4(color, 1.0);
}
