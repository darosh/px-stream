// "Accretion"
//for(float z,d,i;i++<2e1;){vec3 p=z*normalize(FC.rgb*2.-r.xyx);p=vec3(atan(p.y/.2,p.x)*2.,p.z/3.,length(p.xy)-5.-z*.2);for(d=1.;d<7.;d++)p+=sin(p.yzx*d+t+.3*i)/d;z+=d=length(vec4(.4*cos(p)-.4,p.z));o+=(cos(p.x+i*.4+z+vec4(6,1,2,0))+1.)/d;}o=tanh(o*o/4e2);
// https://x.com/XorDev/status/1936884244128661986
// CC BY-NC-SA 4.0

//Raymarch depth
float z,
//Step distance
d,
//Raymarch iterator
i;
//Clear fragColor and raymarch 20 steps
for(o*=i; i++<2e1; )
{
	//Sample point (from ray direction)
	vec3 p = z*normalize(vec3(FC.xy+FC.xy,0)-r.xyx)+.1;
	
	//Polar coordinates and additional transformations
	p = vec3(atan(p.y/.2,p.x)*2., p.z/3., length(p.xy)-5.-z*.2);
	
	//Apply turbulence and refraction effect
	for(d=0.; d++<7.;)
		p += sin(p.yzx*d+t+.3*i)/d;
		
	//Distance to cylinder and waves with refraction
	z += d = length(vec4(.4*cos(p)-.4, p.z));
	
	//Coloring and brightness
	o += (1.+cos(p.x+i*.4+z+vec4(6,1,2,0)))/d;
}
//Tanh tonemap
o = tanh(o*o/4e2);