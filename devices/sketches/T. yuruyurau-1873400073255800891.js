a=(x,y,o=mag(k=x/4-12.5,e=y/9)/9)=>point((q=x+99+cos(9/k)+o*k*(cos(e*9)/3+cos(y/9)/.7)*sin(o*4-t))*.7*sin(c=o*e/30-t/8)+200,200+y/9*cos(c*4-t/2)-q/2*cos(c))
t=0,draw=$=>{t||createCanvas(w=400,w);background(6).stroke(w,46);for(t+=PI/60,i=3e4;i--;)a(i%100,i/150)} // #つぶやきProcessing
// https://x.com/yuruyurau/status/1873400073255800891