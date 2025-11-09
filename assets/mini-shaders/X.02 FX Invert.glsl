vec3 color = texture(b, vec2(FC.x / r.x, 1. - FC.y / r.y)).rgb;
o = vec4(1. - color, 1);
