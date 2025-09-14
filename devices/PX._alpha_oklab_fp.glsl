varying vec2 texcoord0;
uniform sampler2DRect tex0;

// Alpha Generation Mode
uniform int alpha_mode;

// Chroma Key Settings
uniform vec3 target_color;
uniform float chroma_tolerance;
uniform float lightness_tolerance;
uniform float hue_tolerance;
uniform float global_tolerance;
uniform float chroma_fade;

// Mapping-Based Alpha
uniform int mapping_mode;
uniform float range_min;
uniform float range_max;
uniform float mapping_scale;
uniform float mapping_phase;
uniform int mapping_mirror;
uniform int invert_mapping;

// Luminance Threshold
uniform float luma_threshold;
uniform float luma_fade;
uniform int luma_invert;

// Color Distance
uniform vec3 distance_color;
uniform float distance_threshold;
uniform float distance_fade;
uniform int use_oklab_distance;

// Channel Extraction
uniform int extract_channel;

// Alpha Processing
uniform int alpha_invert;
uniform float alpha_multiply;
uniform float alpha_gamma;
uniform float alpha_quantize;
uniform float alpha_smooth;

// Hard Cutoff
uniform int hard_cutoff;
uniform float cutoff_threshold;

// Output Options
uniform int output_mode;
uniform int preview_mode;
uniform float mix_amount;

// OKLAB conversion functions
vec3 rgb_to_oklab(vec3 rgb) {
    // Linear RGB to LMS
    mat3 rgb_to_lms = mat3(
    0.4122214708, 0.5363325363, 0.0514459929,
    0.2119034982, 0.6806995451, 0.1073969566,
    0.0883024619, 0.2817188376, 0.6299787005
    );

    vec3 lms = rgb_to_lms * rgb;
    lms = sign(lms) * pow(abs(lms), vec3(1.0/3.0));

    // LMS to OKLAB
    mat3 lms_to_oklab = mat3(
    0.2104542553, 0.7936177850, -0.0040720468,
    1.9779984951, -2.4285922050, 0.4505937099,
    0.0259040371, 0.7827717662, -0.8086757660
    );

    return lms_to_oklab * lms;
}

vec3 oklab_to_rgb(vec3 oklab) {
    // OKLAB to LMS
    mat3 oklab_to_lms = mat3(
    1.0, 0.3963377774, 0.2158037573,
    1.0, -0.1055613458, -0.0638541728,
    1.0, -0.0894841775, -1.2914855480
    );

    vec3 lms = oklab_to_lms * oklab;
    lms = lms * lms * lms;

    // LMS to RGB
    mat3 lms_to_rgb = mat3(
    4.0767416621, -3.3077115913, 0.2309699292,
    -1.2684380046, 2.6097574011, -0.3413193965,
    -0.0041960863, -0.7034186147, 1.7076147010
    );

    return lms_to_rgb * lms;
}

// Normalize OKLAB to 0-1 range for processing
vec3 normalizeRange(vec3 oklab_color) {
    return vec3(
    oklab_color.r,
    (oklab_color.g + 0.4) / 0.8,
    (oklab_color.b + 0.4) / 0.8
    );
}

// Get mapping value (reused from colorize device)
float get_mapping_value(vec3 input_oklab, vec3 original_rgb) {
    float value = 0.0;

    if (mapping_mode == 0) {
        // OKLAB Lightness
        input_oklab = normalizeRange(input_oklab);
        value = input_oklab.r;
    } else if (mapping_mode == 1) {
        // OKLAB Chroma (saturation)
        input_oklab = normalizeRange(input_oklab);
        value = sqrt(input_oklab.g * input_oklab.g + input_oklab.b * input_oklab.b);
    } else if (mapping_mode == 2) {
        // OKLAB Hue angle
        input_oklab = normalizeRange(input_oklab);
        value = atan(input_oklab.b, input_oklab.g) / 6.28318530718 + 0.5;
    } else if (mapping_mode == 3) {
        // RGB Luminance
        value = dot(original_rgb, vec3(0.299, 0.587, 0.114));
    } else if (mapping_mode == 4) {
        // RGB Saturation
        float maxVal = max(max(original_rgb.r, original_rgb.g), original_rgb.b);
        float minVal = min(min(original_rgb.r, original_rgb.g), original_rgb.b);
        value = (maxVal > 0.0) ? (maxVal - minVal) / maxVal : 0.0;
    } else if (mapping_mode == 5) {
        // RGB Average
        value = (original_rgb.r + original_rgb.g + original_rgb.b) / 3.0;
    } else if (mapping_mode == 6) {
        // RGB Max channel
        value = max(max(original_rgb.r, original_rgb.g), original_rgb.b);
    } else if (mapping_mode == 7) {
        // RGB Min channel  
        value = min(min(original_rgb.r, original_rgb.g), original_rgb.b);
    }

    // Map to range
    value = (value - range_min) / (range_max - range_min);
    value += mapping_phase;
    value *= mapping_scale;

    if (mapping_mirror == 1) {
        float segment = floor(value);
        float local_pos = value - segment;
        if (int(segment) % 2 == 1) {
            local_pos = 1.0 - local_pos;
        }
        value = local_pos;
    } else {
        value = fract(value);
    }

    if (invert_mapping == 1) {
        value = 1.0 - value;
    }

    return clamp(value, 0.0, 1.0);
}

