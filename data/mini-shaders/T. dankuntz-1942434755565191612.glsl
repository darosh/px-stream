float F,B,x,y;
vec2 uv = FC.xy / r.xy - .5;
vec3 c=vec3(0,.08,.15);
for(float i=1;i<8;i++){
	x=uv.x*1.6+t*sin(i*3.3)*.4+i*4.3;
	F=.3*cos(i)*sin(x);
	B=sin(uv.x*sin(i+t*.2)*3.4+cos(i+7.1))*.1+.896;
	y=smoothstep(B,1,1-abs(uv.y-F))*(B-.8)*2.5;
	c+=vec3(y,y-.04,y*i*.4);
}
o=vec4(c,1);
// https://x.com/dankuntz/status/1942434755565191612