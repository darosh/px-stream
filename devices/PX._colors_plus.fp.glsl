varying vec2 texcoord0;
uniform sampler2DRect tex0;

uniform float brightness;
uniform float contrast;
uniform float exposure;
uniform float saturation;
uniform float temperature;
uniform float tint;

uniform float red_gain;
uniform float green_gain;
uniform float blue_gain;
uniform float red_lift;
uniform float green_lift;
uniform float blue_lift;
uniform float red_gamma;
uniform float green_gamma;
uniform float blue_gamma;

// Color wheel parameters
uniform float dark_hue, dark_sat, dark_lum;
uniform float shadow_hue, shadow_sat, shadow_lum;
uniform float light_hue, light_sat, light_lum;
uniform float global_hue, global_sat, global_lum;

const float EPSILON = 0.001;
const float PI = 3.14159265359;

// RGB to HSV conversion
vec3 rgb2hsv(vec3 c) {
    vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
    vec4 p = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));
    vec4 q = mix(vec4(p.xyw, c.r), vec4(c.r, p.yzx), step(p.x, c.r));

    float d = q.x - min(q.w, q.y);
    float e = 1.0e-10;
    return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
}

// HSV to RGB conversion
vec3 hsv2rgb(vec3 c) {
    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}

// Convert hue/sat wheel position to RGB offset
vec3 wheelToRGB(float hue, float sat, float lum) {
    if (abs(hue) < EPSILON && abs(sat) < EPSILON && abs(lum) < EPSILON) {
        return vec3(0.0);
    }

    // Convert polar coordinates to RGB offset
    float angle = hue * 2.0 * PI;
    float magnitude = sat * 0.5; // Scale saturation influence

    vec3 offset = vec3(
    cos(angle) * magnitude,
    cos(angle + 2.094395) * magnitude, // 120 degrees offset
    cos(angle + 4.188790) * magnitude  // 240 degrees offset
    );

    // Add luminance adjustment
    offset += vec3(lum * 0.3);

    return offset;
}

// Luminance-based range masks for color wheels
vec4 getRangeMasks(float luma) {
    // Smooth transitions between ranges
    float dark_mask = smoothstep(0.3, 0.0, luma);       // Shadows/Dark
    float shadow_mask = smoothstep(0.0, 0.4, luma) * smoothstep(0.7, 0.3, luma); // Lower mids
    float light_mask = smoothstep(0.3, 0.7, luma) * smoothstep(1.0, 0.6, luma);  // Upper mids  
    float global_mask = smoothstep(0.6, 1.0, luma);     // Highlights/Global

    return vec4(dark_mask, shadow_mask, light_mask, global_mask);
}

// White balance transformation
mat3 temperatureMatrix(float temp) {
    float t = temp * 0.01;
    return mat3(
    1.0 + t * 0.3, 0.0, 0.0,
    0.0, 1.0, 0.0,
    0.0, 0.0, 1.0 - t * 0.3
    );
}

mat3 tintMatrix(float tnt) {
    float t = tnt * 0.01;
    return mat3(
    1.0, 0.0, 0.0,
    0.0, 1.0 + t * 0.3, 0.0,
    0.0, 0.0, 1.0 - t * 0.3
    );
}

vec3 adjustContrast(vec3 color, float contrast) {
    return (color - 0.5) * contrast + 0.5;
}

// Lift Gamma Gain color correction
vec3 liftGammaGain(vec3 color, vec3 lift, vec3 gamma, vec3 gain) {
    // Lift (shadows)
    color = color + lift * (1.0 - color);

    // Gamma (midtones)
    color = pow(max(color, 0.0), 1.0 / gamma);

    // Gain (highlights)
    color = color * gain;

    return color;
}

void main(void) {
    vec4 texColor = texture2DRect(tex0, texcoord0);
    vec3 rgb = texColor.rgb;

    // Early exit optimization - skip processing if all values are default
    /*
    bool needsProcessing = abs(brightness) > EPSILON || 
                          abs(contrast - 1.0) > EPSILON || 
                          abs(exposure) > EPSILON || 
                          abs(saturation - 1.0) > EPSILON ||
                          abs(temperature) > EPSILON || 
                          abs(tint) > EPSILON ||
                          abs(dark_hue) > EPSILON || abs(dark_sat) > EPSILON || abs(dark_lum) > EPSILON ||
                          abs(shadow_hue) > EPSILON || abs(shadow_sat) > EPSILON || abs(shadow_lum) > EPSILON ||
                          abs(light_hue) > EPSILON || abs(light_sat) > EPSILON || abs(light_lum) > EPSILON ||
                          abs(global_hue) > EPSILON || abs(global_sat) > EPSILON || abs(global_lum) > EPSILON;
    
    if (!needsProcessing) {
        gl_FragColor = texColor;
        return;
    }
    */

    // 1. Exposure (skip if default)
    if (abs(exposure) > EPSILON) {
        rgb *= pow(2.0, exposure);
    }

    // 2. Brightness (skip if default)
    if (abs(brightness) > EPSILON) {
        rgb += brightness;
    }

    // 3. Contrast (skip if default)
    if (abs(contrast - 1.0) > EPSILON) {
        rgb = adjustContrast(rgb, contrast);
    }

    // 4. White Balance (skip if default)
    if (abs(temperature) > EPSILON) {
        rgb = temperatureMatrix(temperature) * rgb;
    }
    if (abs(tint) > EPSILON) {
        rgb = tintMatrix(tint) * rgb;
    }

    // 5. Color Wheels (DaVinci-style)
    /*
    bool hasColorWheelAdjustments = abs(dark_hue) > EPSILON || abs(dark_sat) > EPSILON || abs(dark_lum) > EPSILON ||
                                   abs(shadow_hue) > EPSILON || abs(shadow_sat) > EPSILON || abs(shadow_lum) > EPSILON ||
                                   abs(light_hue) > EPSILON || abs(light_sat) > EPSILON || abs(light_lum) > EPSILON ||
                                   abs(global_hue) > EPSILON || abs(global_sat) > EPSILON || abs(global_lum) > EPSILON;
    
    */
    //if (hasColorWheelAdjustments) {
    float luma = dot(rgb, vec3(0.299, 0.587, 0.114)); // Rec.709 luminance
    vec4 masks = getRangeMasks(luma);

    // 6. Lift Gamma Gain per channel (DaVinci-style)
    vec3 lift = vec3(red_lift, green_lift, blue_lift);
    vec3 gamma = vec3(red_gamma, green_gamma, blue_gamma);
    vec3 gain = vec3(red_gain, green_gain, blue_gain);
    rgb = liftGammaGain(rgb, lift, gamma, gain);

    // Apply color wheel adjustments
    vec3 dark_offset = wheelToRGB(dark_hue, dark_sat, dark_lum);
    vec3 shadow_offset = wheelToRGB(shadow_hue, shadow_sat, shadow_lum);
    vec3 light_offset = wheelToRGB(light_hue, light_sat, light_lum);
    vec3 global_offset = wheelToRGB(global_hue, global_sat, global_lum);

    rgb += dark_offset * masks.x +
    shadow_offset * masks.y +
    light_offset * masks.z +
    global_offset * masks.w;
    //}

    // 6. Saturation (skip if default)
    if (abs(saturation - 1.0) > EPSILON) {
        vec3 hsv = rgb2hsv(rgb);
        hsv.y *= saturation;
        rgb = hsv2rgb(hsv);
    }

    //rgb.r *= 2.;

    // Clamp to valid range
    rgb = clamp(rgb, 0.0, 1.0);

    gl_FragColor = vec4(rgb, texColor.a);
}
