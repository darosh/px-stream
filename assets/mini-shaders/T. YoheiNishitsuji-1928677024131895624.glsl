// #つぶやきGLSL 🔬🦠 
#define R rotate2D
vec2 p=FC.xy,q,l=(p+p-r)/r.x*.4,n;float s=6.,h,i,L=dot(l,l),e=129.;for(;i++<e;)l*=R(4.95),n*=R(4.8+sin(t)*.05)+rotate2D(t)*.035,h+=dot(r/r,sin(q=l*s*i+n)/s*3.5),n+=cos(q),s*=1.06;h=.4-h*.3-L;o.rgb+=h*.9;
// https://x.com/YoheiNishitsuji/status/1928677024131895624
// MIT