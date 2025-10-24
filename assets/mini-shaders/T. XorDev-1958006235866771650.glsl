// "Wired"
vec3 c,p;for(float i,z,f;i++<4e1;p=mix(c,p,.3),z+=f=.2*abs(dot(cos(p),sin(p.yzx/.6))+abs(p.y)-3.),o+=(cos(z+vec4(6,1,2,0))+2.)/f/z)for(c=p=z*normalize(FC.rgb*2.-r.xyy),p.z-=t,c=p,f=.3;f++<5.;p+=cos(p.yzx*f+i/.4)/f);o=tanh(o/8e2);
// https://x.com/XorDev/status/1958006235866771650
// CC BY-NC-SA 4.0