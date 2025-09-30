// "Pillars"
vec2 p=(FC.xy*2.-r)/r.y/.3+t*vec2(2./PI,1),w=mod(p,2.)-1.;o=sin(p.y-sqrt(1.-w*w).x*cos(ceil(p.x*.5)*PI)+vec4(0,1,2,0));
// https://x.com/XorDev/status/1956381938660360393