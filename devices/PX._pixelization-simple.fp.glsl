varying vec2 texdim0;// Texture dimensions in pixels
varying vec2 texcoord0;// Texture coordinates in pixels

uniform sampler2DRect tex0;// Texture sampler

uniform int preview_mode;

uniform float resolution_x;// Grid density in [0, 1]
uniform float resolution_y;// Grid density in [0, 1]

// Shape
uniform int shape_type;// 0: square, 1: circle, 2: circle/honeycomb, 3: hex/honeycomb, 4: triangle
uniform float shape_rotation;
uniform float shape_scale;

// Grid Transform
uniform float grid_shift_x;
uniform float grid_shift_y;
uniform float grid_rotation;
uniform vec2 grid_center;

// Displacement
uniform float displacement;
uniform float disp_distance;
uniform float disp_angle;
uniform float disp_r_phase;
uniform float disp_g_phase;
uniform float disp_b_phase;

// Mapping
uniform int use_mapping;
uniform int mapping_mode;
uniform float mapping_intensity;
uniform int mapping_invert;

// Edge Processing
uniform float smoothing;
uniform float fade;
uniform float edge_distortion;
uniform float distort_freq;
uniform int use_oklab;

vec2 rotate_point(vec2 pos, float angle) {
    float c = cos(angle);
    float s = sin(angle);
    return vec2(pos.x * c - pos.y * s, pos.x * s + pos.y * c);
}

vec2 rotate_around_center(vec2 pos, vec2 center, float angle) {
    pos -= center;
    pos = rotate_point(pos, angle);
    pos += center;
    return pos;
}

float cbrtf(float v) {
    return pow(v, 1./3.);
}

vec3 srgb_to_linear(vec3 c) {
    return mix(c / 12.92, pow((c + 0.055) / 1.055, vec3(2.4)), step(0.04045, c));
}

vec3 linear_to_srgb(vec3 c) {
    return mix(12.92 * c, 1.055 * pow(c, vec3(1.0/2.4)) - 0.055, step(0.0031308, c));
}

vec3 rgb2oklab (vec3 c) {
    c = srgb_to_linear(c);

    float l = 0.4122214708 * c.r + 0.5363325363 * c.g + 0.0514459929 * c.b;
    float m = 0.2119034982 * c.r + 0.6806995451 * c.g + 0.1073969566 * c.b;
    float s = 0.0883024619 * c.r + 0.2817188376 * c.g + 0.6299787005 * c.b;

    float l_ = cbrtf(l);
    float m_ = cbrtf(m);
    float s_ = cbrtf(s);

    return vec3(
    0.2104542553*l_ + 0.7936177850*m_ - 0.0040720468*s_,
    1.9779984951*l_ - 2.4285922050*m_ + 0.4505937099*s_,
    0.0259040371*l_ + 0.7827717662*m_ - 0.8086757660*s_
    );
}

vec3 oklab2rgb(vec3 c) {
    float l_ = c.r + 0.3963377774 * c.g + 0.2158037573 * c.b;
    float m_ = c.r - 0.1055613458 * c.g - 0.0638541728 * c.b;
    float s_ = c.r - 0.0894841775 * c.g - 1.2914855480 * c.b;

    float l = l_*l_*l_;
    float m = m_*m_*m_;
    float s = s_*s_*s_;

    vec3 rgb = vec3(
    4.0767416621 * l - 3.3077115913 * m + 0.2309699292 * s,
    -1.2684380046 * l + 2.6097574011 * m - 0.3413193965 * s,
    -0.0041960863 * l - 0.7034186147 * m + 1.7076147010 * s
    );

    return linear_to_srgb(rgb);
}

vec3 mix_oklab(vec3 c1, vec3 c2, float t) {
    vec3 oklab1 = rgb2oklab(c1);
    vec3 oklab2 = rgb2oklab(c2);
    vec3 mixed_oklab = mix(oklab1, oklab2, t);

    return oklab2rgb(mixed_oklab);
}

