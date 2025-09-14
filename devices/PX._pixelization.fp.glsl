varying vec2 texcoord0;
varying vec2 texdim0;
uniform sampler2DRect tex0;
uniform sampler2DRect tex1;// freeze buffer

// Resolution
uniform float resolution_x;
uniform float resolution_y;

// Shape
uniform int shape_type;
uniform float shape_rotation;
uniform float shape_scale;

// Displacement
uniform float displacement;
uniform float disp_distance;
uniform float disp_angle;
uniform float disp_r_phase;
uniform float disp_g_phase;
uniform float disp_b_phase;

// Edge Processing
uniform float smoothing;
uniform float fade;
uniform float edge_distortion;
uniform float distort_freq;

// Color Processing
uniform int use_oklab;
uniform float posterize_levels;
uniform float posterize_smooth;
uniform float color_quantize;

// Mapping
uniform int use_mapping;
uniform int mapping_mode;
uniform float mapping_intensity;
uniform int mapping_invert;

// Temporal
uniform int freeze_enable;
uniform float freeze_probability;
uniform float freeze_duration;
uniform int freeze_pattern;

// Output
uniform float mix_amount;
uniform int blend_mode;
uniform int preview_mode;
uniform float time;

// OKLAB functions from your colorize shader
vec3 srgb_to_linear(vec3 c) {
    return mix(c / 12.92, pow((c + 0.055) / 1.055, vec3(2.4)), step(0.04045, c));
}

vec3 linear_to_srgb(vec3 c) {
    return mix(12.92 * c, 1.055 * pow(c, vec3(1.0/2.4)) - 0.055, step(0.0031308, c));
}

