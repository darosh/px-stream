#ifndef FNC_SCIFISDF
#define FNC_SCIFISDF

float scifiSegmentSDF(vec2 p, vec2 a, vec2 b, float thickness) {
    vec2 pa = p - a, ba = b - a;
    float h = clamp(dot(pa, ba) / dot(ba, ba), 0.0, 1.0);
    return length(pa - ba * h) - thickness/2.0;
}

float scifiDigitSDF(vec2 p, int digitCode, float thickness, float width) {
    float d = 1;

    // Check each bit using bitwise AND
    if ((digitCode & 1) != 0)    d = min(d, scifiSegmentSDF(p, vec2(width * -0.5, 0.5), vec2(width * 0.0, 0.5), thickness));
    if ((digitCode & 2) != 0)    d = min(d, scifiSegmentSDF(p, vec2(width * 0.0, 0.5), vec2(width * 0.5, 0.5), thickness));
    if ((digitCode & 4) != 0)    d = min(d, scifiSegmentSDF(p, vec2(width * -0.25, 0.0), vec2(width * 0.25, 0.0), thickness));
    if ((digitCode & 8) != 0)    d = min(d, scifiSegmentSDF(p, vec2(width * -0.5, -0.5), vec2(width * 0.0, -0.5), thickness));
    if ((digitCode & 16) != 0)   d = min(d, scifiSegmentSDF(p, vec2(width * 0.0, -0.5), vec2(width * 0.5, -0.5), thickness));
    if ((digitCode & 32) != 0)   d = min(d, scifiSegmentSDF(p, vec2(width * -0.5, 0.5), vec2(-width * 0.5, 0.0), thickness));
    if ((digitCode & 64) != 0)   d = min(d, scifiSegmentSDF(p, vec2(width * -0.5, 0.0), vec2(-width * 0.5, -0.5), thickness));
    if ((digitCode & 128) != 0)  d = min(d, scifiSegmentSDF(p, vec2(width * 0.5, 0.5), vec2(width * 0.5, 0.0), thickness));
    if ((digitCode & 256) != 0)  d = min(d, scifiSegmentSDF(p, vec2(width * 0.5, 0.0), vec2(width * 0.5, -0.5), thickness));
    if ((digitCode & 512) != 0)  d = min(d, scifiSegmentSDF(p, vec2(width * -0.5, 0.5), vec2(width * 0.0, 0.0), thickness));
    if ((digitCode & 1024) != 0) d = min(d, scifiSegmentSDF(p, vec2(width * 0.0, 0.0), vec2(width * 0.5, 0.5), thickness));
    if ((digitCode & 2048) != 0) d = min(d, scifiSegmentSDF(p, vec2(width * -0.5, -0.5), vec2(width * 0.0, 0.0), thickness));
    if ((digitCode & 4096) != 0) d = min(d, scifiSegmentSDF(p, vec2(width * 0.0, 0.0), vec2(width * 0.5, -0.5), thickness));

    return d;
}

int digitToCode(int digit, int position) {
    int hash = (digit + 1) * 2654435761 + (position + 1) * 1597334677;
    hash = (hash ^ (hash >> 16)) * 0x45d9f3b;
    hash = (hash ^ (hash >> 16)) * 0x45d9f3b;
    hash = hash ^ (hash >> 16);

    return hash & 8191; // 8191 = 2^13 - 1
}

float scifiDigitsSDF(vec2 st, int value, int digits, float spacing, float thickness, float width) {
    vec2 p = st - vec2(0.5);
    float totalWidth = float(digits) * spacing;
    p.x += totalWidth / 2.0 - spacing / 2.0;

    float d = 1.;
    int carry = value;
    int divisor = 10;

    for (int pos = 0; pos < digits; pos++) {
        int digit = int(mod(float(carry), float(divisor)));
        carry = int(floor(float(carry) / float(divisor)));
        carry = carry < 1 ? value : carry;

        int charCode = digitToCode(digit, pos);
        vec2 charPos = p - vec2(float(pos) * spacing, 0.0);
        d = min(d, scifiDigitSDF(charPos, charCode, thickness, width));
    }

    return d;
}

#endif
