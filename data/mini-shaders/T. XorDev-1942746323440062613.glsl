// "Spinner"
for(float i,z,d,s;i++<1e2;o+=(cos(i*.4+vec4(0,1,2,0))+1.)/d){vec3 p=z*normalize(FC.rgb*2.-r.xyy),a=normalize(cos(vec3(0,1,4)+t-.4*s-i/1e2));p.z+=9.;a=abs(a*dot(a,p)-cross(a,p));s=length(a);z+=d=.1*(abs(sin(s*4.-t))+a.y);}o=tanh(o/1e3);
// https://x.com/XorDev/status/1942746323440062613