#version 330 core

in jit_PerVertex { vec2 texcoord; } jit_in;

layout (location = 0) out vec4 outColor;

uniform sampler2DRect image0;
uniform sampler2DRect image1;

uniform vec4 blend0;
uniform bool enable0;
uniform int mode0;
uniform bool swap0;
uniform bool oklab0;
uniform int view0;
uniform bool alpha0;

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

vec3 rgb2hsv(vec3 c) {
    vec4 K = vec4(0.0, -1.0/3.0, 2.0/3.0, -1.0);
    vec4 p = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));
    vec4 q = mix(vec4(p.xyw, c.r), vec4(c.r, p.yzx), step(p.x, c.r));

    float d = q.x - min(q.w, q.y);
    float e = 1.0e-10;
    return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
}

vec3 hsv2rgb(vec3 c) {
    vec4 K = vec4(1.0, 2.0/3.0, 1.0/3.0, 3.0);
    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}

vec4 blend (int mode, vec4 a, vec4 b, vec4 amount) {
    vec4 one = vec4(1.0);
    vec4 two = vec4(2.0);
    vec4 mid = vec4(0.5);
    vec4 lumcoeff = vec4(0.2125, 0.7154, 0.0721, 0.0);
    vec4 result;

    if (mode == 0) { // Additive
        result = a + b;
    } else if (mode == 1) { // Alpha blend
        return vec4(mix(a.rgb, b.rgb, vec3(1.-a.a)*amount.rgb), 1.);
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
    } else if (mode == 33) { // Color: Hue (HSV version)
        vec3 hsv_a = rgb2hsv(a.rgb);
        vec3 hsv_b = rgb2hsv(b.rgb);
        result = vec4(hsv2rgb(vec3(hsv_b.x, hsv_a.yz)), a.a);

    } else if (mode == 34) { // Color: Saturation (HSV version)
        vec3 hsv_a = rgb2hsv(a.rgb);
        vec3 hsv_b = rgb2hsv(b.rgb);
        result = vec4(hsv2rgb(vec3(hsv_a.x, hsv_b.y, hsv_a.z)), a.a);

    } else if (mode == 35) { // Color: Hue + Saturation (HSV version)
        vec3 hsv_a = rgb2hsv(a.rgb);
        vec3 hsv_b = rgb2hsv(b.rgb);
        result = vec4(hsv2rgb(vec3(hsv_b.xy, hsv_a.z)), a.a);

    } else if (mode == 36) { // Color: Luminosity (HSV version)
        vec3 hsv_a = rgb2hsv(a.rgb);
        vec3 hsv_b = rgb2hsv(b.rgb);
        result = vec4(hsv2rgb(vec3(hsv_a.xy, hsv_b.z)), a.a);
    }

    return mix(a, result, amount);
}

