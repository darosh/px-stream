// "Marbles"
vec3 p=(FC.xy*2.-r)/r.y*mat3x2(-8,0,4,7,4,-7),
f=fract(p/3.+.5)-.5;
o=tanh(.5/tan(p.y-t+5.*sqrt(abs(.4-dot(f,f)))+vec4(6,0,.2,0)));
o*=o;
// https://x.com/XorDev/status/1968002584976994786
// CC BY-NC-SA 4.0