/*{
    "CATEGORIES": ["Automatically Converted", "Shadertoy"],
    "INPUTS": [
        {"NAME": "waveImage", "TYPE": "audio"},
        {"NAME": "BRIGHTNESS", "TYPE": "float", "DEFAULT": 0.2},
        {"NAME": "FREQ_RANGE", "TYPE": "float", "DEFAULT": 1920, "MIN": 1, "MAX": 2048}
    ],
    "ISFVSN": "2",
    "DESCRIPTION": "Automatically converted from https://www.shadertoy.com/view/NdfXRB by riggy93.  I just delete the Circle.\nOriginal from https://www.shadertoy.com/view/ls3BDH.\nI'll use it as a visualization in virtualdj."
}*/

// credit: https://www.shadertoy.com/view/ls3BDH

#define BEATMOVE 1

const float PI = 3.1415;
const float RADIUS = 0.0;
const float SPEED = 0.0;

//convert HSV to RGB
vec3 hsv2rgb(vec3 c) {
    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}

float luma(vec3 color) {
    return dot(color, vec3(0.5, 0.5, 0.5));
}

float getfrequency(float x) {
    return IMG_NORM_PIXEL(waveImage, mod(vec2(floor(x * FREQ_RANGE) / FREQ_RANGE, 0.0), 1.0)).x + 0.00;
}

float getfrequency_smooth(float x) {
    float index = floor(x * FREQ_RANGE) / FREQ_RANGE;
    float next = floor(x * FREQ_RANGE + 1.0) / FREQ_RANGE;
    return mix(getfrequency(index), getfrequency(next), smoothstep(0.0, 1.0, fract(x * FREQ_RANGE)));
}

float getfrequency_blend(float x) {
    return mix(getfrequency(x), getfrequency_smooth(x), 1.0);
}

//LINE
vec3 doLine(vec2 fragment, float radius, float x) {
    vec3 col = hsv2rgb(vec3(x * 0.5 + TIME * 0.0, 1.0, 1.0));

    float freq = abs(fragment.x * 0.5);

    col *= (1.0 / abs(fragment.y)) * BRIGHTNESS * getfrequency(freq);
    col = col * smoothstep(radius, radius * 1.8, abs(fragment.x));

    return col;
}

void main() {
    vec2 fragPos = gl_FragCoord.xy / RENDERSIZE.xy;
    fragPos = (fragPos - 0.0) * 1.0;
    fragPos.x *= RENDERSIZE.x / RENDERSIZE.y;

    vec3 color = vec3(0.0134, 0.052, 0.1);

    float c = cos(TIME * SPEED);
    float s = sin(TIME * SPEED);
    vec2 rot = mat2(c, s, -s, c) * fragPos;
    color += doLine(rot, RADIUS, rot.x);

    color += max(luma(color) - 1.0, 0.0);

    gl_FragColor = vec4(color, 1.0);
}
