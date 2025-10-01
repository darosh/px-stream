a=(x,y,d=5*cos(mag(k=x/8-12.5,e=y/8-12.5)/3))=>point((x+(d*k+k*3)*sin(d*2.5-t))/2+150,d*13+(d*3+12)*(3+cos(d*3-t))+d*e+150, 1)
t=0,draw=$=>{t||createCanvas(w=400,w);background(6);stroke(255, 128);strokeWeight(1);for(t+=PI/60,i=4e3;i--;)a(i%200,i/20)}
 // #つぶやきProcessing
// adapted from https://x.com/yuruyurau/status/1860706643874611597