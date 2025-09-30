// "Aquifier"
for(float i,z,d,s;i++<1e2;o+=(cos(.1*i+vec4(0,1,2,0))+2.)/d*z){vec3 p=z*normalize(FC.rgb*2.-r.xyy),a=normalize(cos(vec3(0,2,4)+t-s*.3));p.z+=9.;s=log(length(a=a*dot(a,p)-cross(a,p)))*5.;z+=d=.01+.1*abs(a.x+sin(s/.2-t/.2)*.2);}o=tanh(o/5e4);
// https://x.com/XorDev/status/1944114058149400804