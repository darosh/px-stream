/*{
    "CREDIT": "",
    "CATEGORIES": ["Automatically Converted", "Shadertoy"],
    "INPUTS": [{"NAME": "waveImage", "TYPE": "audio"}, {"NAME": "exp", "TYPE": "float", "DEFAULT": 5, "MIN": -24, "MAX": 24}],
    "ISFVSN": "2",
    "DESCRIPTION": "Automatically converted from https://www.shadertoy.com/view/7ltyR4 by mati_software.  Different spirals are mixed to generate a colorful glow. One value of the music is used to transform the animation a little bit."
}*/

vec3 pal( in float t, in vec3 a, in vec3 b, in vec3 c, in vec3 d )
{
    return a + b*cos( 6.28318*(c*t+d) );
}

void main() {
    vec2 spiralCenter = RENDERSIZE.xy / 2.0;
    float abstandSpiralCenter = distance(gl_FragCoord.xy, spiralCenter);
    float abstandSpiralCenterNorm = abstandSpiralCenter / length(RENDERSIZE.xy / 2.0);

    float winkel = sqrt(abstandSpiralCenterNorm) * 10.0 * sin(TIME * .17)   + TIME * .61;
    vec2 vergleichspunkt = spiralCenter + abstandSpiralCenter * vec2(sin(winkel), cos(winkel));
    float abstandVergleichspunkt = distance(gl_FragCoord.xy, vergleichspunkt);
    float abstandVergleichspunktNorm = abstandVergleichspunkt / length(RENDERSIZE.xy / 2.0);
    float subtrahend = abstandVergleichspunktNorm / abstandSpiralCenterNorm;
    float winkel2 = sqrt(abstandSpiralCenterNorm) * 10.0 * sin(TIME * .23 + .1)   + TIME * .31;
    vec2 vergleichspunkt2 = spiralCenter + abstandSpiralCenter * vec2(sin(winkel2), cos(winkel2));
    float abstandVergleichspunkt2 = distance(gl_FragCoord.xy, vergleichspunkt2);
    float abstandVergleichspunktNorm2 = abstandVergleichspunkt2 / length(RENDERSIZE.xy / 2.0);
    float subtrahend2 = abstandVergleichspunktNorm2 / abstandSpiralCenterNorm;
    float winkel3 = sqrt(abstandSpiralCenterNorm) * 10.0 * sin(TIME * .41 + .62)   + TIME * .47;
    vec2 vergleichspunkt3 = spiralCenter + abstandSpiralCenter * vec2(sin(winkel3), cos(winkel3));
    float abstandVergleichspunkt3 = distance(gl_FragCoord.xy, vergleichspunkt3);
    float abstandVergleichspunktNorm3 = abstandVergleichspunkt3 / length(RENDERSIZE.xy / 2.0);
    float subtrahend3 = abstandVergleichspunktNorm3 / abstandSpiralCenterNorm;
    float winkel4 = sqrt(abstandSpiralCenterNorm) * 10.0 * sin(TIME * .38 + .17)   + TIME * .85;
    vec2 vergleichspunkt4 = spiralCenter + abstandSpiralCenter * vec2(sin(winkel4), cos(winkel4));
    float abstandVergleichspunkt4 = distance(gl_FragCoord.xy, vergleichspunkt4);
    float abstandVergleichspunktNorm4 = abstandVergleichspunkt4 / length(RENDERSIZE.xy / 2.0);
    float subtrahend4 = abstandVergleichspunktNorm4 / abstandSpiralCenterNorm;
    float winkel5 = sqrt(abstandSpiralCenterNorm) * 10.0 * sin(TIME * .48 + .95)   + TIME * .57;
    vec2 vergleichspunkt5 = spiralCenter + abstandSpiralCenter * vec2(sin(winkel5), cos(winkel5));
    float abstandVergleichspunkt5 = distance(gl_FragCoord.xy, vergleichspunkt5);
    float abstandVergleichspunktNorm5 = abstandVergleichspunkt5 / length(RENDERSIZE.xy / 2.0);
    float subtrahend5 = abstandVergleichspunktNorm5 / abstandSpiralCenterNorm;
    float winkel6 = sqrt(abstandSpiralCenterNorm) * 10.0 * sin(TIME * .29 + .27)   + TIME * .54;
    vec2 vergleichspunkt6 = spiralCenter + abstandSpiralCenter * vec2(sin(winkel6), cos(winkel6));
    float abstandVergleichspunkt6 = distance(gl_FragCoord.xy, vergleichspunkt6);
    float abstandVergleichspunktNorm6 = abstandVergleichspunkt6 / length(RENDERSIZE.xy / 2.0);
    float subtrahend6 = abstandVergleichspunktNorm6 / abstandSpiralCenterNorm;
    vec3 fragColor1 = vec3(2.0 - abstandVergleichspunktNorm - abstandVergleichspunktNorm4 - abstandVergleichspunktNorm6, 2.0 - abstandVergleichspunktNorm2 - abstandVergleichspunktNorm5 - abstandVergleichspunktNorm4, 2.0 - abstandVergleichspunktNorm3 - abstandVergleichspunktNorm6 - abstandVergleichspunktNorm5);
    vec3 fragColor2 = vec3(4.0 - subtrahend - subtrahend4 - subtrahend6, 4.0 - subtrahend2 - subtrahend5 - subtrahend4, 4.0 - subtrahend3 - subtrahend6 - subtrahend5);
    float faktor = IMG_NORM_PIXEL(waveImage,mod(vec2(0,0),1.0)).r;
    faktor = pow(faktor, exp);

    // vec3 col1 = pal( dot(fragColor2, fragColor1), vec3(0.8,0.5,0.4),vec3(0.2,0.4,0.2),vec3(2.0,1.0,1.0),vec3(0.0,0.25,0.25) );
    // vec3 col2 = pal( fragColor1.r / 4. + TIME / 2., vec3(0.5,0.5,0.5),vec3(0.5,0.5,0.5),vec3(1.0,0.8,1.0),vec3(0.0,0.33,0.67) );
    // fragColor1.rgb = col2;
    // faktor = 0.5;
    // fragColor2.rgb = col1;

    // Output to screen
    gl_FragColor = vec4(mix(fragColor1, fragColor2, faktor), 1.0);
}
