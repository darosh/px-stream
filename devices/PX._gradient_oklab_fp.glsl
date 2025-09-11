varying vec2 texcoord0;
uniform sampler2DRect tex0;

uniform int use_oklab;
uniform vec3 color1;
uniform vec3 color2;
uniform vec3 color3;
uniform int use_three_colors;
uniform float midpoint_pos;
uniform float falloff;
uniform int mapping_mode;
uniform float range_min;
uniform float range_max;
uniform float mix_amount;
uniform float luminosity;
uniform int blend_mode;

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
    vec3 minVal = vec3(0., -1.838,  -0.450);
    vec3 maxVal = vec3(1.004, 1.253, 0.264);
    return (value - minVal) / (maxVal - minVal);
}

vec3 rgb2oklab (vec3 c) {
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

vec3 mix_oklab(vec3 c1, vec3 c2, float t) {
    vec3 oklab1 = rgb2oklab(c1);
    vec3 oklab2 = rgb2oklab(c2);
    vec3 mixed_oklab = mix(oklab1, oklab2, t);

    return mixed_oklab;
}

vec3 mix_rgb(vec3 c1, vec3 c2, float t) {
    return mix(c1, c2, t);
}

vec3 mix_three_oklab(vec3 c1, vec3 c2, vec3 c3, float t, float mid_pos) {
    if (t <= mid_pos) {
        float local_t = t / mid_pos;
        return mix_oklab(c1, c2, local_t);
    } else {
        float local_t = (t - mid_pos) / (1.0 - mid_pos);
        return mix_oklab(c2, c3, local_t);
    }
}

vec3 mix_three_rgb(vec3 c1, vec3 c2, vec3 c3, float t, float mid_pos) {
    if (t <= mid_pos) {
        float local_t = t / mid_pos;
        return mix(c1, c2, local_t);
    } else {
        float local_t = (t - mid_pos) / (1.0 - mid_pos);
        return mix(c2, c3, local_t);
    }
}

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
    return clamp(value, 0.0, 1.0);
}

vec3 blend (vec3 original, vec3 gradient_color) {
    vec3 final_color;
    
    if (blend_mode == 1 && use_oklab == 1) {
        vec3 colored = vec3(original.r, gradient_color.g, gradient_color.b);
        final_color = mix(original, colored, mix_amount);
    } else {
        final_color = mix(original, gradient_color, mix_amount);
    }
    
    return final_color;
}

void main() {
    vec4 original = texture2DRect(tex0, texcoord0);
    vec3 input_oklab = rgb2oklab(original.rgb);

    // Get mapping value based on selected mode
    float grad_pos = get_mapping_value(input_oklab, original.rgb);

    // Apply falloff curve
    grad_pos = pow(grad_pos, falloff);

    // Generate gradient color in OKLAB space
    vec3 gradient_color;
    vec3 final_color;

    if (use_oklab == 1) {
        if (use_three_colors == 1) {
            gradient_color = mix_three_oklab(color1, color2, color3, grad_pos, midpoint_pos);
        } else {
            gradient_color = mix_oklab(color1, color3, grad_pos);
        }

        gradient_color *= mix(luminosity, 1., grad_pos);
        final_color = blend(input_oklab, gradient_color);
        final_color = oklab2rgb(final_color);
    } else {
        if (use_three_colors == 1) {
            gradient_color = mix_three_rgb(color1, color2, color3, grad_pos, midpoint_pos);
        } else {
            gradient_color = mix_rgb(color1, color3, grad_pos);
        }

        gradient_color *= mix(luminosity, 1., grad_pos);
        final_color = blend(original.rgb, gradient_color);
    }

    final_color = clamp(final_color, 0.0, 1.0);
    gl_FragColor = vec4(final_color, original.a);
}
