// "Tri"
vec2 p=(FC.xy*2.-r)/r.y,b=vec2(.58*clamp(.4-p.y,0.,.8),.4),v=p-clamp(p,-b,b),l;l+=length(v);o=tanh((cos(atan(p.y,p.x)+t+vec4(0,2,4,0))+1.1)/l.y/3e1)*min(l*r*.2,1.).y;
// https://x.com/XorDev/status/1956070340414558241