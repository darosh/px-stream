#version 330 core

in jit_PerVertex { vec2 texcoord; } jit_in;

layout (location = 0) out vec4 outColor;

uniform sampler2DRect image0;
uniform sampler2DRect image1;
uniform sampler2DRect image2;
uniform sampler2DRect image3;
uniform sampler2DRect image4;
uniform sampler2DRect image5;
uniform sampler2DRect image6;
uniform sampler2DRect image7;

uniform float blend0, blend1, blend2, blend3, blend4, blend5, blend6, blend7;
uniform bool enable0, enable1, enable2, enable3, enable4, enable5, enable6, enable7;
uniform int mode0, mode1, mode2, mode3, mode4, mode5, mode6, mode7;
uniform bool swap0, swap1, swap2, swap3, swap4, swap5, swap6, swap7;
uniform bool oklab0, oklab1, oklab2, oklab3, oklab4, oklab5, oklab6, oklab7;
uniform int view0, view1, view2, view3, view4, view5, view6, view7;

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

vec4 blend (int mode, vec4 a, vec4 b, float amount) {
    vec4 one = vec4(1.0);
    vec4 two = vec4(2.0);
    vec4 mid = vec4(0.5);
    vec4 lumcoeff = vec4(0.2125, 0.7154, 0.0721, 0.0);
    vec4 result;

    if (mode == 0) { // Additive
        result = a + b;
    } else if (mode == 1) { // "Alpha blend"
        return vec4(mix(a.rgb, b.rgb, vec3(1.-a.a)*amount), 1.);
    } else if (mode == 2) { // Average 
        result = (a + b) * vec4(0.5);
    } else if (mode == 3) { // "Bright light" 
        result = (one - a) * a * b + a * (one - (one - a) * (one - b));
    } else if (mode == 4) { // Burn 
        result = one - (one - a) / b;
    } else if (mode == 5) { // Darken 
        result = min(a, b);
    } else if (mode == 6) { // Difference 
        result = abs(a - b);
    } else if (mode == 7) { // Dodge 
        result = a / (one - b);
    } else if (mode == 8) { // Exclude 
        result = a + b - (two * a * b);
    } else if (mode == 9) { // Freeze 
        vec4 c = (one - a);
        result = one - (c * c) / b;
    } else if (mode == 10) { // Glow
        result = (b * b) / (one - a);
    } else if (mode == 11) { // "Hard light"  
        float luminance = dot(b, lumcoeff);
        float mixamount = clamp((luminance - 0.45) * 10., 0., 1.);
        vec4 branch1 = two * a * b;
        vec4 branch2 = one - (two * (one - a) * (one - b));
        result = mix(branch1, branch2, vec4(mixamount));
    } else if (mode == 12) { // Heat 
        vec4 c = (one - b);
        result = one - (c * c) / a;
    } else if (mode == 13) { // Inverse 
        result = b / (one - a);
    } else if (mode == 14) { // Lighten 
        result = max(a, b);
    } else if (mode == 15) { // Multiply 
        result = a * b;
    } else if (mode == 16) { // Negate 
        result = one - abs(one - a - b);
    } else if (mode == 17) { // Normal 
        result = b;
    } else if (mode == 18) { // Overlay 
        float luminance = dot(a, lumcoeff);
        float mixamount = clamp((luminance - 0.45) * 10., 0., 1.);
        vec4 branch1 = two * a * b;
        vec4 branch2 = one - (two * (one - a) * (one - b));
        result = mix(branch1, branch2, vec4(mixamount));
    } else if (mode == 19) { // Reflect 
        result = (a * a) / (one - b);
    } else if (mode == 20) { // Screen 
        result = one - (one - a) * (one - b);
    } else if (mode == 21) { // Softlight 
        result = two * a * b + a * a - two * a * a * b;
    } else if (mode == 22) { // Stamp 
        result = a + two * b - one;
    } else if (mode == 23) { // Subtractive
        result = a + b - one;
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
    } else if (mode == 1) { // "Alpha blend"
        return vec4(oklab2rgb(mix(aok.rgb, bok.rgb, vec3(1.-a.a)*amount)), 1.);
    } else if (mode == 2) { // Average 
        result = (a + b) * vec4(0.5);
    } else if (mode == 3) { // "Bright light" 
        result = (one - a) * a * b + a * (one - (one - a) * (one - b));
    } else if (mode == 4) { // Burn 
        result = one - (one - a) / b;
    } else if (mode == 5) { // Darken 
        result = min(a, b);
    } else if (mode == 6) { // Difference 
        result = abs(a - b);
    } else if (mode == 7) { // Dodge 
        result = a / (one - b);
    } else if (mode == 8) { // Exclude 
        result = a + b - (two * a * b);
    } else if (mode == 9) { // Freeze 
        vec4 c = (one - a);
        result = one - (c * c) / b;
    } else if (mode == 10) { // Glow
        result = (b * b) / (one - a);
    } else if (mode == 11) { // "Hard light"  
        float luminance = dot(b, lumcoeff);
        float mixamount = clamp((luminance - 0.45) * 10., 0., 1.);
        vec4 branch1 = two * a * b;
        vec4 branch2 = one - (two * (one - a) * (one - b));
        result = mix(branch1, branch2, vec4(mixamount));
    } else if (mode == 12) { // Heat 
        vec4 c = (one - b);
        result = one - (c * c) / a;
    } else if (mode == 13) { // Inverse 
        result = b / (one - a);
    } else if (mode == 14) { // Lighten 
        result = max(a, b);
    } else if (mode == 15) { // Multiply 
        result = a * b;
    } else if (mode == 16) { // Negate 
        result = one - abs(one - a - b);
    } else if (mode == 17) { // Normal 
        result = b;
    } else if (mode == 18) { // Overlay 
        float luminance = dot(a, lumcoeff);
        float mixamount = clamp((luminance - 0.45) * 10., 0., 1.);
        vec4 branch1 = two * a * b;
        vec4 branch2 = one - (two * (one - a) * (one - b));
        result = mix(branch1, branch2, vec4(mixamount));
    } else if (mode == 19) { // Reflect 
        result = (a * a) / (one - b);
    } else if (mode == 20) { // Screen 
        result = one - (one - a) * (one - b);
    } else if (mode == 21) { // Softlight 
        result = two * a * b + a * a - two * a * a * b;
    } else if (mode == 22) { // Stamp 
        result = a + two * b - one;
    } else if (mode == 23) { // Subtractive
        result = a + b - one;
    }

    vec4 mixed = mix(aok, vec4(rgb2oklab(clamp(result.rgb, 0, 1)), result.a), amount);
    
    return vec4(oklab2rgb(mixed.rgb), mixed.a);
}

