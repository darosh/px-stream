vec2 p=(FC.xy*2.-r)/r.y;float d=.7-dot(p,p);o=tanh(.07*(cos(3.*(d-p.y)-vec4(6,1,2,0))+2.)/max(d,-d/.3));
// https://x.com/XorDev/status/1967968069999005983