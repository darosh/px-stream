// https://twigl.app/
vec2 p=(FC.xy*2.-r)/min(r.x,r.y)-m;for(int i=0;i<8;++i){p.xy=abs(p)/dot(p,p)-vec2(.9+cos(t*.2)*.4);}o=vec4(p.xxy,1);
// MIT