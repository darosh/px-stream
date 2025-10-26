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
uniform bool alpha0, alpha1, alpha2, alpha3, alpha4, alpha5, alpha6, alpha7;

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

vec3 lab2hcl(vec3 lab) {
    float C = length(lab.yz);
    // float h = atan(lab.z, lab.y);
    float h = C > 0.0001 ? atan(lab.z, lab.y) : 0.0; // Default to 0 hue when achromatic
    return vec3(h, C, lab.x);// H, C, L order (matches H, S, V)
}

vec3 hcl2lab(vec3 hcl) {
    return vec3(hcl.z, cos(hcl.x) * hcl.y, sin(hcl.x) * hcl.y);// L, a, b
}

// "Additive" "Antimatter" "Average" "Bright light" "Burn" "Color dodge" "Darken" "Difference" "Divide" "Dodge" "Exclude" "Freeze" "Glow" "Hard light" "Hard mix" "Heat" "Inverse" "Lighten" "Linear burn" "Linear dodge" "Linear light" "Multiply" "Negate" "Normal" "Overlay" "Phoenix" "Pin light" "Reflect" "Screen" "Softlight" "Stamp" "Subtractive" "Vivid light" "Color: Hue" "Color: Chroma" "Color: Hue + Chroma" "Color: Luminosity"

/* Extended OKLAB
// 0 2 19 33 34 35 36
0  - Additive
2  - Average
19 - Linear dodge
*/

/* Non-commutative ops
// 1 3 4 5 8 9 11 12 13 15 16 18 20 24 26 27 30 32 33 34 35 36
1  - Antimatter
3  - Bright light
4  - Burn
5  - Color dodge
8  - Divide
9  - Dodge
11 - Freeze
12 - Glow
13 - Hard light
15 - Heat
16 - Inverse
18 - Linear burn
20 - Linear light
24 - Overlay
26 - Pin light
27 - Reflect
30 - Stamp
32 - Vivid light
*/

vec4 blend (int mode, vec4 a4, vec4 b4, float amount) {
    vec3 a = a4.rgb;
    vec3 b = b4.rgb;
    
    vec3 one = vec3(1.0);
    vec3 two = vec3(2.0);
    vec3 mid = vec3(0.5);
    
    vec3 lumcoeff = vec3(0.2125, 0.7154, 0.0721);
    
    vec3 result;
    float result_a = mix(a4.a, b4.a, amount);

    if (mode == 0) { // Additive
        result = a + b;
    } else if (mode == 1) { // Antimatter
        // Subtractive with modulo wraparound - creates neon edges
        vec3 subtract = a - b;
        vec3 wrapped = fract(subtract + 0.5); // Wrap negative values
        // Add noise at edges where colors clash
        float edge = step(0.8 * amount, length(a - b));
        result = wrapped + fract(a * b * 16.0) * edge;
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
        vec3 c = (one - a);
        result = one - (c * c) / b;
    } else if (mode == 12) { // Glow
        result = (b * b) / (one - a);
    } else if (mode == 13) { // Hard light
        float luminance = dot(b, lumcoeff);
        float mixamount = clamp((luminance - 0.45) * 10., 0., 1.);
        vec3 branch1 = two * a * b;
        vec3 branch2 = one - (two * (one - a) * (one - b));
        result = mix(branch1, branch2, mixamount);
    } else if (mode == 14) { // Hard mix
        result = vec3(step(one - a, b));
    } else if (mode == 15) { // Heat
        vec3 c = (one - b);
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
        vec3 branch1 = two * a * b;
        vec3 branch2 = one - (two * (one - a) * (one - b));
        result = mix(branch1, branch2, mixamount);
    } else if (mode == 25) { // Phoenix
        result = min(a, b) - max(a, b) + one;
    } else if (mode == 26) { // Pin light
        float luminance = dot(b, lumcoeff);
        float mixamount = clamp((luminance - 0.45) * 10., 0., 1.);
        vec3 branch1 = min(a, two * b);
        vec3 branch2 = max(a, two * (b - mid));
        result = mix(branch1, branch2, mixamount);
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
        vec3 branch1 = one - (one - a) / (two * b);
        vec3 branch2 = a / (two * (one - b));
        result = mix(branch1, branch2, mixamount);
    } else if (mode == 33) { // Color: Hue
        vec3 hsv_a = rgb2hsv(a.rgb);
        vec3 hsv_b = rgb2hsv(b.rgb);
        float use_b_hue = step(0.0001, hsv_b.y); // 1.0 if B has chroma, 0.0 if gray
        float final_hue = mix(hsv_a.x, hsv_b.x, use_b_hue);
        result = hsv2rgb(vec3(final_hue, hsv_a.y, hsv_a.z * hsv_b.z));
    } else if (mode == 34) { // Color: Chroma
        vec3 hsv_a = rgb2hsv(a.rgb);
        vec3 hsv_b = rgb2hsv(b.rgb);
        float use_a_hue = step(0.0001, hsv_a.y); // 1.0 if B has chroma, 0.0 if gray
        float final_hue = mix(hsv_b.x, hsv_a.x, use_a_hue);
        result = hsv2rgb(vec3(final_hue, hsv_b.y, hsv_a.z * hsv_b.z));
    } else if (mode == 35) { // Color: Hue + Chroma
        vec3 hsv_a = rgb2hsv(a.rgb);
        vec3 hsv_b = rgb2hsv(b.rgb);
        result = hsv2rgb(vec3(hsv_b.xy, hsv_a.z * hsv_b.z));
    } else if (mode == 36) { // Color: Luminosity
        vec3 hsv_a = rgb2hsv(a.rgb);
        vec3 hsv_b = rgb2hsv(b.rgb);
        result = hsv2rgb(vec3(hsv_a.xy, hsv_a.z * hsv_b.z));
    }

    return vec4(mix(a, clamp(result, 0, 2), amount), result_a);
}

