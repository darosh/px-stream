// "Spinner 2"
for(float i,z,d;i++<1e2;o+=(cos(i*.2+vec4(0,1,2,0))+1.)/d){vec3 p=z*normalize(FC.rgb*2.-r.xyy),a=normalize(cos(vec3(0,2,3)+t/2.-i/1e2));p.z+=9.;a=abs(a*dot(a,p)-cross(a,p));z+=d=abs(cos(length(a+a)))/4.+a.y/1e2;}o=tanh(o/4e3);
// https://x.com/XorDev/status/1942753949167100407