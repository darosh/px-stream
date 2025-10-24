// "Gamma"
for(float z,d,i;i++<4e1;){vec3 P=z*normalize(FC.rgb*2.-r.xyx),p=vec3(atan(P.z+=9.,P.x+.1)*2.-.3*P.y,.6*P.y-t,length(P.xz)-4.);for(d=1.;d<9.;d++)p+=sin(p.yzx*d-t+.4*i)/d;z+=d=.2*length(vec4(cos(p+P.y*.2)-1.,p.z));o+=vec4(4,z,2,0)/d/d/z;}o=tanh(o/4e2);
// https://x.com/XorDev/status/1938254250372374690
// CC BY-NC-SA 4.0