vec4 oklab (int mode, vec4 a4, vec4 b4, float amount) {
    vec3 a = a4.rgb;
    vec3 b = b4.rgb;

    vec3 one = vec3(1.0);
    vec3 two = vec3(2.0);
    vec3 mid = vec3(0.5);
    vec3 lumcoeff = vec3(0.2125, 0.7154, 0.0721);

    vec3 result;
    float result_a = mix(a4.a, b4.a, amount);

    vec3 aok = rgb2oklab(clamp(a.rgb, 0, 1));
    vec3 bok = rgb2oklab(clamp(b.rgb, 0, 1));

    if (mode == 0) { // Additive - computed in OKLAB
        result = aok + bok;
        return vec4(oklab2rgb(mix(aok, result, amount)), result_a);
    } else if (mode == 1) { // Antimatter
        // Subtractive with modulo wraparound - creates neon edges
        vec3 subtract = a - b;
        vec3 wrapped = fract(subtract + 0.5);// Wrap negative values
        // Add noise at edges where colors clash
        float l = length(a - b);
        float edge = step(0.8 * amount, l);
        result = wrapped + fract(a * b * 16.0) * edge;
    } else if (mode == 2) { // Average - computed in OKLAB
        result = (aok + bok) * 0.5;
        return vec4(oklab2rgb(mix(aok, result, amount)), result_a);
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
        vec3 c = (one - a);
        result = one - (c * c) / b;
    } else if (mode == 12) { // Glow
        result = (b * b) / (one - a);
    } else if (mode == 13) { // Hard light
        float luminance = dot(b, lumcoeff);
        float mixamount = clamp((luminance - 0.45) * 10., 0., 1.);
        vec3 branch1 = two * a * b;
        vec3 branch2 = one - (two * (one - a) * (one - b));
        result = mix(branch1, branch2, mixamount);
    } else if (mode == 14) { // Hard mix
        result = step(one - a, b);
    } else if (mode == 15) { // Heat
        vec3 c = one - b;
        result = one - (c * c) / a;
    } else if (mode == 16) { // Inverse
        result = b / (one - a);
    } else if (mode == 17) { // Lighten
        result = max(a, b);
    } else if (mode == 18) { // Linear burn
        result = a + b - one;
    } else if (mode == 19) { // Linear dodge - computed in OKLAB
        result = aok + bok;
        return vec4(oklab2rgb(mix(aok, result, amount)), result_a);
    } else if (mode == 20) { // Linear light
        result = two * b + a - one;
    } else if (mode == 21) { // Multiply
        result = a * b;
        return vec4(oklab2rgb(mix(aok, result, amount)), result_a);
    } else if (mode == 22) { // Negate
        result = one - abs(one - a - b);
    } else if (mode == 23) { // Normal
        result = b;
    } else if (mode == 24) { // Overlay
        float luminance = dot(a, lumcoeff);
        float mixamount = clamp((luminance - 0.45) * 10., 0., 1.);
        vec3 branch1 = two * a * b;
        vec3 branch2 = one - (two * (one - a) * (one - b));
        result = mix(branch1, branch2, mixamount);
    } else if (mode == 25) { // Phoenix - keep RGB artifacts
        result = min(a, b) - max(a, b) + one;
    } else if (mode == 26) { // Pin light
        float luminance = dot(b, lumcoeff);
        float mixamount = clamp((luminance - 0.45) * 10., 0., 1.);
        vec3 branch1 = min(a, two * b);
        vec3 branch2 = max(a, two * (b - mid));
        result = mix(branch1, branch2, mixamount);
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
        vec3 branch1 = one - (one - a) / (two * b);
        vec3 branch2 = a / (two * (one - b));
        result = mix(branch1, branch2, mixamount);
    } else if (mode == 33) { // Color: Hue
        vec3 hsv_a = lab2hcl(aok);
        vec3 hsv_b = lab2hcl(bok);
        float use_b_hue = step(0.0001, hsv_b.y); // 1.0 if B has chroma, 0.0 if gray
        float final_hue = mix(hsv_a.x, hsv_b.x, use_b_hue);
        result = hcl2lab(vec3(final_hue, hsv_a.y, hsv_a.z * hsv_b.z));
        return vec4(oklab2rgb(mix(aok, result, amount)), result_a);
    } else if (mode == 34) { // Color: Chroma
        vec3 hsv_a = lab2hcl(aok);
        vec3 hsv_b = lab2hcl(bok);
        float use_a_hue = step(0.0001, hsv_a.y); // 1.0 if B has chroma, 0.0 if gray
        float final_hue = mix(hsv_b.x, hsv_a.x, use_a_hue);
        result = hcl2lab(vec3(final_hue, hsv_b.y, hsv_a.z * hsv_b.z));
        return vec4(oklab2rgb(mix(aok, result, amount)), result_a);
    } else if (mode == 35) { // Color: Hue + Chroma
        vec3 hsv_a = lab2hcl(aok);
        vec3 hsv_b = lab2hcl(bok);
        result = hcl2lab(vec3(hsv_b.xy, hsv_a.z * hsv_b.z));
        return vec4(oklab2rgb(mix(aok, result, amount)), result_a);
    } else if (mode == 36) { // Color: Luminosity
        vec3 hsv_a = lab2hcl(aok);
        vec3 hsv_b = lab2hcl(bok);
        result = hcl2lab(vec3(hsv_a.xy, hsv_a.z * hsv_b.z));
        return vec4(oklab2rgb(mix(aok, result, amount)), result_a);
    }

    vec3 mixed = mix(aok, rgb2oklab(clamp(result, 0, 1)), amount);

    return vec4(oklab2rgb(mixed.rgb), result_a);
}

