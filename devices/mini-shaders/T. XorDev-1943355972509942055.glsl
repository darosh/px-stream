// "Droplets"
for(float i,z,d;i++<1e2;){vec3 p=z*normalize(FC.rgb*2.-r.xyy),a=normalize(cos(vec3(0,2,4)+t/4.));p.z+=9.,a=a*dot(a,p)-cross(a,p);z+=d=.01+.3*abs(max(dot(cos(a),sin(a/.6).yzx),length(a)-7.)+1.5-i/8e1);o+=sin(i/6.+z*vec4(0,1,2,0)/5e1)/d;}o=tanh(1.+o/2e3);
// https://x.com/XorDev/status/1943355972509942055