vec4 oklab (int mode, vec4 a, vec4 b, vec4 amount) {
    vec4 one = vec4(1.0);
    vec4 two = vec4(2.0);
    vec4 mid = vec4(0.5);
    vec4 lumcoeff = vec4(0.2125, 0.7154, 0.0721, 0.0);
    vec4 result;

    vec4 aok = vec4(rgb2oklab(clamp(a.rgb, 0, 1)), a.a);
    vec4 bok = vec4(rgb2oklab(clamp(b.rgb, 0, 1)), b.a);

    if (mode == 0) { // Additive - computed in OKLAB
        result = vec4(aok.rgb + bok.rgb, max(aok.a, bok.a));
        return vec4(oklab2rgb(mix(aok.rgb, result.rgb, amount.rgb)), result.a);
    } else if (mode == 1) { // Alpha blend - computed in OKLAB
        return vec4(oklab2rgb(mix(aok.rgb, bok.rgb, vec3(1.-a.a)*amount.rgb)), 1.);
    } else if (mode == 2) { // Average - computed in OKLAB
        result = vec4((aok.rgb + bok.rgb) * 0.5, (aok.a + bok.a) * 0.5);
        return vec4(oklab2rgb(mix(aok.rgb, result.rgb, amount.rgb)), mix(aok.a, result.a, amount.a));
    } else if (mode == 3) { // Bright light
        result = (one - a) * a * b + a * (one - (one - a) * (one - b));
    } else if (mode == 4) { // Burn
        result = one - (one - a) / b;
    } else if (mode == 5) { // Color dodge
        result = a / (one - b);
    } else if (mode == 6) { // Darken
        result = min(a, b);
    } else if (mode == 7) { // Difference - keep RGB artifacts
        result = abs(a - b);
    } else if (mode == 8) { // Divide
        result = a / b;
    } else if (mode == 9) { // Dodge
        result = a / (one - b);
    } else if (mode == 10) { // Exclude - keep RGB artifacts
        result = a + b - (two * a * b);
    } else if (mode == 11) { // Freeze
        vec4 c = (one - a);
        result = one - (c * c) / b;
    } else if (mode == 12) { // Glow
        result = (b * b) / (one - a);
    } else if (mode == 13) { // Hard light - computed in OKLAB
        float luminance = bok.r;// Use L channel from OKLAB
        float mixamount = clamp((luminance - 0.45) * 10., 0., 1.);
        vec4 branch1 = vec4(two.rgb * aok.rgb * bok.rgb, aok.a * bok.a);
        vec4 branch2 = vec4(one.rgb - (two.rgb * (one.rgb - aok.rgb) * (one.rgb - bok.rgb)), one.a - (one.a - aok.a) * (one.a - bok.a));
        result = mix(branch1, branch2, vec4(mixamount));
        return vec4(oklab2rgb(mix(aok.rgb, result.rgb, amount.rgb)), mix(aok.a, result.a, amount.a));
    } else if (mode == 14) { // Hard mix
        result = vec4(step(one - a, b));
    } else if (mode == 15) { // Heat
        vec4 c = (one - b);
        result = one - (c * c) / a;
    } else if (mode == 16) { // Inverse
        result = b / (one - a);
    } else if (mode == 17) { // Lighten
        result = max(a, b);
    } else if (mode == 18) { // Linear burn - computed in OKLAB
        result = vec4(aok.rgb + bok.rgb - one.rgb, aok.a + bok.a - one.a);
        return vec4(oklab2rgb(mix(aok.rgb, result.rgb, amount.rgb)), mix(aok.a, result.a, amount.a));
    } else if (mode == 19) { // Linear dodge - computed in OKLAB
        result = vec4(aok.rgb + bok.rgb, max(aok.a, bok.a));
        return vec4(oklab2rgb(mix(aok.rgb, result.rgb, amount.rgb)), result.a);
    } else if (mode == 20) { // Linear light
        result = two * b + a - one;
    } else if (mode == 21) { // Multiply - computed in OKLAB
        result = vec4(aok.rgb * bok.rgb, aok.a * bok.a);
        return vec4(oklab2rgb(mix(aok.rgb, result.rgb, amount.rgb)), mix(aok.a, result.a, amount.a));
    } else if (mode == 22) { // Negate
        result = one - abs(one - a - b);
    } else if (mode == 23) { // Normal
        result = b;
    } else if (mode == 24) { // Overlay - computed in OKLAB
        float luminance = aok.r;// Use L channel from OKLAB
        float mixamount = clamp((luminance - 0.45) * 10., 0., 1.);
        vec4 branch1 = vec4(two.rgb * aok.rgb * bok.rgb, aok.a * bok.a);
        vec4 branch2 = vec4(one.rgb - (two.rgb * (one.rgb - aok.rgb) * (one.rgb - bok.rgb)), one.a - (one.a - aok.a) * (one.a - bok.a));
        result = mix(branch1, branch2, vec4(mixamount));
        return vec4(oklab2rgb(mix(aok.rgb, result.rgb, amount.rgb)), mix(aok.a, result.a, amount.a));
    } else if (mode == 25) { // Phoenix - keep RGB artifacts
        result = min(a, b) - max(a, b) + one;
    } else if (mode == 26) { // Pin light
        float luminance = dot(b, lumcoeff);
        float mixamount = clamp((luminance - 0.45) * 10., 0., 1.);
        vec4 branch1 = min(a, two * b);
        vec4 branch2 = max(a, two * (b - mid));
        result = mix(branch1, branch2, vec4(mixamount));
    } else if (mode == 27) { // Reflect
        result = (a * a) / (one - b);
    } else if (mode == 28) { // Screen - computed in OKLAB
        result = vec4(one.rgb - (one.rgb - aok.rgb) * (one.rgb - bok.rgb), one.a - (one.a - aok.a) * (one.a - bok.a));
        return vec4(oklab2rgb(mix(aok.rgb, result.rgb, amount.rgb)), mix(aok.a, result.a, amount.a));
    } else if (mode == 29) { // Softlight - computed in OKLAB
        result = vec4(two.rgb * aok.rgb * bok.rgb + aok.rgb * aok.rgb - two.rgb * aok.rgb * aok.rgb * bok.rgb, aok.a);
        return vec4(oklab2rgb(mix(aok.rgb, result.rgb, amount.rgb)), mix(aok.a, result.a, amount.a));
    } else if (mode == 30) { // Stamp
        result = a + two * b - one;
    } else if (mode == 31) { // Subtractive - computed in OKLAB
        result = vec4(aok.rgb + bok.rgb - one.rgb, aok.a + bok.a - one.a);
        return vec4(oklab2rgb(mix(aok.rgb, result.rgb, amount.rgb)), mix(aok.a, result.a, amount.a));
    } else if (mode == 32) { // Vivid light
        float luminance = dot(b, lumcoeff);
        float mixamount = clamp((luminance - 0.45) * 10., 0., 1.);
        vec4 branch1 = one - (one - a) / (two * b);
        vec4 branch2 = a / (two * (one - b));
        result = mix(branch1, branch2, vec4(mixamount));
    } else if (mode == 33) { // Color: Hue
        // Take a/b from bok (hue), L and saturation magnitude from aok
        float sat_a = length(aok.gb);
        float sat_b = length(bok.gb);
        vec2 hue_b = sat_b > 0.0 ? bok.gb / sat_b : vec2(0.0);
        result = vec4(aok.r, hue_b * sat_a, aok.a);
        return vec4(oklab2rgb(mix(aok.rgb, result.rgb, amount.rgb)), mix(aok.a, result.a, amount.a));
    } else if (mode == 34) { // Color: Saturation
        // Take saturation magnitude from bok, hue and L from aok
        float sat_a = length(aok.gb);
        float sat_b = length(bok.gb);
        vec2 hue_a = sat_a > 0.0 ? aok.gb / sat_a : vec2(0.0);
        result = vec4(aok.r, hue_a * sat_b, aok.a);
        return vec4(oklab2rgb(mix(aok.rgb, result.rgb, amount.rgb)), mix(aok.a, result.a, amount.a));
    } else if (mode == 35) { // Color: Hue + Saturation
        // Take a/b from bok (hue+sat), L from aok
        result = vec4(aok.r, bok.gb, aok.a);
        return vec4(oklab2rgb(mix(aok.rgb, result.rgb, amount.rgb)), mix(aok.a, result.a, amount.a));
    } else if (mode == 36) { // Color: Luminosity
        // Take L from bok, a/b from aok (hue+sat)
        result = vec4(bok.r, aok.gb, aok.a);
        return vec4(oklab2rgb(mix(aok.rgb, result.rgb, amount.rgb)), mix(aok.a, result.a, amount.a));
    }

    vec4 mixed = mix(aok, vec4(rgb2oklab(clamp(result.rgb, 0, 1)), result.a), amount);

    return vec4(oklab2rgb(mixed.rgb), mixed.a);
}

void main() {
    vec2 texSize0 = vec2(textureSize(image0));
    vec4 col0 = texture(image0, scaleUV(jit_in.texcoord, texSize0, targetdim, view0));

    vec2 texSize1 = vec2(textureSize(image1));
    vec4 col1 = texture(image1, scaleUV(jit_in.texcoord, texSize1, targetdim, view0));

    vec4 amount = alpha0 ? blend0 * col1.a : blend0;

    outColor = oklab0
    ? (swap0 ? oklab(mode0, col1, col0, amount) : oklab(mode0, col0, col1, amount))
    : (swap0 ? blend(mode0, col1, col0, amount) : blend(mode0, col0, col1, amount));
}
