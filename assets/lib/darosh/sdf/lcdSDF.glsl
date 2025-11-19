#ifndef FNC_LCDSDF
#define FNC_LCDSDF

#ifndef LCD_TILT
#define LCD_TILT 0.1
#endif

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

    if (!isActive) return 1e10;// Very large distance if segment is off

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
    const float tilt = LCD_TILT;
    const float pointSize = 0.08;

    vec2 cpos = vec2(1. + interval * 0.5, 0.45);
    vec2 q = p;
    q.x += cpos.x - sign(q.y) * tilt * cpos.y;
    q = abs(q) - cpos;

    return length(q) - pointSize;
}

float lcdDotSDF(vec2 p) {
    const float interval = 0.5;
    const float tilt = LCD_TILT;
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

float lcdTimerSDF(vec2 p, float time) {
    int[8] timeDigit = calcTimeDigit(time);

    const float interval = 0.5;
    const float tilt = LCD_TILT;
    const float pointSize = 0.08;

    // 上下の領域は描画しない
    if (abs(p.y) > sqrt(2.) * 0.75) {
        return 1e5;
    }

    vec2 q = p;
    q.x += 4. + interval * 1.5 - q.y * tilt;

    bool drawNum = mod(q.x, 2. + interval) < 2.;

    q.x -= floor(q.x / (2. + interval)) * interval;
    int digit = 8 - int(floor(q.x));

    // 左右の領域は描画しない
    if (digit < 1 || 8 < digit) {
        return 1e5;
    }

    q.x = fract(q.x) - 0.5;

    if (drawNum) {
        return lcdDigitSDF(q * 2.3, timeDigit[digit - 1]);
    }

    return min(lcdDotSDF(p), lcdDoubleDotSDF(p));
}

float lcdTimeSDF(vec2 p, float time) {
    int[8] timeDigit = calcTimeDigit(time);

    const float interval = 0.5;
    const float tilt = LCD_TILT;
    const float pointSize = 0.08;

    // 上下の領域は描画しない
    if (abs(p.y) > sqrt(2.) * 0.75) {
        return 1e5;
    }

    vec2 q = p;
    q.x += 2.75 + interval * 1.5 - q.y * tilt;

    bool drawNum = mod(q.x, 2. + interval) < 2.;

    q.x -= floor(q.x / (2. + interval)) * interval;
    int digit = 8 - int(floor(q.x));

    // 左右の領域は描画しない
    if (digit < 3 || 8 < digit) {
        return 1e5;
    }

    q.x = fract(q.x) - 0.5;

    if (drawNum) {
        return lcdDigitSDF(q * 2.3, timeDigit[digit - 1]);
    }

    return lcdDoubleDotSDF(vec2(p.x -1.25, p.y));
}

float lcdIntSDF(vec2 p, int value, int digits) {
    const float tilt = LCD_TILT;

    // Early exit: vertical bounds check
    if (abs(p.y) > sqrt(2.) * 0.75) {
        return 1e5;
    }

    vec2 q = p;
    // Center the display
    q.x += float(digits) / 2. - q.y * tilt;

    // Determine which digit cell this pixel belongs to
    bool drawNum = mod(q.x, 1.) < 1.;

    // Early exit: not in a digit cell
    if (!drawNum) {
        return 1e5;
    }

    // Calculate which digit index (from right)
    int digitIndex = digits - 1 - int(floor(q.x / 1.));

    // Early exit: outside valid digit range
    if (digitIndex < 0 || digitIndex >= digits) {
        return 1e5;
    }

    // Extract the specific digit from value
    int divisor = 1;
    for (int i = 0; i < digitIndex; i++) {
        divisor *= 10;
    }

    int digit = (value / divisor) % 10;

    // Transform to digit-local coordinates
    q.x = mod(q.x, 1.) - 0.5;

    return lcdDigitSDF(q * 2.3, digit);
}

float lcdIntSDF(vec2 p, int value) {
    int digits = (value == 0) ? 1 : (int(floor(log(float(abs(value))) / log(10.) + 1e-6)) + 1);

    return lcdIntSDF(p, value, digits);
}

float lcdFloatSDF(vec2 p, float value, int decDigits, int intDigits) {
    const float tilt = LCD_TILT;
    const float interval = 0.5;

    // Early exit: vertical bounds check
    if (abs(p.y) > sqrt(2.) * 0.75) {
        return 1e5;
    }

    vec2 q = p;
    // Center the display (total digits + space for decimal point)
    q.x += float(intDigits + decDigits) / 2. + interval * 0.5 - q.y * tilt;

    // Check if we're in the decimal point region
    float dotX = float(intDigits) + interval * 0.5;
    if (abs(q.x - dotX) < interval * .5) {
        q.x -= floor(dotX) - 2. - interval * 0.25;
        return lcdDotSDF(q);
    }

    // Determine which digit cell this pixel belongs to
    float cellX = q.x;
    if (q.x > dotX) {
        cellX -= interval;// Shift past the dot
    }

    bool drawNum = mod(cellX, 2.) < 2.;
    if (!drawNum) {
        return 1e5;
    }

    // Calculate which digit index (from right, including decimals)
    int totalDigits = intDigits + decDigits;
    int digitIndex = totalDigits - 1 - int(floor(cellX / 1.));

    if (digitIndex < 0 || digitIndex >= totalDigits) {
        return 1e5;
    }

    // Extract the specific digit from value
    float shiftedValue = value * pow(10., float(decDigits));
    int intValue = int(abs(shiftedValue) + 0.5);

    int divisor = 1;
    for (int i = 0; i < digitIndex; i++) {
        divisor *= 10;
    }

    int digit = (intValue / divisor) % 10;

    // Transform to digit-local coordinates
    cellX = mod(cellX, 1.) - 0.5;
    vec2 digitP = vec2(cellX, q.y);

    return lcdDigitSDF(digitP * 2.3, digit);
}

float lcdFloatSDF(vec2 p, float value, int decDigits) {
    int digits = (int(value) == 0) ? 1 : (int(floor(log(floor(abs(value))) / log(10.) + 1e-6)) + 1);

    return lcdFloatSDF(p, value, decDigits, digits);
}

#endif
