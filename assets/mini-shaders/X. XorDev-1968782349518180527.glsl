// noise(SCALE*normalize(p))
float t = snoise2D((sin(t/11.)+2.)*2.*normalize(FC.xy / r - .5));
o.rgb = vec3(.5) + vec3(.5) * cos(PI2 * (vec3(1.) * t + vec3(0,.1,.2)));
// https://x.com/XorDev/status/1968782349518180527
