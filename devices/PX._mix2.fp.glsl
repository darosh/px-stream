#version 330 core

in jit_PerVertex { vec2 texcoord; } jit_in;

layout (location = 0) out vec4 outColor;

uniform sampler2DRect image0;
uniform sampler2DRect image1;

uniform float blend0;
uniform bool enable0;
uniform int mode0;
uniform bool swap0;
uniform bool oklab0;
uniform int view0;

uniform vec2 targetdim;

// Scale UV with aspect correction
// scaleMode: 0=fit (letterbox), 1=fill (crop), 2=stretch
vec2 scaleUV(vec2 uv, vec2 texSize, vec2 targetSize, int scaleMode) {
    if (scaleMode == 2) {
        // Stretch - just use uv as-is and convert to rect coords
        return uv * texSize;
    }

    float texRatio = texSize.x / texSize.y;
    float targetRatio = targetSize.x / targetSize.y;

    vec2 scale;

    if (scaleMode == 0) {
        // Fit (contain) - scale to fit inside, leaving black bars
        if (texRatio > targetRatio) {
            // Texture is wider than target - constrain by width
            scale.x = 1.0;
            scale.y = texRatio / targetRatio;
        } else {
            // Texture is taller than target - constrain by height
            scale.x = targetRatio / texRatio;
            scale.y = 1.0;
        }
    } else {
        // Fill (cover) - scale to fill entire frame, cropping edges
        if (texRatio > targetRatio) {
            // Texture is wider than target - constrain by height, crop width
            scale.x = targetRatio / texRatio;
            scale.y = 1.0;
        } else {
            // Texture is taller than target - constrain by width, crop height
            scale.x = 1.0;
            scale.y = texRatio / targetRatio;
        }
    }

    // Apply scale (centering the image)
    vec2 scaledUV = (uv - 0.5) * scale + 0.5;

    // Convert normalized coords to rect pixel coords
    return scaledUV * texSize;
}

vec3 srgb_to_linear(vec3 c) {
    return mix(c / 12.92, pow((c + 0.055) / 1.055, vec3(2.4)), step(0.04045, c));
}

vec3 linear_to_srgb(vec3 c) {
    return mix(12.92 * c, 1.055 * pow(c, vec3(1.0/2.4)) - 0.055, step(0.0031308, c));
}

