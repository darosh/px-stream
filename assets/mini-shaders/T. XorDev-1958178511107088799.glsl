// "Sonata"
vec3 s,c,p;
for(float i,z,f;i++<3e1;p+=c,z+=f=abs(p.y+7.)*.5+.2,o+=vec4(1,2,4,1)/f/(z*.3+p*p).x)
for(c=p=z*(2.*FC.rgb-r.xyy)/r.y,p.x*=f=s.y=.3;f++<3.;p+=cos(p.yzx*f+z+t)/f);
o=tanh(.1*o/length((c/p.z+s).xy));
// https://x.com/XorDev/status/1958178511107088799