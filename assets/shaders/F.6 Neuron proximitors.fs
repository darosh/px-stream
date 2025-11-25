/*{
    "CATEGORIES": [""],
    "INPUTS": [
        {"NAME": "fftuImage", "TYPE": "audioFFT"},
        {"NAME": "speed", "TYPE": "float", "DEFAULT": 0.25, "MIN": 0, "MAX": 1},
        {"NAME": "dirX", "TYPE": "float", "DEFAULT": 0, "MIN": -1, "MAX": 1},
        {"NAME": "dirY", "TYPE": "float", "DEFAULT": 0, "MIN": 0, "MAX": 1},
        {"NAME": "gain", "TYPE": "float", "DEFAULT": 1.25, "MIN": 0, "MAX": 2},
        {"NAME": "low", "TYPE": "float", "DEFAULT": 0, "MIN": 0, "MAX": 511},
        {"NAME": "hi", "TYPE": "float", "DEFAULT": 72, "MIN": 0, "MAX": 511},
        {"NAME": "glow", "TYPE": "float", "DEFAULT": 0.5, "MIN": 0, "MAX": 1},
        {"NAME": "segments", "TYPE": "float", "DEFAULT": 0.5, "MIN": 0, "MAX": 1},
        {"NAME": "COLOR", "TYPE": "color", "DEFAULT": [0.5, 0.5, 0.5, 0.5]},
        {"NAME": "decay", "TYPE": "float", "DEFAULT": 0.9, "MIN": 0, "MAX": 1},
        {"NAME": "decaySparkle", "TYPE": "float", "DEFAULT": 0.5, "MIN": 0, "MAX": 1}
    ],
    "PASSES": [
        {"TARGET": "SOUND", "PERSISTENT": true, "FLOAT": true, "WIDTH": 1, "HEIGHT": 64},
        {"TARGET": "BUFFER", "PERSISTENT": true, "FLOAT": true, "WIDTH": 2, "HEIGHT": 64},
        {}
    ],
    "ISFVSN": "2",
    "DESCRIPTION": ""
}*/

// https://www.shadertoy.com/view/XlsBDj
// Fork of "Buffer computed points." by patu. https://shadertoy.com/view/XllBRj

float hash12(vec2 p) {
    float h = dot(p, vec2(127.1, 311.7));
    return fract(abs(sin(h)*43758.5453123));
}

float SqDistancePtSegment(vec2 a, vec2 b, vec2 p)
{
    vec2
    pa = p - a,
    ba = b - a,
    d = pa - ba * clamp(dot(pa, ba) / dot(ba, ba), 0., 1.);

    return dot(d, d);
}

#define SEED 2017.

void main() {
    vec2 fragCoord = gl_FragCoord.xy;

    if (PASSINDEX == 0) { // SOUND
        vec4 C = vec4(0.);
        float multi = (hi - low) / 64;

        vec4 currentVol = IMG_PIXEL(fftuImage, vec2(fragCoord.y * multi + low, 0) + 0.5);
        vec4 prevVol = IMG_PIXEL(SOUND, vec2(0, fragCoord.y) + 0.5);

        float vol = max(currentVol.r, currentVol.g);
        vol = clamp(0, 0.999, pow(vol, 1. / gain));
        vol = max(vol, prevVol.r * pow(decay, TIMEDELTA));

        float volc = round(pow(vol, 4.) * 1.7) * 1. * 2.;
        volc = max(volc, prevVol.g * pow(decaySparkle / 10., TIMEDELTA));

        C.r = vol;
        C.g = volc;

        gl_FragColor = C;
    } else if (PASSINDEX == 1) { // BUFFER
        vec4 C = vec4(-.5);

        if (int(fragCoord.x) == 0) { // first column -- position
            if (FRAMEINDEX == 0) {

                // initial position
                C.x = (hash12(fragCoord.xy) / 2. - .5) + .75;
                C.y = (hash12(fragCoord.yx) / 2. - .5) * 2.;

                // initial speed vector
                C.z = (hash12(fragCoord.xy * C.xy) / 2. - .5) * 2.;
                C.w = (hash12(C.xy * 1000.+ SEED * 100.) / 2. - .5) * 4.;
            } else {
                // previous frame
                C = IMG_PIXEL(BUFFER, fragCoord.xy);
                C.xy += (C.zw - .5 + vec2(dirX, dirY)) * TIMEDELTA * speed;
            }
        } else if (int(fragCoord.x) == 1) { // second column -- nearest point position
            float minDist = 2.;

            vec4 G = IMG_PIXEL(BUFFER, vec2(0.5, fragCoord.y));// 1st column 
            vec4 P = IMG_PIXEL(BUFFER, vec2(fragCoord.xy));// 2nd column previous value 
            float vol = IMG_PIXEL(SOUND, vec2(0.5, fragCoord.y)).r;

            C = G;

            // test all values stored in 1st column.
            for (int i = 0; i < 64; i++) {
                vec4 H = IMG_PIXEL(BUFFER, vec2(0, i) + 0.5);
                float d = distance(G.xy, H.xy);

                if (d < minDist) {
                    if (d < 1. - vol) {
                        C.xy = H.xy;
                        minDist = d;
                        if (dot(G.xy, C.xy) > .5) {
                            C.w = 1.;
                        }
                        break;
                    } else {
                        C.xy = G.xy;
                    }
                }
            }

            C.w -= 0.1;
            C.w = max(C.w, 0.);
        }

        C = fract(C);
        gl_FragColor = C;
    } else {
        vec2 uv = fragCoord.xy / RENDERSIZE.xy;

        uv.x -= .5;
        uv.x *= RENDERSIZE.x / RENDERSIZE.y;
        uv.x += .5;

        vec4 F = vec4(0.);
        vec2 u = uv;

        for (int y = 0; y < 64; y++) {
            vec4 c1 = IMG_PIXEL(BUFFER, vec2(0, y) + .5);// data from 1st column
            vec4 c2 = IMG_PIXEL(BUFFER, vec2(1, y) + .5);// data from 2nd column 

            float volc = IMG_PIXEL(SOUND, vec2(0, y) + .5).g;

            vec4 M = 1. - (COLOR - .5) * 2.;

            float l1 = smoothstep(0., 1., 1. / length(uv - c1.xy) * .008);
            float l2 = smoothstep(0., 1., 1. / length(uv - c2.xy) * .005);

            F = mix(F, abs(c1.xyzx) * M * 1.1 * volc, l1);
            F = mix(F, abs(c2.xyzx) * M * 1.1 * volc, l2);

            F += glow * abs(c1.xyzx * M) * .7 * volc * smoothstep(0., 1., 1. / length(uv - c1.xy) * .15) * .1;

            // segment
            if (length(c1.xy - c2.xy) < segments) {
                F = mix(F, abs(mix(c1.xyzw, c2.xyzx, .5) * M) * volc, (1. - smoothstep(0.0, .00001, SqDistancePtSegment(c1.xy, c2.xy, uv))) * 1.);
            }
        }

        gl_FragColor = F;
    }
}
