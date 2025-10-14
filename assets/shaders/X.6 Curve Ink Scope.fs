/*{
    "CREDIT": "by darosh",
    "CATEGORIES": ["Audio Visualizer"],
    "INPUTS": [{"NAME": "wavuImage", "TYPE": "audio", "MAX": "1024"}],
    "ISFVSN": "2",
    "DESCRIPTION": "XY Oscilloscope, bezier curves, ink style"
}*/

float length2(in vec2 v) {
    return dot(v, v);
}

// Distance to quadratic Bezier curve
float ssdBezier(in vec2 pos, in vec2 A, in vec2 B, in vec2 C) {
    vec2 a = B - A;
    vec2 b = A - 2.0 * B + C;
    vec2 c = a * 2.0;
    vec2 d = A - pos;

    float kk = 1.0 / dot(b, b);
    float kx = kk * dot(a, b);
    float ky = kk * (2.0 * dot(a, a) + dot(d, b)) / 3.0;
    float kz = kk * dot(d, a);

    float res = 0.0;
    float sgn = 0.0;

    float p = ky - kx * kx;
    float q = kx * (2.0 * kx * kx - 3.0 * ky) + kz;
    float p3 = p * p * p;
    float q2 = q * q;

    float h = q2 + 4.0 * p3;

    if(h >= 0.0) { // 1 root
        h = sqrt(h);
        vec2 x = (vec2(h, -h) - q) / 2.0;
        vec2 uv = sign(x) * pow(abs(x), vec2(1.0 / 3.0));
        float t = clamp(uv.x + uv.y - kx, 0.0, 1.0);

        // Evaluate curve at parameter t
        vec2 qos = d + (c + b * t) * t;
        res = length2(qos);
    } else { // 3 roots
        float z = sqrt(-p);
        float v = acos(q / (p * z * 2.0)) / 3.0;
        float m = cos(v);
        float n = sin(v) * 1.732050808;
        vec3 t = clamp(vec3(m + m, -n - m, n - m) * z - kx, 0.0, 1.0);

        vec2 qos = d + (c + b * t.x) * t.x;
        res = length2(qos);
        qos = d + (c + b * t.y) * t.y;
        res = min(res, length2(qos));
        qos = d + (c + b * t.z) * t.z;
        res = min(res, length2(qos));
    }

    return res;
}

void main() {
	// Convert screen space to waveform space
    vec2 p = (2.0 * gl_FragCoord.xy - RENDERSIZE.xy) / RENDERSIZE.y;

    float r2 = length(p);
    float tt = 1.0 + 0.1 * r2;
    p *= tt * 1.25;

    // Calculate distance field for this pixel
    float minDist = 10000.0;

    // Create smooth curves using 3-point Bezier segments
    int samples = 32;
    const float MAX_SEGMENT_LENGTH = 2.0;  // Skip segments longer than this (like oscilloscope trigger)
    const float MIN_AMPLITUDE = 0.1;      // Skip very quiet parts

    for(int i = 1; i < samples - 1; i++) {
        float h0 = float(i - 1) / float(samples - 1);
        float h1 = float(i) / float(samples - 1);
        float h2 = float(i + 1) / float(samples - 1);

        vec2 waveData0 = IMG_NORM_PIXEL(wavuImage, vec2(h0, 0.)).gr;
        vec2 waveData1 = IMG_NORM_PIXEL(wavuImage, vec2(h1, 0.)).gr;
        vec2 waveData2 = IMG_NORM_PIXEL(wavuImage, vec2(h2, 0.)).gr;

        vec2 A = (waveData0 - 0.5) * 6.0;  // Previous point
        vec2 B = (waveData1 - 0.5) * 6.0;  // Current point (control point)
        vec2 C = (waveData2 - 0.5) * 6.0;  // Next point

        // Oscilloscope-style "trigger" - skip if segment is too long or amplitude too low
        float segmentLength = distance(A, C);
        float amplitude = max(abs(B.y), max(abs(A.y), abs(C.y)));

        if(segmentLength > MAX_SEGMENT_LENGTH) {
            continue;  // Skip this segment - too much of a jump (like scope blanking)
        }

        if(amplitude < MIN_AMPLITUDE) {
            continue;  // Skip quiet parts (like scope trigger threshold)
        }

        // Early culling - skip if curve is far from current pixel
        vec2 curveCenter = (A + B + C) / 3.0;
        float distToCenter = distance(p, curveCenter);
        if(distToCenter > segmentLength + 1.0) {
            continue;  // This curve segment is too far away to contribute
        }

        // Create a smooth curve through these three points
        // Use B as control point, with curve endpoints between A-B and B-C
        vec2 P0 = mix(A, B, 0.5);  // Start point (halfway between A and B)
        vec2 P2 = mix(B, C, 0.5);  // End point (halfway between B and C)
        vec2 P1 = B;               // Control point

        float dist = ssdBezier(p, P0, P1, P2);
        minDist = min(minDist * 1.08 * 1.08, dist);
    }

    // Handle edge cases with linear segments
    // if(samples > 1) {
    // }

    minDist = sqrt(minDist);

    if(minDist > .04) {
        minDist = 1.;
    }

    // Store the distance in the buffer
    gl_FragColor.rgb = vec3(1. - minDist);
    gl_FragColor.a = 1.;
}
