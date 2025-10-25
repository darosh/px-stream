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
uniform float gap_size;
uniform int aspect_mode;// 0=fit, 1=fill, 2=stretch
uniform vec2 targetdim;

// 5x5 matrix of channel assignments
uniform int cell_00, cell_01, cell_02, cell_03, cell_04;
uniform int cell_10, cell_11, cell_12, cell_13, cell_14;
uniform int cell_20, cell_21, cell_22, cell_23, cell_24;
uniform int cell_30, cell_31, cell_32, cell_33, cell_34;
uniform int cell_40, cell_41, cell_42, cell_43, cell_44;

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

// Sample from the correct texture based on channel index
vec4 sampleChannel(int channel, vec2 uv) {
    if (channel == 0) return texture(image0, uv);
    if (channel == 1) return texture(image1, uv);
    if (channel == 2) return texture(image2, uv);
    if (channel == 3) return texture(image3, uv);
    if (channel == 4) return texture(image4, uv);
    if (channel == 5) return texture(image5, uv);
    if (channel == 6) return texture(image6, uv);
    if (channel == 7) return texture(image7, uv);
    return vec4(0.0, 0.0, 0.0, 1.0);// Black for invalid channel
}

// Get texture dimensions for a channel
vec2 getTexDim(int channel) {
    if (channel == 0) return textureSize(image0);
    if (channel == 1) return textureSize(image1);
    if (channel == 2) return textureSize(image2);
    if (channel == 3) return textureSize(image3);
    if (channel == 4) return textureSize(image4);
    if (channel == 5) return textureSize(image5);
    if (channel == 6) return textureSize(image6);
    if (channel == 7) return textureSize(image7);
    return vec2(1920.0, 1080.0);
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

    // Get source texture dimensions
    vec2 srcDim = getTexDim(channel);

    // Calculate aspect ratios
    float srcAspect = srcDim.x / srcDim.y;
    float dstAspect = targetdim.x / targetdim.y;

    // Apply aspect correction based on mode
    vec2 texUV = cellUV;

    if (aspect_mode == 0) { // Fit
        if (srcAspect > dstAspect) {
            // Source is wider - letterbox top/bottom
            float scale = dstAspect / srcAspect;
            texUV.y = (texUV.y - 0.5) / scale + 0.5;
            if (texUV.y < 0.0 || texUV.y > 1.0) {
                outColor = vec4(0.0, 0.0, 0.0, 1.0);
                return;
            }
        } else {
            // Source is taller - pillarbox left/right
            float scale = srcAspect / dstAspect;
            texUV.x = (texUV.x - 0.5) / scale + 0.5;
            if (texUV.x < 0.0 || texUV.x > 1.0) {
                outColor = vec4(0.0, 0.0, 0.0, 1.0);
                return;
            }
        }
    } else if (aspect_mode == 1) { // Fill
        if (srcAspect > dstAspect) {
            // Source is wider - crop left/right
            float scale = srcAspect / dstAspect;
            texUV.x = (texUV.x - 0.5) * scale + 0.5;
        } else {
            // Source is taller - crop top/bottom
            float scale = dstAspect / srcAspect;
            texUV.y = (texUV.y - 0.5) * scale + 0.5;
        }
    }
    // aspect_mode == 2 (stretch) uses texUV as-is

    // Convert to texture coordinates (0-srcDim range for sampler2DRect)
    vec2 texCoord = texUV * srcDim;

    // Sample and output
    outColor = sampleChannel(channel, texCoord);
}