float cbrtf(float v) {
    return pow(v, 1./3.);
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

// Posterization function from your colorize shader
float apply_posterization(float value, float levels, float smoothness) {
    if (levels <= 1.0) return value;

    if (smoothness <= 0.0) {
        return floor(value * levels) / levels;
    }

    value = clamp(value, 0.0, 1.0);
    float scaled = value * levels;
    float band_index = floor(scaled);
    float local_pos = scaled - band_index;
    float target_value = band_index / levels;
    float transition_width = smoothness * 0.5;

    if (local_pos >= transition_width && local_pos <= (1.0 - transition_width)) {
        return target_value;
    }

    if (local_pos < transition_width) {
        float prev_value = max(0.0, (band_index - 1.0) / levels);
        float blend_value = (prev_value + target_value) * 0.5;
        float t = local_pos / transition_width;
        t = smoothstep(0.0, 1.0, t);
        return mix(blend_value, target_value, t);
    } else {
        float next_value = min(1.0, (band_index + 1.0) / levels);
        float blend_value = (target_value + next_value) * 0.5;
        float t = (local_pos - (1.0 - transition_width)) / transition_width;
        t = smoothstep(0.0, 1.0, t);
        return mix(target_value, blend_value, t);
    }
}

// Mapping function adapted from your colorize shader
float get_mapping_value(vec3 color) {
    float value = 0.0;

    if (mapping_mode == 0) {
        // RGB Luminance
        value = dot(color, vec3(0.299, 0.587, 0.114));
    } else if (mapping_mode == 1) {
        // RGB Saturation
        float maxVal = max(max(color.r, color.g), color.b);
        float minVal = min(min(color.r, color.g), color.b);
        value = (maxVal > 0.0) ? (maxVal - minVal) / maxVal : 0.0;
    } else if (mapping_mode == 2) {
        // RGB Average
        value = (color.r + color.g + color.b) / 3.0;
    } else if (mapping_mode == 3) {
        // RGB Max channel
        value = max(max(color.r, color.g), color.b);
    } else if (mapping_mode == 4) {
        // OKLAB Lightness
        vec3 oklab = rgb2oklab(color);
        value = oklab.r;
    } else if (mapping_mode == 5) {
        // OKLAB Chroma
        vec3 oklab = rgb2oklab(color);
        value = sqrt(oklab.g * oklab.g + oklab.b * oklab.b);
    } else if (mapping_mode == 6) {
        // OKLAB Hue
        vec3 oklab = rgb2oklab(color);
        value = atan(oklab.b, oklab.g) / 6.28318530718 + 0.5;
    }

    if (mapping_invert == 1) {
        value = 1.0 - value;
    }

    return clamp(value, 0.0, 1.0);
}

// Simple noise function for temporal effects
float noise(vec2 co) {
    return fract(sin(dot(co.xy, vec2(12.9898, 78.233))) * 43758.5453);
}

// Shape testing functions
float shape_test(vec2 pos, int shape) {
    if (shape == 0) {
        // Square
        return (abs(pos.x) <= 0.5 && abs(pos.y) <= 0.5) ? 1.0 : 0.0;
    } else if (shape == 1) {
        // Circle
        return (length(pos) <= 0.5) ? 1.0 : 0.0;
    } else if (shape == 2) {
        // Triangle (equilateral)
        float x = abs(pos.x);
        float y = pos.y + 0.289;
        return (y <= 0.577 && y >= -2.0 * x + 0.577) ? 1.0 : 0.0;
    } else if (shape == 3) {
        // Hexagon
        vec2 q = abs(pos);
        return (q.x * 0.866025 + q.y * 0.5 <= 0.5) ? 1.0 : 0.0;
    }
    return 1.0;
}

vec2 rotate(vec2 pos, float angle) {
    float c = cos(angle);
    float s = sin(angle);
    return vec2(pos.x * c - pos.y * s, pos.x * s + pos.y * c);
}

void main() {
    vec2 uv = texcoord0 / texdim0;
    vec4 original = texture2DRect(tex0, texcoord0);

    // Calculate pixel grid resolution with aspect ratio correction
    vec2 aspect = texdim0 / max(texdim0.x, texdim0.y);// normalize to longer dimension
    float res_x = resolution_x / aspect.x;// scale by aspect ratio
    float res_y = resolution_y / aspect.y;// scale by aspect ratio

    // Apply mapping-based resolution modulation if enabled
    if (use_mapping == 1) {
        float mapping_val = get_mapping_value(original.rgb);
        float modulation = mix(1.0 - mapping_intensity, 1.0 + mapping_intensity, mapping_val);
        res_x *= modulation;
        res_y *= modulation;
    }

    // Calculate pixel grid coordinates
    vec2 pixel_size = vec2(res_x, res_y);
    vec2 pixel_coord = floor(uv / pixel_size) * pixel_size;
    vec2 local_uv = (uv - pixel_coord) / pixel_size - 0.5;// [-0.5, 0.5] within pixel

    // Apply rotation for shapes
    if (shape_type > 0 && shape_rotation != 0.0) {
        local_uv = rotate(local_uv, radians(shape_rotation));
    }

    // Scale shape
    if (shape_type > 0) {
        local_uv /= shape_scale;
    }

    // Test if we're inside the shape
    float shape_mask = shape_test(local_uv, shape_type);

    // Apply edge distortion
    if (edge_distortion > 0.0 && shape_type > 0) {
        float distort = sin(local_uv.x * distort_freq * 6.28318) * sin(local_uv.y * distort_freq * 6.28318);
        distort *= edge_distortion * 0.1;
        vec2 distorted_uv = local_uv + distort;
        shape_mask = shape_test(distorted_uv, shape_type);
    }

    // Calculate sampling coordinates for each channel with displacement
    vec2 sample_coord = pixel_coord + pixel_size * 0.5;// Center of pixel

    vec3 pixel_color;

    if (displacement > 0.0) {
        // Sample each channel with displacement
        float angle_rad = radians(disp_angle);
        vec2 disp_vec = vec2(cos(angle_rad), sin(angle_rad)) * disp_distance * pixel_size.x;

        vec2 r_coord = sample_coord + disp_vec * cos(radians(disp_r_phase)) * displacement;
        vec2 g_coord = sample_coord + disp_vec * cos(radians(disp_g_phase)) * displacement;
        vec2 b_coord = sample_coord + disp_vec * cos(radians(disp_b_phase)) * displacement;

        pixel_color.r = texture2DRect(tex0, r_coord * texdim0).r;
        pixel_color.g = texture2DRect(tex0, g_coord * texdim0).g;
        pixel_color.b = texture2DRect(tex0, b_coord * texdim0).b;
    } else {
        // Normal sampling
        pixel_color = texture2DRect(tex0, sample_coord * texdim0).rgb;
    }

    // Apply color processing
    if (use_oklab == 1) {
        vec3 oklab = rgb2oklab(pixel_color);

        // Apply posterization in OKLAB space
        if (posterize_levels > 1.0) {
            oklab.r = apply_posterization(oklab.r, posterize_levels, posterize_smooth);
            oklab.g = apply_posterization(oklab.g, posterize_levels, posterize_smooth);
            oklab.b = apply_posterization(oklab.b, posterize_levels, posterize_smooth);
        }

        pixel_color = oklab2rgb(oklab);
    } else {
        // RGB posterization
        if (posterize_levels > 1.0) {
            pixel_color.r = apply_posterization(pixel_color.r, posterize_levels, posterize_smooth);
            pixel_color.g = apply_posterization(pixel_color.g, posterize_levels, posterize_smooth);
            pixel_color.b = apply_posterization(pixel_color.b, posterize_levels, posterize_smooth);
        }
    }

    // Apply color quantization
    if (color_quantize > 0.0) {
        float levels = pow(2.0, color_quantize);
        pixel_color = floor(pixel_color * levels) / levels;
    }

    // Apply edge processing (smooth parameter)
    vec3 final_color = pixel_color;

    if (shape_type > 0) {
        if (smoothing > 0.0) {
            // Blur edges
            float edge_dist = length(local_uv);
            float edge_factor = smoothstep(0.5 - smoothing * 0.2, 0.5, edge_dist);
            final_color = mix(pixel_color, original.rgb, edge_factor);
        } else if (smoothing < 0.0) {
            // Enhance edges (3D effect)
            float edge_dist = length(local_uv);
            float edge_factor = smoothstep(0.4, 0.5, edge_dist);
            vec3 edge_color = mix(pixel_color * (1.0 + fade), pixel_color * (1.0 - fade), edge_factor);
            final_color = mix(pixel_color, edge_color, -smoothing);
        }

        // Apply shape mask
        final_color = mix(vec3(0), final_color, shape_mask);
    }

    // Temporal freezing (simplified implementation)
    if (freeze_enable == 1) {
        vec2 freeze_coord = floor(uv / pixel_size);
        float freeze_seed = noise(freeze_coord + floor(time / freeze_duration));

        if (freeze_seed < freeze_probability) {
            // This pixel is frozen - sample from freeze buffer if available
            // For now, just reduce update rate by sampling older position
            vec2 frozen_coord = sample_coord - vec2(0.001 * sin(time), 0.001 * cos(time));
            final_color = texture2DRect(tex0, frozen_coord * texdim0).rgb;
        }
    }

    // Blending modes
    vec3 output_color = final_color;

    if (blend_mode == 1) {
        // Multiply
        output_color = original.rgb * final_color;
    } else if (blend_mode == 2) {
        // Add
        output_color = original.rgb + final_color;
    } else if (blend_mode == 3) {
        // Screen
        output_color = 1.0 - (1.0 - original.rgb) * (1.0 - final_color);
    }

    // Mix amount
    output_color = mix(original.rgb, output_color, mix_amount);

    // Preview modes
    if (preview_mode == 1) {
        // Show pixel grid
        vec2 grid_pos = fract(uv / pixel_size);
        float grid_line = step(0.95, max(grid_pos.x, grid_pos.y));
        output_color = mix(output_color, vec3(1.0), grid_line * 0.5);
    } else if (preview_mode == 2 && freeze_enable == 1) {
        // Show freeze map
        vec2 freeze_coord = floor(uv / pixel_size);
        float freeze_seed = noise(freeze_coord + floor(time / freeze_duration));
        float is_frozen = step(freeze_seed, freeze_probability);
        output_color = mix(output_color, vec3(1.0, 0.0, 0.0), is_frozen * 0.3);
    }

    gl_FragColor = vec4(clamp(output_color, 0.0, 1.0), original.a);
}
