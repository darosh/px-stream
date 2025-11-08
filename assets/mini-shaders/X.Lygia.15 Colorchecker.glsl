#include "lygia/draw/colorChecker.glsl"

void main() {
    vec2 uv = FC.xy / r.xy;

    // Define border size (0.1 = 10% border on each side)
    float borderSize = 10. / r.x;
    vec2 borderMin = vec2(borderSize);
    vec2 borderMax = vec2(1.0 - borderSize);

    // Remap UV from border area to 0-1 range
    vec2 checkerUV = (uv - borderMin) / (borderMax - borderMin);

    // Preserve aspect ratio
    float aspectRatio = r.x / r.y;
    if (aspectRatio > 1.0) {
        // Wider than tall - center horizontally
        checkerUV.x = (checkerUV.x - 0.5) * aspectRatio + 0.5;
    } else {
        // Taller than wide - center vertically
        checkerUV.y = (checkerUV.y - 0.5) / aspectRatio + 0.5;
    }

    o = colorChecker(checkerUV);
}