void main() {
    vec4 result = vec4(0.0, 0.0, 0.0, 1.0);
    vec2 texSize;
    vec4 col;

    if (enable0) {
        texSize = vec2(textureSize(image0));
        col = texture(image0, scaleUV(jit_in.texcoord, texSize, targetdim, view0));
        result = oklab0 
        ? (swap0 ? oklab(mode0, col, result, blend0) : oklab(mode0, result, col, blend0))
        : (swap0 ? blend(mode0, col, result, blend0) : blend(mode0, result, col, blend0));
    }

    if (enable1) {
        texSize = vec2(textureSize(image1));
        col = texture(image1, scaleUV(jit_in.texcoord, texSize, targetdim, view1));
        result = oklab1
        ? (swap1 ? oklab(mode1, col, result, blend1) : oklab(mode1, result, col, blend1))
        : (swap1 ? blend(mode1, col, result, blend1) : blend(mode1, result, col, blend1));
    }

    if (enable2) {
        texSize = vec2(textureSize(image2));
        col = texture(image2, scaleUV(jit_in.texcoord, texSize, targetdim, view2));
        result = oklab2
        ? (swap2 ? oklab(mode2, col, result, blend2) : oklab(mode2, result, col, blend2))
        : (swap2 ? blend(mode2, col, result, blend2) : blend(mode2, result, col, blend2));
    }

    if (enable3) {
        texSize = vec2(textureSize(image3));
        col = texture(image3, scaleUV(jit_in.texcoord, texSize, targetdim, view3));
        result = oklab3
        ? (swap3 ? oklab(mode3, col, result, blend3) : oklab(mode3, result, col, blend3))
        : (swap3 ? blend(mode3, col, result, blend3) : blend(mode3, result, col, blend3));
    }

    if (enable4) {
        texSize = vec2(textureSize(image4));
        col = texture(image4, scaleUV(jit_in.texcoord, texSize, targetdim, view4));
        result = oklab4
        ? (swap4 ? oklab(mode4, col, result, blend4) : oklab(mode4, result, col, blend4))
        : (swap4 ? blend(mode4, col, result, blend4) : blend(mode4, result, col, blend4));
    }

    if (enable5) {
        texSize = vec2(textureSize(image5));
        col = texture(image5, scaleUV(jit_in.texcoord, texSize, targetdim, view5));
        result = oklab5
        ? (swap5 ? oklab(mode5, col, result, blend5) : oklab(mode5, result, col, blend5))
        : (swap5 ? blend(mode5, col, result, blend5) : blend(mode5, result, col, blend5));
    }

    if (enable6) {
        texSize = vec2(textureSize(image6));
        col = texture(image6, scaleUV(jit_in.texcoord, texSize, targetdim, view6));
        result = oklab6
        ? (swap6 ? oklab(mode6, col, result, blend6) : oklab(mode6, result, col, blend6))
        : (swap6 ? blend(mode6, col, result, blend6) : blend(mode6, result, col, blend6));
    }

    if (enable7) {
        texSize = vec2(textureSize(image7));
        col = texture(image7, scaleUV(jit_in.texcoord, texSize, targetdim, view7));
        result = oklab7
        ? (swap7 ? oklab(mode7, col, result, blend7) : oklab(mode7, result, col, blend7))
        : (swap7 ? blend(mode7, col, result, blend7) : blend(mode7, result, col, blend7));
    }

    outColor = result;
}
