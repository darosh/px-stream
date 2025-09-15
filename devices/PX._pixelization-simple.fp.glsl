varying vec2 texdim0;// Texture dimensions in pixels
varying vec2 texcoord0;// Texture coordinates in pixels

uniform sampler2DRect tex0;// Texture sampler
uniform float resolution_x;// Grid density in [0, 1]
uniform float resolution_y;// Grid density in [0, 1]
uniform int shape_type;// 0: square, 1: circle, 2: circle/honeycomb, 3: hex/honeycomb, 4: triangle
uniform int preview_mode;
uniform float shape_scale;

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

    if (shape_type == 0) { // Square
        if (shape_scale == 1.) {
            inside = 1.;
        } else {
            vec2 dist = abs(norm_pos / shape_scale);
            inside = dist.x <= 0.5 && dist.y <= 0.5 ? 1.0 : 0.0;
        }
    }
    else if (shape_type == 1 || shape_type == 2) { // Circle + Circle/honeycomb
        if (shape_scale == 1.) {
            inside = 1.;
        } else {
            float dist = length(norm_pos / shape_scale);
            inside = dist <= 0.5 ? 1.0 : 0.0;
        }
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

    return vec3(cell_center_uv, inside);
}

void main() {
    // Work in pixel coordinates
    vec2 pixel_coord = texcoord0;// [0, texdim0.x] x [0, texdim0.y]

    // Compute aspect ratio (width/height)
    float aspect = texdim0.x / texdim0.y;

    // Convert resolution_x, resolution_y to number of grid cells
    float grid_cells_x, grid_cells_y;
    if (aspect >= 1.0) {
        // Wider texture: base grid on width
        grid_cells_x = 1. / resolution_x;// Number of cells along width
        grid_cells_y = 1. / resolution_y / aspect;// Adjust for aspect ratio
    } else {
        // Taller texture: base grid on height
        grid_cells_x = 1. / resolution_x * aspect;// Adjust for aspect ratio
        grid_cells_y = 1. / resolution_y;// Number of cells along height
    }

    // Grid size as number of cells
    vec2 size = vec2(grid_cells_x, grid_cells_y);

    // Convert pixel coordinates to normalized UV for pixel_to_grid
    vec2 uv = pixel_coord / texdim0;

    // Compute grid
    vec3 grid = pixel_to_grid(uv, size);

    if (preview_mode == 1) {
        // Color: use grid.z to show shapes, color based on cell center or original texture
        vec4 original = texture2DRect(tex0, texcoord0);
        vec3 color = grid.z > 0.5 ? vec3(grid.xy, 0.0) : original.rgb * 0.5;// Inside: show grid center; outside: dim texture
    } else {
        vec4 color = grid.z > 0.5 ? texture2DRect(tex0, grid.xy * texdim0).rgba : vec4(0.);
        gl_FragColor = color, 1.0;
    }
}
