// "Glass"
vec2 p=(FC.xy*2.-r)/r.y/.9;float l=length(p)-1.;o=.5+.5*tanh(.1/max(l/.1,-l)-sin(l+p.y*max(1.,-l/.1)+t+vec4(0,1,2,0)));
// https://x.com/XorDev/status/1938039566252097898