// "Firewall"
for(float z,d,i;i++<4e1;){vec3 p=z*normalize(FC.rgb*2.-r.xyx);p=vec3(atan(p.z+=9.,p.x+1.)*2.,.6*p.y+t+t,length(p.xz)-3.);for(d=1.;d<7.;d++)p+=sin(p.yzx*d+t+.5*i)/d;z+=d=.4*length(vec4(.3*cos(p)-.3,p.z));o+=(cos(p.y+i*.4+vec4(6,1,2,0))+1.)/d;}o=tanh(o*o/6e3);
// https://x.com/XorDev/status/1938247188167147579
// CC BY-NC-SA 4.0