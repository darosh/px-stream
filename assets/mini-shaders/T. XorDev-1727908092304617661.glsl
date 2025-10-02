// "Milky" #つぶやきGLSL
float i=-fract(t/.1),j;
for(;i++<1e2;o+=(cos((j=round(i+t/.1))*j+vec4(0,1,2,3))+1.)*exp(cos(j*j/.1)/.6)*min(1e3-i/.1+9.,i)/5e4/length((FC.xy-r*.5)/r.y+.05*cos(j*j/F4+vec2(0,5))*sqrt(i)));o=tanh(o*o);
// https://x.com/XorDev/status/1727908092304617661