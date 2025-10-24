// A super simple shiny tile effect:
vec2 p=(FC.xy*2.-r)/r.y*5.;
o=tanh(vec4(1,2,3,1) / length(tan(p+t)+p));
// https://x.com/XorDev/status/1958552311191502961
// CC BY-NC-SA 4.0