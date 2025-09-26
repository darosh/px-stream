a=(y,d=mag(k=(1.5+atan(cos(y%12)*8))*cos(i/3),e=y/8-13))=>point((q=10*cos(d-t)+y/8*k*(2+sin(d*3+y-t*2))+99)*cos(c=d/4-t/8+i%6)+200,q*sin(c+i%3*7+2.3)+200)
t=0,draw=$=>{t||createCanvas(w=400,w);background(9).stroke(w,86);for(t+=PI/90,i=1e4;i--;)a(i/470)}//#つぶやきProcessing
// adapted from https://x.com/yuruyurau/status/1969417048146264405