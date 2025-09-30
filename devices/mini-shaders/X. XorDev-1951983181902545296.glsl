// My demo code:
vec2 p=FC.xy/r;o=cos(p.x*PI2-vec4(0,2,4,0))*.5+.5;o+=max(2.-.5*abs(p.y-o)/fwidth(p.y-o),0.);
// https://x.com/XorDev/status/1951983181902545296