// Useful for global lighting:
mat2 R=rotate2D(cos(t));
vec2 p=(FC.xy*2.-r)/r.y/.2,
m=R*(mod(p*R,2.)-1.);
float z=sqrt(1.-dot(m,m));
o=(m.xyxx+m.yxxx)*z;
// https://x.com/XorDev/status/1943411429995872361
// CC BY-NC-SA 4.0