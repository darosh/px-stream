#version 330 core

in jit_PerVertex {
    vec2 texcoord;
} jit_in;

layout (location = 0) out vec4 outColor;

uniform sampler2DRect image0;
uniform sampler2DRect image1;
uniform sampler2DRect image2;
uniform sampler2DRect image3;
uniform sampler2DRect image4;
uniform sampler2DRect image5;
uniform sampler2DRect image6;
uniform sampler2DRect image7;

uniform vec2 grid_size;
uniform vec2 grid_offset;
uniform bool center_mode;
uniform bool join_mode;
uniform float gap_size;
uniform int aspect_mode;// 0=fit, 1=fill, 2=stretch
uniform vec2 targetdim;

// 5x5 matrix of channel assignments
uniform int cell_00, cell_01, cell_02, cell_03, cell_04;
uniform int cell_10, cell_11, cell_12, cell_13, cell_14;
uniform int cell_20, cell_21, cell_22, cell_23, cell_24;
uniform int cell_30, cell_31, cell_32, cell_33, cell_34;
uniform int cell_40, cell_41, cell_42, cell_43, cell_44;

// Scale UV with aspect correction
// scaleMode: 0=fit (letterbox), 1=fill (crop), 2=stretch
vec2 scaleUV(vec2 uv, vec2 texSize, vec2 targetSize, int scaleMode) {
    if (scaleMode == 2) {
        // Stretch - just use uv as-is and convert to rect coords
        return uv * texSize;
    }

    float texRatio = texSize.x / texSize.y;
    float targetRatio = targetSize.x / targetSize.y;

    vec2 scale;

    if (scaleMode == 0) {
        // Fit (contain) - scale to fit inside, leaving black bars
        if (texRatio > targetRatio) {
            // Texture is wider than target - constrain by width
            scale.x = 1.0;
            scale.y = texRatio / targetRatio;
        } else {
            // Texture is taller than target - constrain by height
            scale.x = targetRatio / texRatio;
            scale.y = 1.0;
        }
    } else {
        // Fill (cover) - scale to fill entire frame, cropping edges
        if (texRatio > targetRatio) {
            // Texture is wider than target - constrain by height, crop width
            scale.x = targetRatio / texRatio;
            scale.y = 1.0;
        } else {
            // Texture is taller than target - constrain by width, crop height
            scale.x = 1.0;
            scale.y = texRatio / targetRatio;
        }
    }

    // Apply scale (centering the image)
    vec2 scaledUV = (uv - 0.5) * scale + 0.5;

    // Convert normalized coords to rect pixel coords
    return scaledUV * texSize;
}

// Get channel assignment for a given cell
int getCell(int col, int row) {
    if (row == 0) {
        if (col == 0) return cell_00;
        if (col == 1) return cell_01;
        if (col == 2) return cell_02;
        if (col == 3) return cell_03;
        if (col == 4) return cell_04;
    } else if (row == 1) {
        if (col == 0) return cell_10;
        if (col == 1) return cell_11;
        if (col == 2) return cell_12;
        if (col == 3) return cell_13;
        if (col == 4) return cell_14;
    } else if (row == 2) {
        if (col == 0) return cell_20;
        if (col == 1) return cell_21;
        if (col == 2) return cell_22;
        if (col == 3) return cell_23;
        if (col == 4) return cell_24;
    } else if (row == 3) {
        if (col == 0) return cell_30;
        if (col == 1) return cell_31;
        if (col == 2) return cell_32;
        if (col == 3) return cell_33;
        if (col == 4) return cell_34;
    } else if (row == 4) {
        if (col == 0) return cell_40;
        if (col == 1) return cell_41;
        if (col == 2) return cell_42;
        if (col == 3) return cell_43;
        if (col == 4) return cell_44;
    }
    return 0;
}

// Get bounding box for all cells with matching channel
void getChannelBounds(int channel, out ivec2 minCell, out ivec2 maxCell) {
    minCell = ivec2(5, 5);
    maxCell = ivec2(-1, -1);

    for (int r = 0; r < 5; r++) {
        for (int c = 0; c < 5; c++) {
            if (getCell(c, r) == channel) {
                minCell = min(minCell, ivec2(c, r));
                maxCell = max(maxCell, ivec2(c, r));
            }
        }
    }
}