float get_mapping_value(vec3 color) {
    float value = 0.0;

    if (mapping_mode == 0) {
        // RGB Luminance
        value = dot(color, vec3(0.299, 0.587, 0.114));
    } else if (mapping_mode == 1) {
        // RGB Saturation
        float maxVal = max(max(color.r, color.g), color.b);
        float minVal = min(min(color.r, color.g), color.b);
        value = (maxVal > 0.0) ? (maxVal - minVal) / maxVal : 0.0;
    } else if (mapping_mode == 2) {
        // RGB Average
        value = (color.r + color.g + color.b) / 3.0;
    } else if (mapping_mode == 3) {
        // RGB Max channel
        value = max(max(color.r, color.g), color.b);
    } else if (mapping_mode == 4) {
        // OKLAB Lightness
        vec3 oklab = rgb2oklab(color);
        value = oklab.r;
    } else if (mapping_mode == 5) {
        // OKLAB Chroma
        vec3 oklab = rgb2oklab(color);
        value = sqrt(oklab.g * oklab.g + oklab.b * oklab.b);
    } else if (mapping_mode == 6) {
        // OKLAB Hue
        vec3 oklab = rgb2oklab(color);
        value = atan(oklab.b, oklab.g) / 6.28318530718 + 0.5;
    }

    if (mapping_invert == 1) {
        value = 1.0 - value;
    }

    return clamp(value, 0.0, 1.0);
}

vec2 hex_center(vec2 cell_size, vec2 pixel_coord) {
    vec2 hex_cell_size = vec2(cell_size.x, cell_size.y * sqrt(3.0) / 2.0);
    float hex_offset = 0.5;// Same as your original code

    // Use your original indexing to find the base cell
    vec2 cell_index;
    cell_index.y = floor(pixel_coord.y / hex_cell_size.y);
    float x_offset = mod(cell_index.y, 2.0) < 1.0 ? 0.0 : hex_offset * cell_size.x;
    cell_index.x = floor((pixel_coord.x - x_offset) / cell_size.x);

    // Generate candidate centers - need more neighbors for hex grid
    vec2 candidates[9];
    vec2 candidate_indices[9];

    int idx = 0;
    // Check a 3x3 neighborhood around the base cell to ensure we get all possible closest hexes
    for (int dy = -1; dy <= 1; dy++) {
        for (int dx = -1; dx <= 1; dx++) {
            candidate_indices[idx] = cell_index + vec2(float(dx), float(dy));
            idx++;
        }
    }

    // Convert each candidate index to center using your exact formula
    for (int i = 0; i < 9; i++) {
        vec2 idx_vec = candidate_indices[i];
        float x_offset_candidate = mod(idx_vec.y, 2.0) < 1.0 ? 0.0 : hex_offset * cell_size.x;
        candidates[i] = vec2(idx_vec.x * cell_size.x + x_offset_candidate, idx_vec.y * hex_cell_size.y) + hex_cell_size * 0.5;
    }

    // Find the closest center
    vec2 closest_center = candidates[0];
    float min_dist = length(pixel_coord - candidates[0]);

    for (int i = 1; i < 9; i++) {
        float dist = length(pixel_coord - candidates[i]);
        if (dist < min_dist) {
            min_dist = dist;
            closest_center = candidates[i];
        }
    }

    return closest_center;
}

vec2 tri_center(vec2 cell_size, vec2 pixel_coord) {
    // Y is straightforward - which row?
    float row = floor(pixel_coord.y / cell_size.y);

    // X is about finding closest of 3 triangle centers in this row
    // For a given row, triangles have centers at regular intervals
    float x_spacing = cell_size.x * 0.5;// Triangles overlap by half their width

    // Find the base triangle index for this row
    float base_x_index = floor(pixel_coord.x / x_spacing);

    // Generate 3 candidate centers: left, center, right
    vec2 candidates[3];

    for (int i = 0; i < 3; i++) {
        float x_index = base_x_index - 1.0 + float(i);
        float center_x = (x_index + 0.5) * x_spacing;
        bool pointing_up = mod(x_index + row, 2.0) == 0.0;
        float y_offset = cell_size.y / 2. + (pointing_up ? 1. : -1.) * (cell_size.x * cell_size.x) / (8 * cell_size.y);
        float center_y = row * cell_size.y + y_offset;
        candidates[i] = vec2(center_x, center_y);
    }

    // Find closest center
    vec2 closest_center = candidates[0];
    float min_dist = length(pixel_coord - candidates[0]);

    for (int i = 1; i < 3; i++) {
        float dist = length(pixel_coord - candidates[i]);
        if (dist < min_dist) {
            min_dist = dist;
            closest_center = candidates[i];
        }
    }

    return closest_center;
}

vec2 norm_pos_r;

