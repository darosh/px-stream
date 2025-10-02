// Shaders for UI. "Tap"
vec2 p=(FC.xy*2.-r)/r.y,b;b.x=.6;
o=sqrt(tanh(6e-3/max((b.y=length(p-clamp(p,-b,b))-.5)+.2/exp(abs(cos(b.y-p.x*.1-t-t))/.1),b.y*b.y)*(cos(p.x/(abs(b.y)+.4)+t+t+vec4(6,1,2,3))+1.2)));
// https://x.com/XorDev/status/1958925058694586688