#ifndef FNC_LCDSDF
#define FNC_LCDSDF

// https://www.shadertoy.com/view/MfX3RH
// CC BY-NC-SA 3.0
float lcdDigitSDF(vec2 p, int digit) {
    const float a = sqrt(2.) * 0.5;
    const int chars[10] = int[](0xEE, 0xA0, 0xD6, 0xF4, 0xB8, 0x7C, 0x7E, 0xE0, 0xFE, 0xFC);

    int charMask = chars[digit];

    // Rotate point
    p.x += a * 3.0;
    p = vec2(p.x - p.y, p.x + p.y) * a;

    ivec2 cell = ivec2(floor(p));
    int shift = cell.x + 3 * cell.y;
    int segmentMask = 1 << shift;
    bool isActive = (charMask & segmentMask) > 0 && cell.x >= 0 && cell.x <= 2;

    if (!isActive) return 1e10; // Very large distance if segment is off

    // Get segment SDF
    vec2 cellP = p - vec2(cell);
    cellP.y *= 1.0 - float((0xAB & segmentMask) > 0) * 2.0;
    cellP = fract(cellP) - 0.5;

    const vec2 segScale = vec2(0.18, 0.45);
    float d = abs(cellP.x - cellP.y) * a - segScale.x;
    cellP = abs(cellP);
    d = max(d, max(cellP.x, cellP.y) - segScale.y);

    return d;
}

float lcdDoubleDotSDF(vec2 p) {
    const float interval = 0.5;
    const float tilt = 0.1;
    const float pointSize = 0.08;

    vec2 cpos = vec2(1. + interval * 0.5, 0.45);
    vec2 q = p;
    q.x += cpos.x - sign(q.y) * tilt * cpos.y;
    q = abs(q) - cpos;
    
    return length(q) - pointSize;
}

float lcdDotSDF(vec2 p) {
    const float interval = 0.5;
    const float tilt = 0.1;
    const float pointSize = 0.08;

    vec2 ppos = vec2(2. + interval, -0.6);
    vec2 q = p - ppos;
    q.x += sign(p.y) * tilt * ppos.y;
    
    return length(q) - pointSize;
}

int[8] calcTimeDigit(float time) {
    int hundredths = int(fract(time) * 100. + 0.5) % 100;
    int seconds = int(time) % 60;
    int minutes = int(time / 60.) % 60;
    int hours = int(time / 3600.) % 100;
    int[8] timeDigit = int[](hundredths % 10,
    hundredths / 10,
    seconds    % 10,
    seconds    / 10,
    minutes    % 10,
    minutes    / 10,
    hours      % 10,
    hours      / 10);
    return timeDigit;
}

float lcdTimerSDF(vec2 p, vec2 size, vec2 pos, float time) {
    int[8] timeDigit = calcTimeDigit(time);

    const float interval = 0.5;
    const float tilt = 0.1;
    const float pointSize = 0.08;

    p -= pos;
    p /= size;

    // 上下の領域は描画しない
    if(abs(p.y) > sqrt(2.) * 0.75) {
        return 1e5;
    }

    vec2 q = p;
    q.x += 4. + interval * 1.5 - q.y * tilt;

    bool drawNum = mod(q.x, 2. + interval) < 2.;

    q.x -= floor(q.x / (2. + interval)) * interval;
    int digit = 8 - int(floor(q.x));

    // 左右の領域は描画しない
    if(digit < 1 || 8 < digit) {
        return 1e5;
    }

    q.x = fract(q.x) - 0.5;
    if(drawNum) {
        return lcdDigitSDF(q * 2.3, timeDigit[digit - 1]);
    }

    return min(lcdDotSDF(p), lcdDoubleDotSDF(p));
}

#endif
