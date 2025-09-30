// "Moire"
vec2 p=(FC.xy*2.-r)/r.y*3e1;
for(float i;++i<9.;o+=sin(p.x+vec4(0,1,2,0)+t))p*=.1*mat2(6,-8,8,6);
o=tanh(o*.4)*.5+.5;
// https://x.com/XorDev/status/1971305040385122512