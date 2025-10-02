// "Cubic"
vec3 p=.5*(FC.xy*2.-r)/r.y*mat3x2(-8,0,4,7,4,-7);
o.rgb=tanh(.3/tan(p-ceil(p.yzx/PI*3.)*PI/3.));
// https://x.com/XorDev/status/1958557123631075628