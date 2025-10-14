/*{
    "CREDIT": "by darosh",
    "CATEGORIES": ["MIDI Visualizer"],
    "INPUTS": [
        {"NAME": "midiImage", "TYPE": "audio"},
        {"NAME": "minNote", "TYPE": "float", "DEFAULT": 21, "MIN": 0, "MAX": 127},
        {"NAME": "maxNote", "TYPE": "float", "DEFAULT": 108, "MIN": 0, "MAX": 127},
        {"NAME": "intensity", "TYPE": "float", "DEFAULT": 5, "MIN": 0, "MAX": 10},
        {"NAME": "channels", "TYPE": "float", "DEFAULT": 1, "MIN": 1, "MAX": 16},
        {"NAME": "paletteA", "TYPE": "color", "DEFAULT": [0.5, 0.5, 0.5, 1]},
        {"NAME": "paletteB", "TYPE": "color", "DEFAULT": [0.5, 0.5, 0.5, 1]},
        {"NAME": "paletteC", "TYPE": "color", "DEFAULT": [1, 1, 1, 1]},
        {"NAME": "paletteD", "TYPE": "color", "DEFAULT": [0, 0.33, 0.67, 1]}
    ],
    "ISFVSN": "2",
    "DESCRIPTION": "Cos palette MIDI stripes"
}*/

// Cosine palette function
vec3 cosPalette(float t, vec3 a, vec3 b, vec3 c, vec3 d) {
    return a + b * cos(6.28318 * (c * t + d));
}

void main() {
    vec2 uv = isf_FragNormCoord;

    // Map horizontal axis to MIDI note range
    float noteRange = maxNote - minNote;
    float currentNote = minNote + uv.x * noteRange;

    vec3 color = vec3(0.0);
    float maxIntensity = 0.0;
    float octaveValue = 0.0;

    // Sample multiple channels and accumulate
    for (int channel = 16 - int(channels); channel >= 0; channel--) {

        // Sample the MIDI data
        vec4 midiData = IMG_PIXEL(midiImage, vec2(int(currentNote) + .5, float(channel) + .5));
        float velocity = midiData.r;

        if (velocity > 0.) {
            // Calculate octave position (0-1 range, repeating per octave)
            octaveValue = mod(int(currentNote) / 12.0, 1.0);

            if (velocity > maxIntensity) {
                maxIntensity = velocity;
            }
        }
    }

    // Apply cosine palette based on octave
    if (maxIntensity > 0.) {
        vec3 paletteColor = cosPalette(
        octaveValue,
        paletteA.rgb,
        paletteB.rgb,
        paletteC.rgb,
        paletteD.rgb
        );

        color = paletteColor * min(maxIntensity * intensity, 1.);
    }

    gl_FragColor = vec4(color, 1.0);
}
