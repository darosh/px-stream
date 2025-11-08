#include "lygia/sdf/circleSDF.glsl"
#include "lygia/sdf/hexSDF.glsl"
#include "lygia/color/palette/hue.glsl"
#include "lygia/sdf/starSDF.glsl"

void main() {
    vec2 uv = (FC.xy - vec2((r.x - r.y) / 2., 0.)) / r.y;

    // Audio reactivity from m.x (bass) and m.y (treble)
    float bass = m.x * 1.5;
    float treble = m.y * 2.0;

    // Create multiple layers of shapes
    float d = 1e10;
    vec3 color = vec3(0.0);

    // Rotating hex grid reacting to bass
    for (float i = 0.0; i < 6.0; i++) {
        float angle = t * 0.5 + i * 3.14159 / 3.0;
        vec2 offset = vec2(cos(angle), sin(angle)) * (0.3 + bass * 0.2);
        float hex = hexSDF(uv + offset);
        hex = abs(hex) - 0.1 - bass * 0.05;
        d = min(d, hex);

        // Color based on position and treble
        vec3 hueColor = hue(fract(i / 6.0 + t * 0.2 + treble * 0.3));
        color += hueColor * smoothstep(0.02 + treble / 15., treble / 20., hex) * (1.0 + treble);
    }

    // Outer circles reacting to treble
    float outerCircle = circleSDF(uv) - (0.8 + treble * 0.3);
    outerCircle = abs(outerCircle);
    color += vec3(0.3, 0.6, 0.9) * smoothstep(0.5, 0.0, outerCircle) * treble;

    // Glow effect
    color += vec3(0.1, 0.2, 0.3) * exp(-d * 10.0) * (bass + treble);

    o = vec4(tanh(color), 1.0);
}
