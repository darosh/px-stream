// "Cubic 5"
vec3 p=.5*(FC.xy*2.-r)/r.y*mat3x2(-8,0,4,7,4,-7);
o.rgb=tanh(.1/sin(p+ceil(p.yzx/PI*3.)*PI/3.)/cos(p.yzx));
// https://x.com/XorDev/status/1958560817252581466