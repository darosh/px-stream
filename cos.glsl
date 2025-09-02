// Cos Palette Texture Generator for jit.gen~
// Based on Íñigo Quílez's cos palette technique
// Formula: color = a + b * cos(6.28318 * (c * t + d))

// Parameters (these would be connected as inlets in your jit.gen~ object)
Param a_r(0.5);    // Red component - DC offset
Param a_g(0.5);    // Green component - DC offset
Param a_b(0.5);    // Blue component - DC offset
Param a_a(0.5);

Param b_r(0.5);    // Red component - Amplitude
Param b_g(0.5);    // Green component - Amplitude
Param b_b(0.5);    // Blue component - Amplitude
Param b_a(0.5);

Param c_r(1.0);    // Red component - Frequency
Param c_g(1.0);    // Green component - Frequency
Param c_b(1.0);    // Blue component - Frequency
Param c_a(1.0);

Param d_r(0.5);    // Red component - Phase
Param d_g(0.5);  // Green component - Phase
Param d_b(0.5);  // Blue component - Phase
Param d_a(0.5);

Param angle(0.0);  // Rotation angle in radians
Param density(1.0);  // Scale factor for the gradient

Param keep_aspect(1);  // 0 = stretch, 1 = maintain aspect ratio
Param scale_x(1.0);    // X axis scaling
Param scale_y(1.0);    // Y axis scaling
Param shift_x(0.0);    // X axis shift (proportional to image size)
Param shift_y(0.0);    // Y axis shift (proportional to image size)

Param pat(1.0);

// Center normalized coordinates around 0
cx = norm.x - 0.5;
cy = norm.y - 0.5;

// 1. ASPECT CORRECTION
if (keep_aspect) {
    width = dim("x");
    height = dim("y");
    aspect = dim.x / dim.y;

    if (aspect > 1.0) {
        cx = cx * aspect;  // Wider than tall
    } else {
        cy = cy / aspect;  // Taller than wide
    }
}

// 2. SCALING
cx = cx * scale_x;
cy = cy * scale_y;

// 3. SHIFTING
cx = cx + shift_x;
cy = cy + shift_y;

// 4. ROTATION
// angle = angle_deg * 3.14159265359 / 180.0;
cos_a = cos(angle);
sin_a = sin(angle);

x = cx * cos_a - cy * sin_a;
y = cx * sin_a + cy * cos_a;

// Create gradient parameter t
t = 0;
// Linear Radial Spiral Log Flower Twisted Ripples Hyperbolic Plasma Board Waves Liquid Veins Cells Clouds Fractal Flowing Random Noise Grid Turbulence Constant
if(pat < 1) {
    t = (x + y) * density;
} else if(pat < 2) {
    t = sqrt(x*x + y*y) * density;
} else if(pat < 3) {
    t = (atan2(y, x) / 6.28318 + sqrt(x*x + y*y)) * density;
} else if(pat < 4) {
    t = (atan2(y, x) / 6.28318 + log(sqrt(x*x + y*y) + 0.001)) * density;
} else if(pat < 5) {
    t = (atan2(y, x) * 5.0 / 6.28318 + sqrt(x*x + y*y)) * density;
} else if(pat < 6) {
    t = ((x + y) + sin(x * 5) * 0.1) * density;
} else if(pat < 7) {
    t = sin(sqrt(x * x + y * y) * 5) * density;
} else if(pat < 8) {
    t = (x * y) * 2 * density;
} else if(pat < 9) {
    t = (sin(x * 5) + sin(y * 5) + sin((x + y) * 2.5)) * density;
} else if(pat < 10) {
    t = (sin(x * 10) * sin(y * 10)) * density;
} else if(pat < 11) {
    t = (sin(x * 3 + y * 2) + sin(x * 5 - y * 3) * 0.7 + sin(x * 7 + y * 4) * 0.5) * density;
} else if(pat < 12) {
    t = (sin(x * 4) + cos(y * 3) + sin((x + y) * 2.5) * 0.8 + cos((x - y) * 1.7) * 0.6) * density;
} else if(pat < 13) {
    t = (sin((x + sin(y * 8) * 0.3) * 6) + cos(y * 4) * 0.7) * density;
} else if(pat < 14) {
    t = (sin(x * 6 + sin(y * 4) * 2) + cos(y * 5 + cos(x * 3) * 1.5)) * density;
} else if(pat < 15) {
    t = (sin(x * 2.3 + cos(y * 1.7) * 1.2) + sin(y * 3.1 + sin(x * 2.8) * 0.8) + cos((x + y) * 1.9) * 0.6) * density;
} else if(pat < 16) {
    branch1 = sin(x * 5 + sin(y * 3) * 2);
    branch2 = cos(y * 4 + cos(x * 6) * 1.5);
    t = (branch1 + branch2 * 0.7 + sin((branch1 + branch2) * 3) * 0.5) * density;
} else if(pat < 17) {
    wave1 = sin(x * 2.1 + y * 0.8);
    wave2 = cos(y * 3.2 + x * 1.3);
    wave3 = sin((x + y) * 1.7 + wave1 * 1.5);
    t = (wave1 + wave2 * 0.8 + wave3 * 0.6 + cos(x * 4.5) * 0.4) * density;
} else if(pat < 18) {
	n = vec(x, y);
	d = vec(0.0, 1.0);
	b = floor(n);
	f = smoothstep(vec(0, 0), vec(1, 1), fract(n));
	rb = fract(sin(b.x + b.y * 100.0) * 43758.545312);
	ryx = fract(sin(b.x + 1.0 + b.y * 100.0) * 43758.545312);
	rxy = fract(sin(b.x + (b.y + 1.0) * 100.0) * 43758.545312);
	ryy = fract(sin(b.x + 1.0 + (b.y + 1.0) * 100.0) * 43758.545312);
	t = mix(mix(rb, ryx, f.r), mix(rxy, ryy, f.r), f.g) * density;
} else if(pat < 19) {
    t = (sin(x * 12.9898) * cos(y * 78.233) * 43758.5453) * density;
} else if(pat < 20) {
    gx = floor(x * 16);
    gy = floor(y * 16);
    fx = x * 8;
    fx = fx - floor(fx);
    fy = y * 8;
    fy = fy - floor(fy);
    h = sin(gx * 12.9898 + gy * 78.233) * 43758.5453;
    t = h * density;
} else if(pat < 21) {
    turb = sin(x * 4 + sin(y * 3) * 2) + sin(x * 8 + cos(y * 6) * 1) * 0.5 + sin(x * 16 + sin(y * 12) * 0.5) * 0.25;
    t = turb * density;
} else if(pat < 22) {
    t = .5;
}

// Apply cos palette formula for each color channel
// color = a + b * cos(2π * (c * t + d))
r = a_r + b_r * cos(6.28318530718 * (c_r * t + d_r));
g = a_g + b_g * cos(6.28318530718 * (c_g * t + d_g));
b = a_b + b_b * cos(6.28318530718 * (c_b * t + d_b));
a = a_a + b_a * cos(6.28318530718 * (c_a * t + d_a));

// Clamp values to 0-1 range
r = clamp(r, 0, 1);
g = clamp(g, 0, 1);
b = clamp(b, 0, 1);
a = clamp(a, 0, 1);

// Output RGBA
out1 = vec(r, g, b, a);
