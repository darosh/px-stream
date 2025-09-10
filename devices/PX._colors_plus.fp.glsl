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

/*
GLOBAL CONTROLS:
- global_hue_shift: -0.5 to 0.5 (-180° to +180°)
- global_sat_mult: 0.0 to 3.0 (0% to 300%)
- global_lum_offset: -0.5 to 0.5 (-50% to +50%)

COLOR RANGE CONTROLS (same for all 6 ranges):
- *_hue_shift: -0.5 to 0.5 (-180° to +180°)
- *_sat_mult: 0.0 to 3.0 (0% to 300%)
- *_lum_offset: -0.5 to 0.5 (-50% to +50%)
*/
uniform float global_hue_shift;
uniform float global_sat_mult;
uniform float global_lum_offset;

uniform float red_hue_shift, red_sat_mult, red_lum_offset;
uniform float yellow_hue_shift, yellow_sat_mult, yellow_lum_offset;
uniform float green_hue_shift, green_sat_mult, green_lum_offset;
uniform float cyan_hue_shift, cyan_sat_mult, cyan_lum_offset;
uniform float blue_hue_shift, blue_sat_mult, blue_lum_offset;
uniform float magenta_hue_shift, magenta_sat_mult, magenta_lum_offset;

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
    float magnitude = sat * 0.5;// Scale saturation influence

    vec3 offset = vec3(
    cos(angle) * magnitude,
    cos(angle + 2.094395) * magnitude, // 120 degrees offset
    cos(angle + 4.188790) * magnitude// 240 degrees offset
    );

    // Add luminance adjustment
    offset += vec3(lum * 0.3);

    return offset;
}

