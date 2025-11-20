/*{
    "CREDIT": "by darosh",
    "CATEGORIES": ["Example", "Lygia"],
    "INPUTS": [
        {"NAME": "value", "TYPE": "float", "DEFAULT": 0.5, "MIN": 0, "MAX": 1}
    ],
    "ISFVSN": "2",
    "DESCRIPTION": "Example of lygia/lighting/raymarch.glsl usage"
}*/

#define RESOLUTION          RENDERSIZE
#define RAYMARCH_MULTISAMPLE 2
#define RAYMARCH_BACKGROUND (RAYMARCH_AMBIENT + rayDirection.y * 0.8)
#define RAYMARCH_AMBIENT    vec3(0.12, 0.11, 0.1)

#include "lygia/space/ratio.glsl"
#include "lygia/sdf.glsl"
#include "lygia/lighting/raymarch.glsl"
#include "lygia/color/space/linear2gamma.glsl"

float checkBoard(vec2 uv, vec2 _scale) {
    uv = floor(fract(uv * _scale) * 2.0);
    return min(1.0, uv.x + uv.y) - (uv.x * uv.y);
}

Material raymarchMap(in vec3 pos) {
    float check = 0.1 + checkBoard(pos.xz, vec2(1.0, 1.0)) * 0.25;
    Material res = materialNew(vec3(check), 0.0, 0.5, planeSDF(pos));

    const float spacing = 2.4;
    const float balls = 5.;
    
    for (float i = 0.0; i < balls; i++) {
        float z = (-balls / 2. + i + .25) * spacing;
        float phase = (z + balls - 1.) / (spacing * (balls - 1.));// normalized 0 to 1
        float radius = sin((TIME * .5 + value * PI / 2. + phase) * PI) * 0.2 + 0.6;
        res = opUnion(res, materialNew(vec3(1.25, 0.1, 0.05), 1.0, 0.0,
        sphereSDF(pos - vec3(0.0, 0.75, z), radius)));
    }

    return res;
}

void main() {
    vec3 color = vec3(0.0);
    vec2 pixel = 1.0/RENDERSIZE.xy;
    vec2 st = gl_FragCoord.xy * pixel;
    vec2 uv = ratio(st, RENDERSIZE);
    vec2 u_mouse = vec2(0.);

    vec2 mo = u_mouse * pixel;
    float time = 32.0 + TIME * 5. + value * 10.;
    vec3 cam = vec3(3. + 0.2*(1.+cos(0.1 *time - 7.0*mo.x)), 7., 2. + 0.1*(1+sin(0.1*time - 7.0*mo.x)));

    color = raymarch(cam, vec3(0.0), uv).rgb;
    //color = linear2gamma(color);

    gl_FragColor = vec4(color, 1.0);
}
