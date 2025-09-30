// "Muons"
for(float i,z,d,s;i++<1e1;o+=(cos(z/.03+t+vec4(0,2,3,0))+1.)/d/s){vec3 p=z*normalize(FC.rgb*2.-r.xyy),a=normalize(cos(vec3(7,1,0)+t-s));p.z+=9.,a=a*dot(a,p)-cross(a,p);for(d=1.;d++<9.;)a+=sin(a*d+t).yzx/d;z+=d=.03*abs(sin(s=length(a)));}o=tanh(o/3e3);
// https://x.com/XorDev/status/1940762971309068613