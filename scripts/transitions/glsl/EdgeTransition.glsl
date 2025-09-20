// Author: Woohyun Kim
// License: MIT

uniform float edge_thickness;// = 0.001;
uniform float edge_brightness;// = 8.0;

vec4 detectEdgeColor(vec3 c0, vec3 c1, vec3 c2, vec3 c3, vec3 c4, vec3 c5, vec3 c6, vec3 c7, vec3 c8) {
    /* adjacent texel array for texel c[4]
      036
      147
      258
    */

    vec3 c[9];

    c[0] = c0;
    c[1] = c1;
    c[2] = c2;
    c[3] = c3;
    c[4] = c4;
    c[5] = c5;
    c[6] = c6;
    c[7] = c7;
    c[8] = c8;

    vec3 dx = 2.0 * abs(c[7]-c[1]) + abs(c[2] - c[6]) + abs(c[8] - c[0]);
    vec3 dy = 2.0 * abs(c[3]-c[5]) + abs(c[6] - c[8]) + abs(c[0] - c[2]);
    float delta = length(0.25 * (dx + dy) * 0.5);
    return vec4(clamp(edge_brightness * delta, 0.0, 1.0) * c[4], 1.0);
}

vec4 getFromEdgeColor(vec2 uv) {
    vec3 c[9];
    for (int i=0; i < 3; ++i) for (int j=0; j < 3; ++j)
    {
        vec4 color = getFromColor(uv + edge_thickness * vec2(i-1, j-1));
        c[3*i + j] = color.rgb;
    }
    return detectEdgeColor(c[0], c[1], c[2], c[3], c[4], c[5], c[6], c[7], c[8]);
}

vec4 getToEdgeColor(vec2 uv) {
    vec3 c[9];
    for (int i=0; i < 3; ++i) for (int j=0; j < 3; ++j)
    {
        vec4 color = getToColor(uv + edge_thickness * vec2(i-1, j-1));
        c[3*i + j] = color.rgb;
    }
    return detectEdgeColor(c[0], c[1], c[2], c[3], c[4], c[5], c[6], c[7], c[8]);
}

vec4 transition (vec2 uv) {
    vec4 start = mix(getFromColor(uv), getFromEdgeColor(uv), clamp(2.0 * progress, 0.0, 1.0));
    vec4 end = mix(getToEdgeColor(uv), getToColor(uv), clamp(2.0 * (progress - 0.5), 0.0, 1.0));
    return mix(
    start,
    end,
    progress
    );
}