// OKLAB Chroma Key
float chroma_key_oklab(vec3 input_oklab, vec3 target_oklab) {
    vec3 norm_input = normalizeRange(input_oklab);
    vec3 norm_target = normalizeRange(target_oklab);

    // Calculate differences in OKLAB space
    float lightness_diff = abs(norm_input.r - norm_target.r);
    float chroma_diff = length(norm_input.gb - norm_target.gb);
    float hue_diff = abs(atan(norm_input.b, norm_input.g) - atan(norm_target.b, norm_target.g));
    hue_diff = min(hue_diff, 6.28318530718 - hue_diff) / 6.28318530718;

    // Apply tolerances
    float l_alpha = smoothstep(lightness_tolerance * global_tolerance,
    (lightness_tolerance + chroma_fade) * global_tolerance,
    lightness_diff);
    float c_alpha = smoothstep(chroma_tolerance * global_tolerance,
    (chroma_tolerance + chroma_fade) * global_tolerance,
    chroma_diff);
    float h_alpha = smoothstep(hue_tolerance * global_tolerance,
    (hue_tolerance + chroma_fade) * global_tolerance,
    hue_diff);

    // Combine all channels (use max for union)
    return max(l_alpha, max(c_alpha, h_alpha));
}

// Simple single-pass smoothing (box filter approximation)
float smooth_alpha(float alpha, vec2 coord) {
    if (alpha_smooth <= 0.0) return alpha;

    float smoothed = alpha;
    float weight = 1.0;
    float radius = alpha_smooth * 2.0;

    // 4-tap cross pattern for efficiency
    smoothed += texture2DRect(tex0, coord + vec2(radius, 0.0)).a;
    smoothed += texture2DRect(tex0, coord + vec2(-radius, 0.0)).a;
    smoothed += texture2DRect(tex0, coord + vec2(0.0, radius)).a;
    smoothed += texture2DRect(tex0, coord + vec2(0.0, -radius)).a;
    weight += 4.0;

    return smoothed / weight;
}

void main() {
    vec4 input_color = texture2DRect(tex0, texcoord0);
    vec3 oklab_color = rgb_to_oklab(input_color.rgb);

    float generated_alpha = 0.0;

    // Alpha Generation Switch
    if (alpha_mode == 0) {
        // Chroma Key
        vec3 target_oklab = rgb_to_oklab(target_color);
        generated_alpha = chroma_key_oklab(oklab_color, target_oklab);
    }
    else if (alpha_mode == 1) {
        // Mapping-based
        generated_alpha = get_mapping_value(oklab_color, input_color.rgb);
    }
    else if (alpha_mode == 2) {
        // Luminance Threshold
        float luma = dot(input_color.rgb, vec3(0.299, 0.587, 0.114));
        generated_alpha = smoothstep(luma_threshold, luma_threshold + luma_fade, luma);
        if (luma_invert == 1) {
            generated_alpha = 1.0 - generated_alpha;
        }
    }
    else if (alpha_mode == 3) {
        // Color Distance
        float dist;
        if (use_oklab_distance == 1) {
            vec3 target_oklab = rgb_to_oklab(distance_color);
            dist = length(oklab_color - target_oklab);
        } else {
            dist = length(input_color.rgb - distance_color);
        }
        generated_alpha = smoothstep(distance_threshold, distance_threshold + distance_fade, dist);
    }
    else if (alpha_mode == 4) {
        // Channel Extraction
        if (extract_channel == 0) generated_alpha = input_color.r;
        else if (extract_channel == 1) generated_alpha = input_color.g;
        else if (extract_channel == 2) generated_alpha = input_color.b;
        else if (extract_channel == 3) generated_alpha = input_color.a;
    }

    // Alpha Processing
    generated_alpha *= alpha_multiply;
    generated_alpha = pow(generated_alpha, alpha_gamma);

    if (alpha_quantize > 0.0) {
        generated_alpha = floor(generated_alpha * alpha_quantize) / alpha_quantize;
    }

    // Note: Smoothing would require multiple passes, skipped for single-pass efficiency

    if (hard_cutoff == 1) {
        generated_alpha = (generated_alpha >= cutoff_threshold) ? 1.0 : 0.0;
    }

    if (alpha_invert == 1) {
        generated_alpha = 1.0 - generated_alpha;
    }

    generated_alpha = clamp(generated_alpha, 0.0, 1.0);

    // Output Mode
    float final_alpha = input_color.a;
    if (output_mode == 0) {
        // Replace
        final_alpha = generated_alpha;
    } else if (output_mode == 1) {
        // Multiply
        final_alpha *= generated_alpha;
    } else if (output_mode == 2) {
        // Add
        final_alpha = clamp(final_alpha + generated_alpha, 0.0, 1.0);
    } else if (output_mode == 3) {
        // Subtract
        final_alpha = clamp(final_alpha - generated_alpha, 0.0, 1.0);
    }

    // Apply mix amount
    final_alpha = mix(input_color.a, final_alpha, mix_amount);

    // Preview Mode
    vec4 output_color;
    if (preview_mode == 0) {
        // Normal
        output_color = vec4(input_color.rgb, final_alpha);
    } else if (preview_mode == 1) {
        // Alpha Preview
        output_color = vec4(final_alpha, final_alpha, final_alpha, 1.0);
    } else if (preview_mode == 2) {
        // Overlay Preview (show alpha as red overlay)
        vec3 overlay = mix(input_color.rgb, vec3(1.0, 0.0, 0.0), final_alpha * 0.5);
        output_color = vec4(overlay, 1.0);
    }

    gl_FragColor = output_color;
}
