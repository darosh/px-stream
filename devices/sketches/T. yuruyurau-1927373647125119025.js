a=(x,y,d=mag(k=9*cos(x/8),e=y/8-12.5)**2/99+sin(t)/6+.5)=>point((q=99-e*sin(atan2(k,e)*7)/d+k*(3+cos(d*d-t)*2))*sin(c=d/2+e/69-t/16)+200,(q+19*d)*cos(c)+200)
t=0,draw=$=>{t||createCanvas(w=400,w);background(9).stroke(w,66);for(t+=PI/45,i=1e4;i--;)a(i%200,i/55)} // #つぶやきProcessing
// https://x.com/yuruyurau/status/1927373647125119025