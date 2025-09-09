varying vec2 texcoord0;
varying vec2 texdim0;
uniform vec2 size;
uniform vec2 scale;
uniform vec2 offset;
uniform vec2 origin;
uniform float rotation;
uniform float mirror_blend;
uniform float edge_softness;
uniform float edge_brightness;
uniform float variation;
uniform sampler2DRect tex0;

const float pi = 3.1415926;
const float sqrt2 = 1.4142135623730951;

// Rotation matrix
mat2 rotate(float angle) {
    float c = cos(angle);
    float s = sin(angle);
    return mat2(c, -s, s, c);
}

vec2 kaleidoscopeFold(vec2 p) {
    // Create the fundamental triangular region for 90°/45°/45° kaleidoscope
    // This creates 8-fold symmetry with asymmetric variations

    // Make coordinates positive (vertical mirror)
    p = abs(p);

    // 45° mirrors - fold into triangular wedge
    // This is the key for seamless tiling: we create a fundamental triangle
    // that naturally tiles when repeated
    if (p.x + p.y > 1.0) {
        p = 1.0 - p.yx;// Reflect across line x + y = 1
    }

    if (p.y > p.x) {
        p = p.yx;// Reflect across line y = x
    }

    return p;
}

// 4-fold square pattern (Fig. 33)
vec2 kaleidoscopeFoldSquare(vec2 p) {
    // Create fundamental square region with 4-fold symmetry
    p = abs(p);// First quadrant

    // Fold into triangular region
    if (p.x > p.y) {
        p = p.yx;// Swap to create 8-fold, then we'll reduce to 4-fold
    }

    return p;
}

// 6-fold hexagonal pattern (Fig. 34)
vec2 kaleidoscopeFoldHexagonal(vec2 p) {
    // Create fundamental triangular region for hexagonal symmetry
    const float sqrt3 = 1.7320508075688772;
    const float angle60 = pi / 3.0;

    // Convert to polar-like coordinates for hexagonal folding
    p = abs(p);

    // Fold into 60-degree wedge
    // This creates the fundamental triangle of a hexagon
    for (int i = 0; i < 3; i++) {
        float a = dot(p, vec2(cos(angle60), sin(angle60)));
        if (a > 0.0) {
            p -= 2.0 * a * vec2(cos(angle60), sin(angle60));
        }
        p = abs(p);
    }

    return p;
}

// 8-fold octagonal pattern (Fig. 35)
vec2 kaleidoscopeFoldOctagonal(vec2 p) {
    // Create fundamental triangular region for octagonal symmetry
    const float angle45 = pi / 4.0;
    const float cos45 = cos(angle45);
    const float sin45 = sin(angle45);

    p = abs(p);

    // Fold across 45-degree lines to create octagonal symmetry
    // This creates 8 symmetric segments
    if (p.x + p.y > 1.0) {
        p = vec2(1.0 - p.y, 1.0 - p.x);
    }

    // Additional 45-degree fold
    vec2 folded = vec2(p.x * cos45 + p.y * sin45, -p.x * sin45 + p.y * cos45);
    if (folded.y < 0.0) {
        folded.y = -folded.y;
        p = vec2(folded.x * cos45 - folded.y * sin45, folded.x * sin45 + folded.y * cos45);
    }

    return p;
}

// 12-fold star pattern (Fig. 36)
vec2 kaleidoscopeFold12Fold(vec2 p) {
    // Create fundamental triangular region for 12-fold symmetry
    const float angle30 = pi / 6.0;// 30 degrees
    const float angle60 = pi / 3.0;// 60 degrees

    // Convert to angle and radius
    float angle = atan(p.y, p.x);
    float radius = length(p);

    // Fold angle into fundamental 30-degree wedge
    angle = abs(angle);
    angle = mod(angle, angle60);
    if (angle > angle30) {
        angle = angle60 - angle;
    }

    // Convert back to cartesian
    p = radius * vec2(cos(angle), sin(angle));

    // Additional radial folding for star pattern
    p = abs(p);

    return p;
}

// Alternative triangular pattern (creates complex star-like patterns)
vec2 kaleidoscopeFoldTriangular(vec2 p) {
    // Create fundamental triangular region
    const float sqrt3 = 1.7320508075688772;

    p = abs(p);

    // Fold into equilateral triangle
    p.x = abs(p.x);
    p -= vec2(0.5, sqrt3 * 0.5) * max(0.0, dot(p, vec2(0.5, sqrt3 * 0.5)) * 2.0 - 1.0);

    return p;
}

