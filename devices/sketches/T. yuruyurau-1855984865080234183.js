a=(x,y,d=mag(k=x/8-25,e=y/8-25)**2/99)=>[(q=x/3+k*.5/cos(y*5)*sin(d*d-t))*sin(c=d/2-t/8)+e*sin(d+k-t)+200,(q+y/8+d*9)*cos(c)+200]
t=0,draw=$=>{t||createCanvas(w=400,w);background(6).stroke(255,96);for(t+=PI/60,y=99;y<300;y+=5)for(x=99;++x<300;)point(...a(x,y))} // #つぶやきProcessing
// https://x.com/yuruyurau/status/1855984865080234183