void main() {
    vec4 result = vec4(0.0, 0.0, 0.0, 1.0);
    vec2 texSize;
    vec2 texCoord;
    vec4 col;
    float amount;
    vec4 EMPTY = vec4(0.0, 0.0, 0.0, 0.0);
    bool clamp_edges = true;

    if (enable0) {
        texSize = vec2(textureSize(image0));
        texCoord = scaleUV(jit_in.texcoord, texSize, targetdim, view0);
        col = (clamp_edges && (texCoord.x < 0.0 || texCoord.x >= texSize.x || texCoord.y < 0.0 || texCoord.y >= texSize.y)) 
        ? EMPTY 
        : texture(image0, texCoord);
        amount = alpha0 ? blend0 * col.a : blend0;
        result = oklab0
        ? (swap0 ? oklab(mode0, col, result, amount) : oklab(mode0, result, col, amount))
        : (swap0 ? blend(mode0, col, result, amount) : blend(mode0, result, col, amount));
    }

    if (enable1) {
        texSize = vec2(textureSize(image1));
        texCoord = scaleUV(jit_in.texcoord, texSize, targetdim, view1);
        col = (clamp_edges && (texCoord.x < 0.0 || texCoord.x >= texSize.x || texCoord.y < 0.0 || texCoord.y >= texSize.y))
        ? EMPTY
        : texture(image1, texCoord);
        amount = alpha1 ? blend1 * col.a : blend1;
        result = oklab1
        ? (swap1 ? oklab(mode1, col, result, amount) : oklab(mode1, result, col, amount))
        : (swap1 ? blend(mode1, col, result, amount) : blend(mode1, result, col, amount));
    }

    if (enable2) {
        texSize = vec2(textureSize(image2));
        texCoord = scaleUV(jit_in.texcoord, texSize, targetdim, view3);
        col = (clamp_edges && (texCoord.x < 0.0 || texCoord.x >= texSize.x || texCoord.y < 0.0 || texCoord.y >= texSize.y))
        ? EMPTY
        : texture(image2, texCoord);
        amount = alpha2 ? blend2 * col.a : blend2;
        result = oklab2
        ? (swap2 ? oklab(mode2, col, result, amount) : oklab(mode2, result, col, amount))
        : (swap2 ? blend(mode2, col, result, amount) : blend(mode2, result, col, amount));
    }

    if (enable3) {
        texSize = vec2(textureSize(image3));
        texCoord = scaleUV(jit_in.texcoord, texSize, targetdim, view3);
        col = (clamp_edges && (texCoord.x < 0.0 || texCoord.x >= texSize.x || texCoord.y < 0.0 || texCoord.y >= texSize.y))
        ? EMPTY
        : texture(image3, texCoord);
        amount = alpha3 ? blend3 * col.a : blend3;
        result = oklab3
        ? (swap3 ? oklab(mode3, col, result, amount) : oklab(mode3, result, col, amount))
        : (swap3 ? blend(mode3, col, result, amount) : blend(mode3, result, col, amount));
    }

    if (enable4) {
        texSize = vec2(textureSize(image4));
        texCoord = scaleUV(jit_in.texcoord, texSize, targetdim, view4);
        col = (clamp_edges && (texCoord.x < 0.0 || texCoord.x >= texSize.x || texCoord.y < 0.0 || texCoord.y >= texSize.y))
        ? EMPTY
        : texture(image4, texCoord);
        amount = alpha4 ? blend4 * col.a : blend4;
        result = oklab4
        ? (swap4 ? oklab(mode4, col, result, amount) : oklab(mode4, result, col, amount))
        : (swap4 ? blend(mode4, col, result, amount) : blend(mode4, result, col, amount));
    }

    if (enable5) {
        texSize = vec2(textureSize(image5));
        texCoord = scaleUV(jit_in.texcoord, texSize, targetdim, view5);
        col = (clamp_edges && (texCoord.x < 0.0 || texCoord.x >= texSize.x || texCoord.y < 0.0 || texCoord.y >= texSize.y))
        ? EMPTY
        : texture(image5, texCoord);
        amount = alpha5 ? blend5 * col.a : blend5;
        result = oklab5
        ? (swap5 ? oklab(mode5, col, result, amount) : oklab(mode5, result, col, amount))
        : (swap5 ? blend(mode5, col, result, amount) : blend(mode5, result, col, amount));
    }

    if (enable6) {
        texSize = vec2(textureSize(image6));
        texCoord = scaleUV(jit_in.texcoord, texSize, targetdim, view6);
        col = (clamp_edges && (texCoord.x < 0.0 || texCoord.x >= texSize.x || texCoord.y < 0.0 || texCoord.y >= texSize.y))
        ? EMPTY
        : texture(image6, texCoord);
        amount = alpha6 ? blend6 * col.a : blend6;
        result = oklab6
        ? (swap6 ? oklab(mode6, col, result, amount) : oklab(mode6, result, col, amount))
        : (swap6 ? blend(mode6, col, result, amount) : blend(mode6, result, col, amount));
    }

    if (enable7) {
        texSize = vec2(textureSize(image7));
        texCoord = scaleUV(jit_in.texcoord, texSize, targetdim, view7);
        col = (clamp_edges && (texCoord.x < 0.0 || texCoord.x >= texSize.x || texCoord.y < 0.0 || texCoord.y >= texSize.y))
        ? EMPTY
        : texture(image7, texCoord);
        amount = alpha7 ? blend7 * col.a : blend7;
        result = oklab7
        ? (swap7 ? oklab(mode7, col, result, amount) : oklab(mode7, result, col, amount))
        : (swap7 ? blend(mode7, col, result, amount) : blend(mode7, result, col, amount));
    }

    outColor = result;
}