float cbrtf(float v) {
    return pow(v, 1./3.);
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

// "Additive" "Alpha blend" " Average" " Bright light" "Burn" "Color dodge" " Darken" " Difference" " Divide" " Dodge" " Exclude" " Freeze" " Glow" " Hard light" "Hard mix" " Heat" " Inverse" " Lighten" " Linear burn" "Linear dodge" " Linear light" "Multiply" "Negate" "Normal" "Overlay" "Phoenix" "Pin light" " Reflect" " Screen" " Softlight" " Stamp" " Subtractive" " Vivid light"

vec4 blend (int mode, vec4 a, vec4 b, float amount) {
    vec4 one = vec4(1.0);
    vec4 two = vec4(2.0);
    vec4 mid = vec4(0.5);
    vec4 lumcoeff = vec4(0.2125, 0.7154, 0.0721, 0.0);
    vec4 result;

    if (mode == 0) { // Additive
        result = a + b;
    } else if (mode == 1) { // Alpha blend
        return vec4(mix(a.rgb, b.rgb, vec3(1.-a.a)*amount), 1.);
    } else if (mode == 2) { // Average
        result = (a + b) * mid;
    } else if (mode == 3) { // Bright light
        result = (one - a) * a * b + a * (one - (one - a) * (one - b));
    } else if (mode == 4) { // Burn
        result = one - (one - a) / b;
    } else if (mode == 5) { // Color dodge
        result = a / (one - b);
    } else if (mode == 6) { // Darken
        result = min(a, b);
    } else if (mode == 7) { // Difference
        result = abs(a - b);
    } else if (mode == 8) { // Divide
        result = a / b;
    } else if (mode == 9) { // Dodge
        result = a / (one - b);
    } else if (mode == 10) { // Exclude
        result = a + b - (two * a * b);
    } else if (mode == 11) { // Freeze
        vec4 c = (one - a);
        result = one - (c * c) / b;
    } else if (mode == 12) { // Glow
        result = (b * b) / (one - a);
    } else if (mode == 13) { // Hard light
        float luminance = dot(b, lumcoeff);
        float mixamount = clamp((luminance - 0.45) * 10., 0., 1.);
        vec4 branch1 = two * a * b;
        vec4 branch2 = one - (two * (one - a) * (one - b));
        result = mix(branch1, branch2, vec4(mixamount));
    } else if (mode == 14) { // Hard mix
        result = vec4(step(one - a, b));
    } else if (mode == 15) { // Heat
        vec4 c = (one - b);
        result = one - (c * c) / a;
    } else if (mode == 16) { // Inverse
        result = b / (one - a);
    } else if (mode == 17) { // Lighten
        result = max(a, b);
    } else if (mode == 18) { // Linear burn
        result = a + b - one;
    } else if (mode == 19) { // Linear dodge
        result = a + b;
    } else if (mode == 20) { // Linear light
        result = two * b + a - one;
    } else if (mode == 21) { // Multiply
        result = a * b;
    } else if (mode == 22) { // Negate
        result = one - abs(one - a - b);
    } else if (mode == 23) { // Normal
        result = b;
    } else if (mode == 24) { // Overlay
        float luminance = dot(a, lumcoeff);
        float mixamount = clamp((luminance - 0.45) * 10., 0., 1.);
        vec4 branch1 = two * a * b;
        vec4 branch2 = one - (two * (one - a) * (one - b));
        result = mix(branch1, branch2, vec4(mixamount));
    } else if (mode == 25) { // Phoenix
        result = min(a, b) - max(a, b) + one;
    } else if (mode == 26) { // Pin light
        float luminance = dot(b, lumcoeff);
        float mixamount = clamp((luminance - 0.45) * 10., 0., 1.);
        vec4 branch1 = min(a, two * b);
        vec4 branch2 = max(a, two * (b - mid));
        result = mix(branch1, branch2, vec4(mixamount));
    } else if (mode == 27) { // Reflect
        result = (a * a) / (one - b);
    } else if (mode == 28) { // Screen
        result = one - (one - a) * (one - b);
    } else if (mode == 29) { // Softlight
        result = two * a * b + a * a - two * a * a * b;
    } else if (mode == 30) { // Stamp
        result = a + two * b - one;
    } else if (mode == 31) { // Subtractive
        result = a + b - one;
    } else if (mode == 32) { // Vivid light
        float luminance = dot(b, lumcoeff);
        float mixamount = clamp((luminance - 0.45) * 10., 0., 1.);
        vec4 branch1 = one - (one - a) / (two * b);
        vec4 branch2 = a / (two * (one - b));
        result = mix(branch1, branch2, vec4(mixamount));
    }

    return mix(a, result, amount);
}

vec4 oklab (int mode, vec4 a, vec4 b, float amount) {
    vec4 one = vec4(1.0);
    vec4 two = vec4(2.0);
    vec4 mid = vec4(0.5);
    vec4 lumcoeff = vec4(0.2125, 0.7154, 0.0721, 0.0);
    vec4 result;
    
    vec4 aok = vec4(rgb2oklab(clamp(a.rgb, 0, 1)), a.a);
    vec4 bok = vec4(rgb2oklab(clamp(b.rgb, 0, 1)), b.a);

    if (mode == 0) { // Additive
        result = a + b;
    } else if (mode == 1) { // Alpha blend
        return vec4(oklab2rgb(mix(aok.rgb, bok.rgb, vec3(1.-a.a)*amount)), 1.);
    } else if (mode == 2) { // Average
        result = (a + b) * mid;
    } else if (mode == 3) { // Bright light
        result = (one - a) * a * b + a * (one - (one - a) * (one - b));
    } else if (mode == 4) { // Burn
        result = one - (one - a) / b;
    } else if (mode == 5) { // Color dodge
        result = a / (one - b);
    } else if (mode == 6) { // Darken
        result = min(a, b);
    } else if (mode == 7) { // Difference
        result = abs(a - b);
    } else if (mode == 8) { // Divide
        result = a / b;
    } else if (mode == 9) { // Dodge
        result = a / (one - b);
    } else if (mode == 10) { // Exclude
        result = a + b - (two * a * b);
    } else if (mode == 11) { // Freeze
        vec4 c = (one - a);
        result = one - (c * c) / b;
    } else if (mode == 12) { // Glow
        result = (b * b) / (one - a);
    } else if (mode == 13) { // Hard light
        float luminance = dot(b, lumcoeff);
        float mixamount = clamp((luminance - 0.45) * 10., 0., 1.);
        vec4 branch1 = two * a * b;
        vec4 branch2 = one - (two * (one - a) * (one - b));
        result = mix(branch1, branch2, vec4(mixamount));
    } else if (mode == 14) { // Hard mix
        result = vec4(step(one - a, b));
    } else if (mode == 15) { // Heat
        vec4 c = (one - b);
        result = one - (c * c) / a;
    } else if (mode == 16) { // Inverse
        result = b / (one - a);
    } else if (mode == 17) { // Lighten
        result = max(a, b);
    } else if (mode == 18) { // Linear burn
        result = a + b - one;
    } else if (mode == 19) { // Linear dodge
        result = a + b;
    } else if (mode == 20) { // Linear light
        result = two * b + a - one;
    } else if (mode == 21) { // Multiply
        result = a * b;
    } else if (mode == 22) { // Negate
        result = one - abs(one - a - b);
    } else if (mode == 23) { // Normal
        result = b;
    } else if (mode == 24) { // Overlay
        float luminance = dot(a, lumcoeff);
        float mixamount = clamp((luminance - 0.45) * 10., 0., 1.);
        vec4 branch1 = two * a * b;
        vec4 branch2 = one - (two * (one - a) * (one - b));
        result = mix(branch1, branch2, vec4(mixamount));
    } else if (mode == 25) { // Phoenix
        result = min(a, b) - max(a, b) + one;
    } else if (mode == 26) { // Pin light
        float luminance = dot(b, lumcoeff);
        float mixamount = clamp((luminance - 0.45) * 10., 0., 1.);
        vec4 branch1 = min(a, two * b);
        vec4 branch2 = max(a, two * (b - mid));
        result = mix(branch1, branch2, vec4(mixamount));
    } else if (mode == 27) { // Reflect
        result = (a * a) / (one - b);
    } else if (mode == 28) { // Screen
        result = one - (one - a) * (one - b);
    } else if (mode == 29) { // Softlight
        result = two * a * b + a * a - two * a * a * b;
    } else if (mode == 30) { // Stamp
        result = a + two * b - one;
    } else if (mode == 31) { // Subtractive
        result = a + b - one;
    } else if (mode == 32) { // Vivid light
        float luminance = dot(b, lumcoeff);
        float mixamount = clamp((luminance - 0.45) * 10., 0., 1.);
        vec4 branch1 = one - (one - a) / (two * b);
        vec4 branch2 = a / (two * (one - b));
        result = mix(branch1, branch2, vec4(mixamount));
    }

    vec4 mixed = mix(aok, vec4(rgb2oklab(clamp(result.rgb, 0, 1)), result.a), amount);
    
    return vec4(oklab2rgb(mixed.rgb), mixed.a);
}

void main() {
    vec2 texSize0 = vec2(textureSize(image0));
    vec4 col0 = texture(image0, scaleUV(jit_in.texcoord, texSize, targetdim, view0));

    vec2 texSize1 = vec2(textureSize(image1));
    vec4 col1 = texture(image1, scaleUV(jit_in.texcoord, texSize, targetdim, view0));

    vec4 result = oklab1
    ? (swap1 ? oklab(mode0, col1, col0, blend0) : oklab(mode0, col0, col1, blend0))
    : (swap1 ? blend(mode0, col1, col0, blend0) : blend(mode0, col0, col1, blend0));

    outColor = result;
}