// Sample from the correct texture based on channel index
vec4 sampleChannel(int channel, vec2 uv, vec2 cellSize, int col, int row) {
    vec2 texSize;
    vec2 texCoord;
    vec2 finalUV = uv;
    vec2 finalCellSize = cellSize;

    // In join mode, calculate UV across bounding box of all cells with same channel
    if (join_mode) {
        ivec2 minCell, maxCell;
        getChannelBounds(channel, minCell, maxCell);

        // Calculate bounding box dimensions
        ivec2 boundSize = maxCell - minCell + ivec2(1, 1);

        if (boundSize.x > 1 || boundSize.y > 1) {
            // This channel spans multiple cells
            // Calculate position within the bounding box
            vec2 posInBound = vec2(col - minCell.x, row - minCell.y);

            // Map UV to position within the full bounding box
            finalUV = (posInBound + uv) / vec2(boundSize);

            // Adjust cell size to be the full bounding box size
            finalCellSize = cellSize * vec2(boundSize);
        }
    }

    if (channel == 0) {
        texSize = vec2(textureSize(image0));
        texCoord = scaleUV(finalUV, texSize, finalCellSize, aspect_mode);
        return texture(image0, texCoord);
    }
    if (channel == 1) {
        texSize = vec2(textureSize(image1));
        texCoord = scaleUV(finalUV, texSize, finalCellSize, aspect_mode);
        return texture(image1, texCoord);
    }
    if (channel == 2) {
        texSize = vec2(textureSize(image2));
        texCoord = scaleUV(finalUV, texSize, finalCellSize, aspect_mode);
        return texture(image2, texCoord);
    }
    if (channel == 3) {
        texSize = vec2(textureSize(image3));
        texCoord = scaleUV(finalUV, texSize, finalCellSize, aspect_mode);
        return texture(image3, texCoord);
    }
    if (channel == 4) {
        texSize = vec2(textureSize(image4));
        texCoord = scaleUV(finalUV, texSize, finalCellSize, aspect_mode);
        return texture(image4, texCoord);
    }
    if (channel == 5) {
        texSize = vec2(textureSize(image5));
        texCoord = scaleUV(finalUV, texSize, finalCellSize, aspect_mode);
        return texture(image5, texCoord);
    }
    if (channel == 6) {
        texSize = vec2(textureSize(image6));
        texCoord = scaleUV(finalUV, texSize, finalCellSize, aspect_mode);
        return texture(image6, texCoord);
    }
    if (channel == 7) {
        texSize = vec2(textureSize(image7));
        texCoord = scaleUV(finalUV, texSize, finalCellSize, aspect_mode);
        return texture(image7, texCoord);
    }

    return vec4(0.0, 0.0, 0.0, 1.0);
}

void main() {
    vec2 uv = jit_in.texcoord;

    // Calculate viewport bounds
    vec2 viewportMin, viewportMax;
    if (center_mode) {
        vec2 centerPoint = vec2(2.5, 2.5) + grid_offset;
        viewportMin = centerPoint - grid_size * 0.5;
        viewportMax = centerPoint + grid_size * 0.5;
    } else {
        viewportMin = grid_offset;
        viewportMax = grid_offset + grid_size;
    }

    // Map UV to matrix coordinates
    vec2 matrixCoord = viewportMin + uv * (viewportMax - viewportMin);

    // Check bounds
    if (matrixCoord.x < 0.0 || matrixCoord.x >= 5.0 ||
    matrixCoord.y < 0.0 || matrixCoord.y >= 5.0) {
        outColor = vec4(0.0, 0.0, 0.0, 1.0);
        return;
    }

    // Get cell indices
    int col = int(floor(matrixCoord.x));
    int row = int(floor(matrixCoord.y));

    // Get fractional position within cell (0.0 - 1.0)
    vec2 cellUV = fract(matrixCoord);

    // Apply gap
    if (gap_size > 0.0) {
        float gapFraction = gap_size / max(grid_size.x, grid_size.y);
        vec2 gapMargin = vec2(gapFraction * 0.5);

        if (cellUV.x < gapMargin.x || cellUV.x > (1.0 - gapMargin.x) ||
        cellUV.y < gapMargin.y || cellUV.y > (1.0 - gapMargin.y)) {
            outColor = vec4(0.0, 0.0, 0.0, 1.0);
            return;
        }

        // Remap cellUV to exclude gap area
        cellUV = (cellUV - gapMargin) / (1.0 - 2.0 * gapMargin);
    }

    // Get channel for this cell
    int channel = getCell(col, row);

    // Calculate cell size in pixels
    vec2 cellSize = targetdim / grid_size;

    // Sample and output
    outColor = sampleChannel(channel, cellUV, cellSize, col, row);
}
