// "Crystal"
for(float z,d,i;i++<1e2;o+=(cos(i*.2+vec4(0,1,2,0))+1.)/d){vec3 p=z*normalize(FC.rgb*2.-r.xyy),a=normalize(cos(vec3(0,2,4)+t));p.z+=4.;a=abs(a*dot(a,p)-cross(a,p));z+=d=.01+.2*abs(max(max(a+=.6*a.yzx,a.y).x,a.z)-2.);}o=tanh(o*o/3e7);
// https://x.com/XorDev/status/1938766218313224463