// 7セグの数字N（0～9）
float sevenSegNum(vec2 p, int N) {
    const vec2 segScale = vec2(0.18, 0.45); // セグメントの大きさ
    const float a = sqrt(2.) * 0.5;
    int char = int[](0xEE, 0xA0, 0xD6, 0xF4, 0xB8, 0x7C, 0x7E, 0xE0, 0xFE, 0xFC)[N];

    p.x += a * 3.;
    p = vec2(p.x - p.y, p.x + p.y) * a; // pを反時計回りにPI/4だけ回転
    ivec2 i = ivec2(floor(p));
    int shift = i.x + 3 * i.y;
    int musk = 1 << shift;
    bool on = (char & musk) > 0;
    on = on && (0 <= i.x) && (i.x <= 2);

    p = fract(p) - 0.5;
    p.y *= 1. - float((0xAB & musk) > 0) * 2.;

    float d = abs(p.x - p.y) * a - segScale.x;
    p = abs(p);
    d = max(d, max(p.x, p.y) - segScale.y);
    return smoothstep(.05, 0., d) * float(on);
}

// タイマー
vec3 colTimer(vec2 p, int[8] timeDigit, vec2 size, vec2 pos) {
    const float interval = 0.5;
    const float tilt = 0.1;
    const float pointSize = 0.08;
    vec3 col = vec3(0.);

    p -= pos;
    p /= size;

    // 上下の領域は描画しない
    if(abs(p.y) > sqrt(2.) * 0.75) {
        return vec3(0);
    }

    vec2 q = p;
    q.x += 4. + interval * 1.5 - q.y * tilt;

    bool drawNum = mod(q.x, 2. + interval) < 2.;

    q.x -= floor(q.x / (2. + interval)) * interval;
    int digit = 8 - int(floor(q.x));

    // 左右の領域は描画しない
    if(digit < 1 || 8 < digit) {
        return vec3(0);
    }

    q.x = fract(q.x) - 0.5;
    if(drawNum) {
        return vec3(sevenSegNum(q * 2.3, timeDigit[digit - 1]));
    }

    float s = 0.025;
    // コロン
    vec2 cpos = vec2(1. + interval * 0.5, 0.45);
    q = p;
    q.x += cpos.x - sign(q.y) * tilt * cpos.y;
    q = abs(q) - cpos;
    col += smoothstep(s, 0., length(q) - pointSize);

    // 100分の1秒の点
    vec2 ppos = vec2(2. + interval, -0.6);
    q = p - ppos;
    q.x += sign(p.y) * tilt * ppos.y;
    col += smoothstep(s, 0., length(q) - pointSize);

    return col;
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

void main() {
    vec2 uv = (FC.xy * 2. - r.xy) / min(r.x, r.y);
    vec3 col = vec3(0);

    const vec2 size = vec2(0.27, 0.27);
    const vec2 pos = vec2(0., 0.);
    int[8] timeDigit = calcTimeDigit(t);
    col += colTimer(uv, timeDigit, size, pos);
    
    o = vec4(col, 1);
}

// https://www.shadertoy.com/view/MfX3RH