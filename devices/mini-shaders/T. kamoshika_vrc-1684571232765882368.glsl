// #つぶやきGLSL
#define X d=abs(length(p)-.7)
for(float i,d;i++<20.;){vec2 p=FC.xy/r.y*i*3.;p.y+=t;p*=rotate2D(i*2.4);p.x+=t*sin(ceil(p.y/8.)*2.4)*5.;p.y=mod(p.y,8.)-4.;p.x=fract(p.x)-.5;p=p.y<0.?-p:p;p.x-=.5;X;p.x+=1.;if(d>.2)X;if(d<.2){o+=step(d,.15)*exp(-i*i*.01);break;}}
// https://x.com/kamoshika_vrc/status/1684571232765882368