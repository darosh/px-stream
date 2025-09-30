// I like this better:
vec2 p=(FC.xy*2.-r)/r.y,a=vec2(p.y,sqrt(abs(p*p*p))/(.5+p.y*.2));float d=length(a)/.1-5.-5.*a.y;d=min(max(d,max(d,0.)+3.5-length(p/.1-vec2(7,1))),length(.3*step(p-=vec2(0,.6),p.yx)-p)/.1-3.);o=tanh((cos(p.y/(2.+d*d)*6.+t+vec4(0,1,2,0))+1.1)/abs(d)*.1);
// https://x.com/XorDev/status/1960509420321886657