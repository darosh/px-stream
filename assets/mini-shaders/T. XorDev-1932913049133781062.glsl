// Starting a new series of super lightweight shaders:
// "Nova"
vec2 p=(FC.xy*2.-r.x)/r.y;float l=1.-length(p);o+=tanh((1.1+sin(p.x+t+vec4(0,2,4,0)))/2e2/max(l,-l*.1));
// https://x.com/XorDev/status/1932913049133781062
// CC BY-NC-SA 4.0