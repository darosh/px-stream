// "Twist"
for(float i,z,d,s;i++<1e2;){vec3 c=vec3(1,3,5)+s/50.,p=z*normalize(FC.rgb*2.-r.xyy),a=normalize(cos(c));p.z+=30.;a=a*dot(a,p)-cross(a,p),a.xy*=mat2(cos(t+vec4(0,33,11,0))),a=abs(a);z+=d=.05+.1*abs(abs(a.z-20.)-cos(s=a.x+a.y));o.rgb+=(cos(.1*i-c)+1.)/d/d;}o=tanh(o/6e3);
// https://x.com/XorDev/status/1944131286764855701