// Luminance-based range masks for color wheels
vec4 getRangeMasks(float luma) {
    // Smooth transitions between ranges
    float dark_mask = smoothstep(0.3, 0.0, luma);// Shadows/Dark
    float shadow_mask = smoothstep(0.0, 0.4, luma) * smoothstep(0.7, 0.3, luma);// Lower mids
    float light_mask = smoothstep(0.3, 0.7, luma) * smoothstep(1.0, 0.6, luma);// Upper mids  
    float global_mask = smoothstep(0.6, 1.0, luma);// Highlights/Global

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

// Smooth hue range mask - returns weight for a color range
float getHueRangeMask(float hue, float center, float width) {
    float range = width * 0.5;
    float dist = abs(hue - center);

    // Handle hue wrap-around (0° = 360°)
    if (dist > 0.5) {
        dist = 1.0 - dist;
    }

    // Smooth falloff
    return smoothstep(range + 0.1, range - 0.1, dist);
}

// Apply HSL adjustments to a specific color range
vec3 applyColorRangeAdjustment(vec3 hsv, float hue_shift, float sat_mult, float lum_offset, float mask) {
    if (mask < 0.001) return hsv;// Skip if no influence

    vec3 adjusted = hsv;

    // Apply hue shift with wrap-around
    adjusted.x = fract(adjusted.x + hue_shift * mask);

    // Apply saturation multiplier
    adjusted.y *= (1.0 + (sat_mult - 1.0) * mask);

    // Apply luminance offset
    adjusted.z += lum_offset * mask;

    return adjusted;
}

// Main color slice processing function
vec3 processColorSlice(vec3 rgb) {
    // Skip if all parameters are default
    bool needsProcessing = abs(global_hue_shift) > EPSILON ||
    abs(global_sat_mult - 1.0) > EPSILON ||
    abs(global_lum_offset) > EPSILON ||
    abs(red_hue_shift) > EPSILON || abs(red_sat_mult - 1.0) > EPSILON || abs(red_lum_offset) > EPSILON ||
    abs(yellow_hue_shift) > EPSILON || abs(yellow_sat_mult - 1.0) > EPSILON || abs(yellow_lum_offset) > EPSILON ||
    abs(green_hue_shift) > EPSILON || abs(green_sat_mult - 1.0) > EPSILON || abs(green_lum_offset) > EPSILON ||
    abs(cyan_hue_shift) > EPSILON || abs(cyan_sat_mult - 1.0) > EPSILON || abs(cyan_lum_offset) > EPSILON ||
    abs(blue_hue_shift) > EPSILON || abs(blue_sat_mult - 1.0) > EPSILON || abs(blue_lum_offset) > EPSILON ||
    abs(magenta_hue_shift) > EPSILON || abs(magenta_sat_mult - 1.0) > EPSILON || abs(magenta_lum_offset) > EPSILON;

    if (!needsProcessing) return rgb;

    vec3 hsv = rgb2hsv(rgb);

    // Apply global adjustments first
    if (abs(global_hue_shift) > EPSILON) {
        hsv.x = fract(hsv.x + global_hue_shift);
    }
    if (abs(global_sat_mult - 1.0) > EPSILON) {
        hsv.y *= global_sat_mult;
    }
    if (abs(global_lum_offset) > EPSILON) {
        hsv.z += global_lum_offset;
    }

    // Calculate range masks (hue positions in 0-1 range)
    float red_mask = getHueRangeMask(hsv.x, 0.0, 0.167);// Red: 330°-30° (wraps around)
    float yellow_mask = getHueRangeMask(hsv.x, 0.167, 0.167);// Yellow: 30°-90°
    float green_mask = getHueRangeMask(hsv.x, 0.333, 0.167);// Green: 90°-150°
    float cyan_mask = getHueRangeMask(hsv.x, 0.5, 0.167);// Cyan: 150°-210°
    float blue_mask = getHueRangeMask(hsv.x, 0.667, 0.167);// Blue: 210°-270°
    float magenta_mask = getHueRangeMask(hsv.x, 0.833, 0.167);// Magenta: 270°-330°

    // Apply color range adjustments
    hsv = applyColorRangeAdjustment(hsv, red_hue_shift, red_sat_mult, red_lum_offset, red_mask);
    hsv = applyColorRangeAdjustment(hsv, yellow_hue_shift, yellow_sat_mult, yellow_lum_offset, yellow_mask);
    hsv = applyColorRangeAdjustment(hsv, green_hue_shift, green_sat_mult, green_lum_offset, green_mask);
    hsv = applyColorRangeAdjustment(hsv, cyan_hue_shift, cyan_sat_mult, cyan_lum_offset, cyan_mask);
    hsv = applyColorRangeAdjustment(hsv, blue_hue_shift, blue_sat_mult, blue_lum_offset, blue_mask);
    hsv = applyColorRangeAdjustment(hsv, magenta_hue_shift, magenta_sat_mult, magenta_lum_offset, magenta_mask);

    // Clamp values
    hsv.y = clamp(hsv.y, 0.0, 1.0);
    hsv.z = clamp(hsv.z, 0.0, 1.0);

    return hsv2rgb(hsv);
}

void main(void) {
    vec4 texColor = texture2DRect(tex0, texcoord0);
    vec3 rgb = texColor.rgb;

    // 1. Exposure (linear brightness)
    if (abs(exposure) > EPSILON) {
        rgb *= pow(2.0, exposure);
    }

    // 2. Brightness (additive offset)
    if (abs(brightness) > EPSILON) {
        rgb += brightness;
    }

    // 3. Contrast
    if (abs(contrast - 1.0) > EPSILON) {
        rgb = adjustContrast(rgb, contrast);
    }

    // 4. Lift/Gamma/Gain (per channel)
    bool processGamma = red_lift != 0. || green_lift != 0. || blue_lift != 0. ||
    red_gamma != 1. || green_gamma != 1. || blue_gamma != 1. ||
    red_gain != 1. || green_gain != 1. || blue_gain != 1.;

    if (processGamma) {
        vec3 lift = vec3(red_lift, green_lift, blue_lift);
        vec3 gamma = vec3(red_gamma, green_gamma, blue_gamma);
        vec3 gain = vec3(red_gain, green_gain, blue_gain);
        
        rgb = liftGammaGain(rgb, lift, gamma, gain);
    }

    // 5. Color Wheels (Dark/Shadow/Light/Global)
    bool processWheels = (abs(dark_hue) > EPSILON) || (abs(dark_sat) > EPSILON) || (abs(dark_lum) > EPSILON) ||
    (abs(shadow_hue) > EPSILON) || (abs(shadow_sat) > EPSILON) || (abs(shadow_lum) > EPSILON) ||
    (abs(light_hue) > EPSILON) || (abs(light_sat) > EPSILON) || (abs(light_lum) > EPSILON) ||
    (abs(global_hue) > EPSILON) || (abs(global_sat) > EPSILON) || (abs(global_lum) > EPSILON);

    if (processWheels) {
        float luma = dot(rgb, vec3(0.299, 0.587, 0.114));// Rec.709 luminance
        vec4 masks = getRangeMasks(luma);

        vec3 dark_offset = wheelToRGB(dark_hue, dark_sat, dark_lum);
        vec3 shadow_offset = wheelToRGB(shadow_hue, shadow_sat, shadow_lum);
        vec3 light_offset = wheelToRGB(light_hue, light_sat, light_lum);
        vec3 global_offset = wheelToRGB(global_hue, global_sat, global_lum);

        rgb += dark_offset * masks.x + shadow_offset * masks.y + light_offset * masks.z + global_offset * masks.w;
    }

    // 6. White Balance (Temperature/Tint)
    if (abs(temperature) > EPSILON) {
        rgb = temperatureMatrix(temperature) * rgb;
    }
    if (abs(tint) > EPSILON) {
        rgb = tintMatrix(tint) * rgb;
    }

    // 7. Color Slice/HSL (NEW - radical hue shifts)
    rgb = processColorSlice(rgb);

    // 8. Saturation (final global saturation)
    if (abs(saturation - 1.0) > EPSILON) {
        vec3 hsv = rgb2hsv(rgb);
        hsv.y *= saturation;
        rgb = hsv2rgb(hsv);
    }

    // Clamp to valid range
    rgb = clamp(rgb, 0.0, 1.0);

    gl_FragColor = vec4(rgb, texColor.a);
}
