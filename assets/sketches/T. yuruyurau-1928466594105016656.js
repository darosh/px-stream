a=(x,y,d=mag(k=5*cos(x/14)*cos(y/30),e=y/8-13)**2/59+4)=>point((q=60-3*sin(atan2(k,e)*e)+k*(3+4/d*sin(d*d-t*2)))*sin(c=d/2+e/99-t/18)+200,(q+d*9)*cos(c)+200)
t=0,draw=$=>{t||createCanvas(w=400,w);background(9).stroke(w,66);for(t+=PI/20,i=1e4;i--;)a(i%200,i/43)} // #つぶやきProcessing
// https://x.com/yuruyurau/status/1928466594105016656