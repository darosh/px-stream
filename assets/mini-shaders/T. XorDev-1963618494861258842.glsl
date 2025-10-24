// "Fragments"
vec3 p;
for(float i,z,f;i++<3e1;z+=f=.003+abs(length(p.xy)-5.+dot(cos(p),sin(p).yzx))/8.,o+=(1.+sin(i*.3+z+t+vec4(6,1,2,0)))/f)
for(p=z*normalize(FC.rgb*2.-r.xyy),p.z-=t,f=1.;f++<6.;p+=sin(round(p.yxz*PI2)/PI*f)/f);
o=tanh(o/1e3);
// https://x.com/XorDev/status/1963618494861258842
// CC BY-NC-SA 4.0