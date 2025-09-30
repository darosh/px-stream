// "Spectral"
vec3 p=(FC.xy*2.-r)/r.y*mat3x2(-8,0,4,7,4,-7)/4.,
f=abs(fract(p)-.5);
o=tanh(tan(t-4.*length(p)+(max(f.x,max(f.y,f.z))/.1)+vec4(0,.2,.5,1)));
o*=o;
// https://x.com/XorDev/status/1968006142334017736