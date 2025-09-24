a=(x,y,d=5*cos(mag(k=x/8-12.5,e=y/8-12.5)/3))=>stroke(99+99/abs(k*sin(k))*sin(t*4+e)**2,96).point((x+(d*k+k*3)*sin(d*2.5-t))/2+150,d*13+(d*3+12)*(3+cos(d*3-t))+d*e+150)
t=0,draw=$=>{t||createCanvas(w=400,w);background(6);for(t+=PI/60,i=4e4;i--;)a(i%200,i/200)}
 // #つぶやきProcessing
// https://x.com/yuruyurau/status/1860706643874611597