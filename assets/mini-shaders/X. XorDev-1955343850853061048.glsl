vec2 p=(FC.xy*2.-r)/r.y;
p*=rotate2D(log(length(p)));
o=tanh(.5/abs(cos(p.x*7.+.1*p.x*vec4(-1,0,2,0))));
o*=o;
// https://x.com/XorDev/status/1955343850853061048