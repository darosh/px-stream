// "Axes"
vec3 p=vec3(FC.xy*2.-r,0)/r.y,s=vec3(sqrt(max(.5-dot(p,p),0.)),p),a=cos(t+vec3(0,11,-t));o.rgb=.1/abs(mix(a*dot(a,s),s,.8)-.6*cross(a,s))/(1.+dot(p,p));o=tanh(o+length(o*.2));
// https://x.com/XorDev/status/1938571190517277024