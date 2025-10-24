// Same idea can be reduced to 141 chars though:
vec3 i,p=vec3((FC.xy-.5*r)/r.y,1);for(;i.y++<99.;)p.z-=min(i.z=length(p)-.3,max(i-.1,abs(p)-.05).z);o+=dot(p.xz,cos(t+vec2(0,11)))/length(p);
// https://x.com/XorDev/status/1953546203947577521
// CC BY-NC-SA 4.0