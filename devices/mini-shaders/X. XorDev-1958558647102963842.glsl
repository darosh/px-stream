// "Cubic 3"
vec3 p=.2*(FC.xy*2.-r)/r.y*mat3x2(-8,0,4,7,4,-7);
o.rgb=tanh(.1/tan(p-ceil(p.yzx/PI*9.)*PI/3.));
// https://x.com/XorDev/status/1958558647102963842