// 5-fold pattern (not in original Brewster but mathematically interesting)
vec2 kaleidoscopeFold5Fold(vec2 p) {
    // Create fundamental region for 5-fold symmetry
    float angle = atan(p.y, p.x);
    float radius = length(p);

    const float angle72 = pi * 2.0 / 5.0;// 72 degrees
    const float angle36 = pi / 5.0;// 36 degrees

    // Fold into fundamental wedge
    angle = abs(angle);
    angle = mod(angle, angle72);
    if (angle > angle36) {
        angle = angle72 - angle;
    }

    return radius * vec2(cos(angle), sin(angle));
}

// Simple and reliable: Just use original coordinates
float getSimpleMirrorDistance(vec2 uv, float sectors) {
    if (sectors == 0) { // Square
        return min(min(abs(uv.x), abs(uv.y)),
        abs(abs(uv.x) - abs(uv.y)) / sqrt2);
    }
    else { // For rotational patterns, use angular approach
        float angle = atan(uv.y, uv.x);
        float radius = length(uv);
        float sector_angle = 2.0 * pi / sectors;
        float angle_in_sector = mod(angle + pi, sector_angle);
        float dist_to_edge = min(angle_in_sector, sector_angle - angle_in_sector);

        return dist_to_edge * radius;
    }
}

void main() {
    // Start with screen coordinates, properly centered
    vec2 screen_uv = texcoord0 / texdim0;
    vec2 centered_uv = (screen_uv - 0.5) * 2.0;
    centered_uv.x *=  texdim0.x / texdim0.y;

    // Apply transformations
    vec2 uv = centered_uv * scale - origin;

    // The key insight: create a coordinate system that naturally tiles
    // by using a period that matches our kaleidoscope symmetry

    // Scale up the coordinate system so our kaleidoscope pattern repeats
    vec2 scaled_uv = uv * 0.5;// Adjust this to control pattern density

    // Get the tile coordinates for asymmetric variations
    vec2 tile_id = floor(scaled_uv);
    vec2 local_uv = fract(scaled_uv);

    // Convert to centered coordinates [-0.5, 0.5] for kaleidoscope folding
    local_uv = local_uv - 0.5;

    // Apply asymmetric variations based on tile position
    bool flip_x = mod(tile_id.x, 2.0) > 0.5;
    bool flip_y = mod(tile_id.y, 2.0) > 0.5;

    if (flip_x) local_uv.x = -local_uv.x;
    if (flip_y) local_uv.y = -local_uv.y;

    vec2 folded_uv;
    float sector_count;

    // Apply kaleidoscope folding
    if (variation < 1.) {
        folded_uv = kaleidoscopeFold(local_uv);
        sector_count = 0;
    } else if (variation < 2.) {
        folded_uv = kaleidoscopeFoldTriangular(local_uv);
        sector_count = 3;
    } else if (variation < 3.) {
        folded_uv = kaleidoscopeFoldSquare(local_uv);
        sector_count = 0;
    } else if (variation < 4.) {
        folded_uv = kaleidoscopeFold5Fold(local_uv);
        sector_count = 5;
    } else if (variation < 5.) {
        folded_uv = kaleidoscopeFoldHexagonal(local_uv);
        sector_count = 6;
    } else if (variation < 6.) {
        folded_uv = kaleidoscopeFoldOctagonal(local_uv);
        sector_count = 16;
    } else {
        folded_uv = kaleidoscopeFold12Fold(local_uv);
        sector_count = 12;
    }

    // Apply rotation to the folded coordinates (this rotates content within segments)
    folded_uv = rotate(rotation) * folded_uv;

    // Convert back to texture coordinates
    vec2 tex_coords = folded_uv + offset;

    // Ensure seamless wrapping
    tex_coords = mod(tex_coords + 1.0, 1.0);

    // Convert to texture space
    vec2 final_coords = tex_coords * texdim0;

    // Sample texture
    vec4 color = texture2DRect(tex0, final_coords);

    // Calculate distance to mirror edges for soft blending
    float edge_dist = getSimpleMirrorDistance(local_uv, sector_count);
    float edge_factor = smoothstep(edge_brightness, edge_softness, edge_dist);

    // Apply edge blending
    color.rgb *= mix(0., 1.0, edge_factor * mirror_blend);

    gl_FragColor = color;
}
