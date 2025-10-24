// Noise is overrated. All you need is a few layers of a periodic function like sin() and with some rotation and scaling you'll have no visible patterns
vec2 p=(FC.xy*2.-r)/r.y*exp(3.-cos(t)),i;for(;i.x<5e1;o+=.01/length(cos(p+i++)))p*=mat2(3,-9,9,3)*.1;o=tanh(o*o);
//for(vec2 p=(FC.xy*2.-r)/r.y*exp(3.-cos(t)),i;i.x<5e1;o+=.01/length(cos(p+i++)))p*=mat2(3,-9,9,3)*.1;o=tanh(o*o);
// https://x.com/XorDev/status/1768868951444902176
// CC BY-NC-SA 4.0