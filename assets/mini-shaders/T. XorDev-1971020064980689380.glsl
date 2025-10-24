// Normalize with a cutoff:
vec2 p=(FC.xy*2.-r)/r.y;
o=tanh(vec4(.1,.2,.4,1)/
(1.+snoise2D(p/max(length(p),.5)+t*.2)));
// https://x.com/XorDev/status/1971020064980689380
// CC BY-NC-SA 4.0