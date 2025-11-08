#include "lygia/draw/char.glsl"

float printChar(vec2 uv, vec2 pos, int char_code, float scale) {
    vec2 charSize = vec2(8.0/r.x, 16.0/r.y) * scale;
    vec2 charUV = (uv - pos) / charSize;

    if (charUV.x < 0.0 || charUV.x > 1.0 || charUV.y < 0.0 || charUV.y > 1.0)
    return 0.0;

    return char(charUV, char_code);
}

float printString(vec2 uv, vec2 pos, int text[5], int len, float scale) {
    float result = 0.0;
    vec2 charSize = vec2(8.0/r.x, 16.0/r.y) * scale;

    // Center the string horizontally and vertically around pos
    float totalWidth = float(len) * charSize.x;
    vec2 startPos = pos - vec2(totalWidth * 0.5, charSize.y * 0.5);

    for (int i = 0; i < len; i++) {
        vec2 charPos = startPos + vec2(float(i) * charSize.x, 0.0);
        result += printChar(uv, charPos, text[i], scale);
    }
    return result;
}

void main() {
    vec2 uv = FC.xy / r.xy;
    int hello[5] = int[5](72, 69, 76, 76, 79); // "HELLO"

    float sinValue = sin(t);
    float timeStep = floor(t / 3.14159);

    for (int i = 0; i < 5; i++) {
        float random = fract(sin(timeStep + float(i) * 12.9898) * 43758.5453);
        if (abs(sinValue) > 0.9 && random > 0.55) {
            hello[i] = int(mix(65.0, 90.0, fract(random * 7.189))); // Random A-Z
        }
    }

    float scale = 20.0 * sinValue;
    float txt = printString(uv, vec2(0.5, 0.5), hello, 5, scale);

    vec3 color = mix(vec3(0.0), vec3(1.0), txt);
    o = vec4(color, 1.0);
}
