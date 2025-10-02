// "Cubic 2"
vec3 p=.5*(FC.xy*2.-r)/r.y*mat3x2(-8,0,4,7,4,-7);
o.rgb=tanh(.1/tan(p+ceil(p.yzx/PI*6.)*PI/6.));
// https://x.com/XorDev/status/1958557661772894309