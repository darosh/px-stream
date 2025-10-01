a=(x,y,d=5*cos(o=mag(k=x/8-12.5,e=y/8-12.5)/12*cos(sin(k/2)*cos(e/2))))=>
point((x+d*k*(sin(d*2+t)+sin(y*o*o)/9))/1.5+133,(y/3-d*40+19*cos(d+t))*1.5+300)
t=0,draw=$=>{t||createCanvas(w=400,w);background(6,96).stroke(w,46);for(t+=PI/90,i=1e4;i--;)a(i%200,i/100)} // #つぶやきProcessing
// adapted from https://x.com/yuruyurau/status/1875565755XZ254894621