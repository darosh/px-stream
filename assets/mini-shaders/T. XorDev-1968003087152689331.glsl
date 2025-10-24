// "Portals"
vec3 p=(FC.xy*2.-r)/r.y*mat3x2(-8,0,4,7,4,-7)*.1,f=fract(p+.5)-.5;o=tanh(.3*tan(3.*p.y-t+sin(dot(f,f)*4e1)+vec4(0,.2,.3,0)));o*=o;
// https://x.com/XorDev/status/1968003087152689331
// CC BY-NC-SA 4.0