// Returns: xy = grid cell center in UV space [0, 1], z = 1.0 if inside shape, 0.0 if outside
vec3 pixel_to_grid(vec2 uv, vec2 size) {
    // Convert UV [0, 1] to pixel coordinates [0, texdim0.x] x [0, texdim0.y]
    vec2 pixel_coord = uv * texdim0;

    if (shape_type == 4) {
        size.y /= sqrt(3.0) / 2.0;
    }

    // Compute grid cell size in pixels (texdim0 / size gives pixels per cell)
    vec2 cell_size = texdim0 / size;

    // For honeycomb (shapes 2 and 3), adjust for hexagonal grid
    float hex_offset = shape_type == 2 || shape_type == 3 ? 0.5 : 0.0;// Offset x for honeycomb
    float hex_row_spacing = shape_type == 2 || shape_type == 3 ? sqrt(3.0) / 2.0 : 1.0;// Vertical spacing for hex grid

    // Adjust cell size for hexagonal grid (y-spacing is tighter)
    vec2 hex_cell_size = vec2(cell_size.x, cell_size.y * hex_row_spacing);

    // Find grid cell indices
    vec2 cell_index;
    if (shape_type == 2 || shape_type == 3) {
        vec2 pixel_coord = hex_center(cell_size, pixel_coord);
        cell_index.y = floor(pixel_coord.y / hex_cell_size.y);
        float x_offset = mod(cell_index.y, 2.0) < 1.0 ? 0.0 : hex_offset * cell_size.x;
        cell_index.x = floor((pixel_coord.x - x_offset) / cell_size.x);
    } else if (shape_type == 4) {
        vec2 pixel_coord = tri_center(cell_size, pixel_coord);
        cell_index.y = floor(pixel_coord.y / cell_size.y);
        float x_spacing = cell_size.x * 0.5;
        cell_index.x = floor(pixel_coord.x / x_spacing);
    } else {
        cell_index = floor(pixel_coord / cell_size);
    }

    // Compute grid cell center in pixel coordinates
    vec2 cell_center;
    if (shape_type == 2 || shape_type == 3) {
        // Hexagonal grid center
        float x_offset = mod(cell_index.y, 2.0) < 1.0 ? 0.0 : hex_offset * cell_size.x;
        cell_center = vec2(cell_index.x * cell_size.x + x_offset, cell_index.y * hex_cell_size.y) + hex_cell_size * 0.5;
    } else if (shape_type == 4) {
        float x_spacing = cell_size.x * 0.5;// Triangles overlap by half their width
        float center_x = (cell_index.x + 0.5) * x_spacing;
        bool pointing_up = mod(cell_index.x + cell_index.y, 2.0) == 0.0;
        float y_offset = cell_size.y / 2. + (pointing_up ? 1. : -1.) * (cell_size.x * cell_size.x) / (8 * cell_size.y);
        float center_y = cell_index.y * cell_size.y + y_offset;
        cell_center = vec2(center_x, center_y);
    } else {
        // Regular grid center
        cell_center = (cell_index + 0.5) * cell_size;
    }

    // Convert cell center back to UV space for output
    vec2 cell_center_uv = cell_center / texdim0;

    // Compute position within the cell (in pixel units)
    vec2 pos_in_cell = pixel_coord - cell_center;

    // Normalize position to [-0.5, 0.5] for shape calculations
    vec2 norm_pos = pos_in_cell / cell_size;

    float inside = 0.0;
    norm_pos = rotate_point(norm_pos, radians(shape_rotation));

    if (edge_distortion > 0.0) {
        float distort = sin(norm_pos.x * distort_freq * 6.28318) * sin(norm_pos.y * distort_freq * 6.28318);
        distort *= edge_distortion;
        norm_pos += distort;
    }

    if (shape_type == 0) { // Square
        if (shape_scale == 1.) {
            inside = 1.;
        } else {
            vec2 dist = abs(norm_pos / shape_scale);
            inside = dist.x <= 0.5 && dist.y <= 0.5 ? 1.0 : 0.0;
        }
    }
    else if (shape_type == 1 || shape_type == 2) { // Circle + Circle/honeycomb
        float dist = length(norm_pos / shape_scale);
        inside = dist <= 0.5 ? 1.0 : 0.0;
    }
    else if (shape_type == 3) { // Hex/honeycomb
        if (shape_scale == 1.) {
            inside = 1.;
        } else {
            vec2 abs_pos = abs(norm_pos / shape_scale);
            float hex_dist = max(abs_pos.y * 0.866 + abs_pos.x * 0.5, abs_pos.x);
            inside = hex_dist <= 0.5 ? 1.0 : 0.0;
        }
    }
    else if (shape_type == 4) { // Triangle
        if (shape_scale == 1.) {
            inside = 1.;
        } else if (mod(cell_index.x + cell_index.y, 2.) == 1.) {
            vec2 pos = (norm_pos - vec2(0.0, 0.1667 * shape_scale)) / shape_scale;// Center at centroid
            inside = (pos.y <= 0.5) && (pos.y >= -0.5) && (abs(pos.x) <= (0.5 - pos.y) * 0.5) ? 1.0 : 0.0;
        } else {
            norm_pos *= vec2(1., -1.);
            vec2 pos = (norm_pos - vec2(0.0, 0.1667 * shape_scale)) / shape_scale;// Center at centroid
            inside = (pos.y <= 0.5) && (pos.y >= -0.5) && (abs(pos.x) <= (0.5 - pos.y) * 0.5) ? 1.0 : 0.0;
        }
    }

    norm_pos_r = norm_pos;
    
    return vec3(cell_center_uv, inside);
}

