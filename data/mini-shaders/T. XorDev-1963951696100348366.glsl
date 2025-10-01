// "Sketch"
vec3 p;
for(float i,z,f;i++<3e1;z+=f=(p.y-z*.5-2.-length(cos(p.xz+.5*z)))/5.,o+=9./f)
for(p=z*normalize(FC.rgb*2.-r.xyy),p.z+=t,f=1.;f++<6.;p+=sin(ceil(p.z*2e1+f*vec3(1,2,3))/6.*f)/f);
o=tanh(5e6/o/o);
// https://x.com/XorDev/status/1963951696100348366