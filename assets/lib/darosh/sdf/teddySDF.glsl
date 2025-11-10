/*
contributors: darosh
description: Returns a teddy bear shaped SDF
use: teddySDF(<vec2> st)
options:
    - CENTER_2D: vec2, defaults to vec2(.5)
examples:
    - Can be used with fill() and stroke() functions from lygia
license:
    - CC0
*/

#ifndef FNC_TEDDYBEARSDF
#define FNC_TEDDYBEARSDF

#include "../../lygia/sdf/circleSDF.glsl"

float teddySDF(vec2 st) {
    #ifdef CENTER_2D
    st -= CENTER_2D;
    #else
    st -= 0.5;
    #endif

    st *= 4.0;

    st += 0.5;
    
    float head = circleSDF(st - vec2(0.0, 0.4)) - 0.6;

    float earLeft = circleSDF(st - vec2(-0.4, 0.68)) - 0.12;
    float earRight = circleSDF(st - vec2(0.4, 0.68)) - 0.12;

    float body = circleSDF(st - vec2(-0, -0)) - 0.7;

    float armLeft = circleSDF(st - vec2(-0.8, -0.1)) - 0.03;
    float armRight = circleSDF(st - vec2(0.8, -0.1)) - 0.03;

    float legLeft = circleSDF(st - vec2(-0.38, -0.65)) - 0.12;
    float legRight = circleSDF(st - vec2(0.38, -0.65)) - 0.12;

    float snout = circleSDF(st - vec2(0.0, 0.15)) - 0.715;
    float eyeLeft = circleSDF(st - vec2(-0.22, 0.46)) - 0.68;
    float eyeRight = circleSDF(st - vec2(0.22, 0.46)) - 0.68;
    
    float bear = head;
    bear = min(bear, min(earLeft, earRight));
    bear = min(bear, body);
    bear = min(bear, min(armLeft, armRight));
    bear = min(bear, min(legLeft, legRight));
    bear = max(bear, -snout);
    bear = max(bear, -eyeLeft);
    bear = max(bear, -eyeRight);
    
    return bear;
}
#endif
