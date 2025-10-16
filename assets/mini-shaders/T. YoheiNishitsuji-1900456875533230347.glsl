// #つぶやきGLSL 
for(float i,e,g;i++<1e2;){vec3 p=vec3((FC.xy-r*.5)/r.y*g,g-3.5);p.zy*=rotate2D(t*.5);for(int j;j++<6;)p*=rotate3D(1.57,vec3(0,2.*smoothstep(-1.,1.,cos(t))-1.,1)),p=abs(p+p)-1.;g+=e=(length(p.xx+p.yz*6.)-1.5)/9e2;o+=exp(-e*1e6)/7e1;} 
// https://bit.ly/4hDRF0G
// https://x.com/YoheiNishitsuji/status/1900456875533230347
// MIT