void main() {
    vec4 original = vec4(-1.);

    // Work in pixel coordinates
    vec2 pixel_coord = texcoord0;// [0, texdim0.x] x [0, texdim0.y]
    float res_x = resolution_x;
    float res_y = resolution_y;

    // Apply mapping-based resolution modulation if enabled
    if (use_mapping == 1) {
        original = texture2DRect(tex0, texcoord0);
        float mapping_val = get_mapping_value(original.rgb);
        float modulation = mix(1.0 - mapping_intensity, 1.0 + mapping_intensity, mapping_val);
        res_x *= modulation;
        res_y *= modulation;
    }

    // Compute aspect ratio (width/height)
    float aspect = texdim0.x / texdim0.y;
    
    if (aspect >= 1.0) {
        res_y = res_y * aspect;
    } else {
        res_x = res_x / aspect;
    }

    // Convert resolution_x, resolution_y to number of grid cells
    float grid_cells_x = 1. / res_x;
    float grid_cells_y = 1. / res_y;

    // Grid size as number of cells
    vec2 size = vec2(grid_cells_x, grid_cells_y);

    // Convert pixel coordinates to normalized UV for pixel_to_grid
    vec2 uv = pixel_coord / texdim0;

    // Compute grid
    vec3 grid = pixel_to_grid(uv, size);

    // Apply grid rotation around center
    if (grid_rotation != 0.0) {
        grid.xy *= texdim0;
        grid.xy = rotate_around_center(grid.xy, grid_center * texdim0, radians(grid_rotation));
        grid.xy /= texdim0;
    }

    // Apply grid shift
    grid.xy += vec2(grid_shift_x, grid_shift_y);

    if (preview_mode == 1) {
        // Color: use grid.z to show shapes, color based on cell center or original texture
        original = original.a != -1. ? original : texture2DRect(tex0, texcoord0);
        vec3 color = grid.z > 0.5 ? vec3(grid.xy, 0.0) : original.rgb * 0.5;// Inside: show grid center; outside: dim texture
        gl_FragColor = vec4(color, 1.);
    } else {
        vec3 pixel_color;
        
        if (displacement > 0.0) {
            // Sample each channel with displacement
            float angle_rad = radians(disp_angle);
            vec2 disp_vec = vec2(cos(angle_rad), sin(angle_rad));

            vec2 r_coord = grid.xy + disp_vec * cos(radians(disp_r_phase)) * displacement;
            vec2 g_coord = grid.xy + disp_vec * cos(radians(disp_g_phase)) * displacement;
            vec2 b_coord = grid.xy + disp_vec * cos(radians(disp_b_phase)) * displacement;

            pixel_color.r = texture2DRect(tex0, r_coord * texdim0).r;
            pixel_color.g = texture2DRect(tex0, g_coord * texdim0).g;
            pixel_color.b = texture2DRect(tex0, b_coord * texdim0).b;
        } else {
            // Normal sampling
            pixel_color = texture2DRect(tex0, grid.xy * texdim0).rgb;
        }

        if (smoothing > 0.0) {
            original = original.a != -1. ? original : texture2DRect(tex0, texcoord0);
            float edge_dist = length(norm_pos_r);
            float edge_factor = smoothstep(0.5 - smoothing, 0.5, edge_dist);
            
            pixel_color = use_oklab == 1 
                ? mix(pixel_color, original.rgb, edge_factor)
                : mix_oklab(pixel_color, original.rgb, edge_factor);
        } else if (smoothing < 0.0) {
            float edge_dist = length(norm_pos_r);
            float edge_factor = smoothstep(0., .5, edge_dist);
            
            vec3 edge_color = mix(pixel_color * (1.0 + fade), pixel_color * (1.0 - fade), edge_factor);
            
            pixel_color = use_oklab == 1 
                ? mix(pixel_color, edge_color, -smoothing)
                : mix_oklab(pixel_color, edge_color, -smoothing);
        }

        vec4 color = grid.z > 0.5 ? vec4(pixel_color, 1.) : vec4(0.);
        gl_FragColor = color;
    }
}
