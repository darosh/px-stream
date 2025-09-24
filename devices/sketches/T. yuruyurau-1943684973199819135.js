a=(x,y,d=mag(k=5*cos(x/19)*cos(y/30),e=y/8-12)**2/59+2)=>point((q=4*sin(atan2(k,e)*9)+9*sin(d-t)-k/d*(9+sin(d*9-t*16)*3))+50*cos(c=d*d/7-t)+200,q*sin(c)+d*45-9)
t=0,draw=$=>{t||createCanvas(w=400,w);background(9).stroke(w,36);for(t+=PI/240,i=1e4;i--;)a(i,i/41)} // #つぶやきProcessing
// https://x.com/yuruyurau/status/1943684973199819135