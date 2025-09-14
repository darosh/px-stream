// OKLAB Alpha Generation and Manipulation Fragment Shader
// Based on colorize device - reusing OKLAB functions and mapping system

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

// Mapping-Based Alpha (from colorize device)
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

// OKLAB conversion functions (copied from colorize device)
vec3 srgb_to_linear(vec3 c) {
    return mix(c / 12.92, pow((c + 0.055) / 1.055, vec3(2.4)), step(0.04045, c));
}

vec3 linear_to_srgb(vec3 c) {
    return mix(12.92 * c, 1.055 * pow(c, vec3(1.0/2.4)) - 0.055, step(0.0031308, c));
}

float cbrtf(float v) {
    return pow(v, 1./3.);
}

vec3 normalizeRange(vec3 value) {
    vec3 minVal = vec3(0., -1.838, -0.450);
    vec3 maxVal = vec3(1.004, 1.253, 0.264);
    return (value - minVal) / (maxVal - minVal);
}

vec3 rgb2oklab(vec3 c) {
    c = srgb_to_linear(c);

    float l = 0.4122214708 * c.r + 0.5363325363 * c.g + 0.0514459929 * c.b;
    float m = 0.2119034982 * c.r + 0.6806995451 * c.g + 0.1073969566 * c.b;
    float s = 0.0883024619 * c.r + 0.2817188376 * c.g + 0.6299787005 * c.b;

    float l_ = cbrtf(l);
    float m_ = cbrtf(m);
    float s_ = cbrtf(s);

    return vec3(
    0.2104542553*l_ + 0.7936177850*m_ - 0.0040720468*s_,
    1.9779984951*l_ - 2.4285922050*m_ + 0.4505937099*s_,
    0.0259040371*l_ + 0.7827717662*m_ - 0.8086757660*s_
    );
}

vec3 oklab2rgb(vec3 c) {
    float l_ = c.r + 0.3963377774 * c.g + 0.2158037573 * c.b;
    float m_ = c.r - 0.1055613458 * c.g - 0.0638541728 * c.b;
    float s_ = c.r - 0.0894841775 * c.g - 1.2914855480 * c.b;

    float l = l_*l_*l_;
    float m = m_*m_*m_;
    float s = s_*s_*s_;

    vec3 rgb = vec3(
    4.0767416621 * l - 3.3077115913 * m + 0.2309699292 * s,
    -1.2684380046 * l + 2.6097574011 * m - 0.3413193965 * s,
    -0.0041960863 * l - 0.7034186147 * m + 1.7076147010 * s
    );

    return linear_to_srgb(rgb);
}

// Mapping function (exact copy from colorize device)
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

void main() {
    vec4 input_color = texture2DRect(tex0, texcoord0);
    vec3 oklab_color = rgb2oklab(input_color.rgb);

    float generated_alpha = 0.0;

    // Alpha Generation Switch
    if (alpha_mode == 0) {
        // Chroma Key
        vec3 target_oklab = rgb2oklab(target_color);
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
            vec3 target_oklab = rgb2oklab(distance_color);
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

    // Simple smoothing (single-pass cross pattern)
    if (alpha_smooth > 0.0) {
        float smoothed = generated_alpha;
        float weight = 1.0;
        float radius = alpha_smooth * 2.0;

        // Get alpha from neighboring pixels - limitation: uses source alpha, not recalculated
        vec4 right = texture2DRect(tex0, texcoord0 + vec2(radius, 0.0));
        vec4 left = texture2DRect(tex0, texcoord0 + vec2(-radius, 0.0));
        vec4 up = texture2DRect(tex0, texcoord0 + vec2(0.0, radius));
        vec4 down = texture2DRect(tex0, texcoord0 + vec2(0.0, -radius));

        smoothed += right.a + left.a + up.a + down.a;
        weight += 4.0;

        generated_alpha = smoothed / weight;
    }

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
