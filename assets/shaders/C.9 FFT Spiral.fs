/*{
    "CREDIT": "by darosh",
    "CATEGORIES": ["Audio Visualizer"],
    "INPUTS": [
        {"NAME": "fftuImage", "TYPE": "audioFFT"},
        {"NAME": "vol_min", "TYPE": "float", "DEFAULT": 0},
        {"NAME": "vol_max", "TYPE": "float", "DEFAULT": 0.8},
        {"NAME": "dis", "TYPE": "float", "DEFAULT": 0.06},
        {"NAME": "width", "TYPE": "float", "DEFAULT": 0.02},
        {"NAME": "blur", "TYPE": "float", "DEFAULT": 0.08, "MAX": 1},
        {"NAME": "exp", "TYPE": "float", "DEFAULT": 1, "MIN": 0.01, "MAX": 4},
        {"NAME": "saturation", "TYPE": "float", "DEFAULT": 1, "MIN": 0, "MAX": 4},
        {"NAME": "scale", "TYPE": "float", "DEFAULT": 0.85, "MIN": -10, "MAX": 10},
        {"NAME": "speed", "TYPE": "float", "DEFAULT": 0.5, "MIN": -10, "MAX": 10}
    ],
    "ISFVSN": "2",
    "DESCRIPTION": "A spiral where 1 turn equals 1 octave. Adapted Shadertoy: ftKGRc by windytan."
}*/

#define PI 3.14159265358979323846

float nturns = 10.;
// float vol_min  = 0.; // Minimum volume that shows up
// float vol_max  = 1.; // Volume that saturates the color

// Musical parameters
float A = 440.0 / 2.;       // Lowest note
float tet_root = 1.05946309435929; // 12th root of 2

// Spiral visual parameters from https://www.shadertoy.com/view/WtjSWt
// float dis      = .05;
// float width    = .02;
// float blur     = .02;
float iSampleRate = 48000.;

vec3 hsv2rgb(vec3 c) {
    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}

float luma(vec3 color) {
    return dot(color, vec3(0.299, 0.587, 0.114));
}

float BRIGHTNESS = 1.;

void main() {
    vec2 uv = gl_FragCoord.xy / RENDERSIZE.xy;
    float aspect = RENDERSIZE.xy.x / RENDERSIZE.xy.y;

    vec2 uvcorrected = uv - vec2(0.5, 0.5);
    uvcorrected /= scale;
    uvcorrected.x *= aspect;
    float angle = atan(uvcorrected.y, uvcorrected.x) - TIME * speed;
    float offset = length(uvcorrected) + (angle / (2. * PI)) * dis;
    float which_turn = floor(offset / dis);
    float cents = (which_turn - (angle / 2. / PI)) * 1200.;
    float freq = A * pow(tet_root, cents / 100.);
    float bin = freq / iSampleRate;
    float bri = IMG_NORM_PIXEL(fftuImage, mod(vec2(bin, 0.5), 1.0)).g;

    bri = (bri - vol_min) / (vol_max - vol_min);
    bri = max(bri, 0.);

    // Control the curve of the color mapping. Try e.g. 2. or 4.
    bri = pow(bri, exp);
    vec3 lineColor;

    if(bri < 0.5) {
        lineColor = vec3(bri / 2.);
    } else {
        lineColor = vec3((bri - .5) * 2.);
    }

    float c = cos(TIME * 1.);
    float s = sin(TIME * 1.);
    vec2 rot = mat2(c, s, -s, c) * uvcorrected;
    vec3 color = hsv2rgb(vec3(rot.x * 0.23 + TIME * 0.12, saturation, bri + .01));
    color += max(luma(color) - 1.0, 0.0);
    lineColor += color;

    float circles = mod(offset, dis);
    vec3 col = bin > 1. ? vec3(0., 0., 0.) : (smoothstep(circles - blur, circles, width) -
        smoothstep(circles, circles + blur, width)) * lineColor;

    gl_FragColor = vec4(col, 1.);
}
