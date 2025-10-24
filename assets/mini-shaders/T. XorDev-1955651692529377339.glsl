// "Focal"
vec3 p;
for(float i,z,d;i++<1e2;
o+=vec4(3.+3.*d,4.+d+d,6.+d,1)/length(p+cross(cos(t+vec3(0,1,5)),p)/.1))
p=z*normalize(FC.rgb*2.-r.xyy),p.z+=5.,
z+=d=min(abs(length(p)-2.),abs(p.y+2.))*.5+.01;
o=tanh(o*o/5e2);
// https://x.com/XorDev/status/1955651692529377339
// CC BY-NC-SA 4.0