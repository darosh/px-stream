#ifndef FNC_RUNESSDF
#define FNC_RUNESSDF

#include "../../lygia/sdf/lineSDF.glsl"
#include "../../lygia/generative/snoise.glsl"

// Based on https://www.shadertoy.com/view/4ltyDM
// --- glyphs simplified from "runes" by otaviogood. https://shadertoy.com/view/MsXSRn

// Makes a rune in the 0..1 uv space. Seed is which rune to draw.
float runeSDF(vec2 st, vec2 seed)
{
    float d = 1e5;

    for (int i = 0; i < 4; i++)// number of strokes
    {
        vec4 pos = vec4(snoise2(seed), snoise2(seed + 1.));
        // seed += 2.;

        // expand the range and mod it to get a nicely distributed random number - hopefully. :)
        pos = fract(pos * 128.);

        // each rune touches the edge of its box on all 4 sides
        if (i == 0) pos.y = .0;
        if (i == 1) pos.x = .999;
        if (i == 2) pos.x = .0;
        if (i == 3) pos.y = .999;

        // snap the random line endpoints to a grid 2x3
        vec4 snaps = vec4(2, 3, 2, 3);
        pos = (floor(pos * snaps) + .5) / snaps;

        d = min(d, lineSDF(st, pos.xy, pos.zw + .001)); // closest line
    }

    return d;
}

#endif
