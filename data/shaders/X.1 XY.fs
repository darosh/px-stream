/*{
    "CREDIT": "by darosh",
    "CATEGORIES": ["Audio Reactive"],
    "INPUTS": [
        {"NAME": "xyImage", "TYPE": "audio"},
        {"NAME": "glowIntensity", "TYPE": "float", "DEFAULT": 3, "MIN": 0, "MAX": 5},
        {"NAME": "glowRadius", "TYPE": "float", "DEFAULT": 0.01, "MIN": 0.001, "MAX": 10},
        {"NAME": "fadeRate", "TYPE": "float", "DEFAULT": 0.92, "MIN": 0, "MAX": 1},
        {"NAME": "brightness", "TYPE": "float", "DEFAULT": 1.5, "MIN": 0.1, "MAX": 3}
    ],
    "PASSES": [{"TARGET": "buff", "PERSISTENT": true, "FLOAT": true, "WIDTH": 512, "HEIGHT": 512}, {}],
    "ISFVSN": "2",
    "DESCRIPTION": "XY Oscilloscope, points"
}*/

// Distance-based glow function
float glowFunction(float dist, float radius, float intensity) {
    // Exponential falloff for realistic glow
    return intensity * exp(-dist * dist / (radius * radius));
}

// Enhanced smoothstep for softer transitions
float smoothGlow(float dist, float radius) {
    float normalized = dist / radius;
    return 1.0 - smoothstep(0.0, 1.0, normalized);
}

void main() {
    vec2 uv = isf_FragNormCoord;
    uv.x = (uv.x - 0.5) * (RENDERSIZE.x / RENDERSIZE.y) + .5;

    if(PASSINDEX == 0) {
        // Persistence buffer update
        vec3 old = (uv.x >= 0. && uv.x <= 1.) ? vec3(IMG_NORM_PIXEL(buff, uv).r) : vec3(0);
        vec3 newSignal = (uv.x >= 0. && uv.x <= 1.) ? vec3(IMG_NORM_PIXEL(xyImage, uv).r) : vec3(0);

        // Add glow effect by sampling nearby pixels
        vec3 glow = vec3(0.0);
        float totalWeight = 0.0;

        float range = 2.;
        // Sample in a small radius around current pixel for bloom
        for(float x = -range; x <= range; x += 1.0) {
            for(float y = -range; y <= range; y += 1.0) {
                vec2 offset = vec2(x, y) / RENDERSIZE;
                vec2 sampleUV = uv + offset;

                if(sampleUV.x >= 0. && sampleUV.x <= 1. && sampleUV.y >= 0. && sampleUV.y <= 1.) {
                    float dist = length(offset);
                    float weight = glowFunction(dist, glowRadius, 1.0);

                    vec3 sample = vec3(IMG_NORM_PIXEL(xyImage, sampleUV).r);
                    glow += sample * weight;
                    totalWeight += weight;
                }
            }
        }

        if(totalWeight > 0.0) {
            glow /= totalWeight;
        }

        // Combine original signal with glow
        vec3 enhanced = newSignal * brightness + glow * glowIntensity;
        // vec3 enhanced = newSignal * brightness;

        // Persistence with maximum preservation
        vec3 result = max(enhanced, old * fadeRate);

        gl_FragColor = vec4(result, 1.0);
    } else if(PASSINDEX == 1) {
        // Final output with additional screen effects
        vec3 color = (uv.x >= 0. && uv.x <= 1.) ? vec3(IMG_NORM_PIXEL(buff, uv).r) : vec3(0);

        // CRT-style color temperature (slight green tint like old phosphor)
        vec3 phosphorColor = color.r > .5 ? vec3(0.8, 1.0, 0.7) : vec3(0.4, 0.8, 0.3);
        color *= phosphorColor;

        // Subtle vignette for CRT feel
        float vignette = 1.0 - length(uv - 0.5) * 0.9;
        vignette = smoothstep(0.3, 1.0, vignette);

        // Brightness curve for more realistic CRT response
        color = pow(color, vec3(.9));

        gl_FragColor = vec4(color * vignette, 1.0);
    }
}
