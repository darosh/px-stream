// #つぶやきProcessing 「未了の子」
f=0
ns={}
noise=v=>{(ns[v]=ns[v]||random()); return ns[v]}
draw=_=>{
  f++||createCanvas(W=500,W)
  background(0)
  stroke(255)
  for(x=-W;x<W;x+=20)
    for(n=18;n<99;n+=6){
      t=(f+n*(.5+sin(f/30+x+n/99)/2)+9e3)*3*noise(x)%600
      rect(x+t,t-50,n/6)
    }
}
// adapted from https://x.com/SnowEsamosc/status/1971220103070130586
// CC BY 4.0