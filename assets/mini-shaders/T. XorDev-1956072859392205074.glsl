// "Interference"
vec2 p=(FC.xy*2.-r)/r.y,
v=p-clamp(p,-.3,.3),
l=vec2(atan(p.y,p.x),length(v));
o=tanh((cos(l.x+sin(l.x/.2)*sin(l.y/.02-t)*.4+t+vec4(0,2,4,0))+1.2)*
exp(cos(l.x/.2)*cos(l.y/.02-t))/l.y/3e1)*clamp(l*r*.1,0.,1.).y;
// https://x.com/XorDev/status/1956072859392205074
// CC BY-NC-SA 4.0