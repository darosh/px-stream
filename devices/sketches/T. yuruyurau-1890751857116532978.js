a=(x,y,o=mag(k=x/4-12.5,e=y/9)/9)=>point((q=x/3+99+3/k*sin(y)+k*(1+cos(y)/3+sin(e+o*4-t*2)))*cos(c=o/5+e/4-t/8)+200,(q+49)*sin(c)*cos(c)-q/3+30*o+220)
t=0,draw=$=>{t||createCanvas(w=400,w);background(6).stroke(w,46);for(t+=PI/90,i=1e4;i--;)a(i%100,i/250)}// #つぶやきProcessing
// adapted from https://x.com/yuruyurau/status/1890751857116532978