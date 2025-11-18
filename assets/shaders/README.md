# ISF Cheatsheet

From: https://docs.isf.video/

## ISF Exclusive Functions

ISF extends GLSL with the following functions.

```glsl
vec4 pixelColor = IMG_PIXEL(image imageName, vec2 pixelCoord);
vec4 pixelColor = IMG_NORM_PIXEL(image imageName, vec2 normalizedPixelCoord);
vec4 pixelColor = IMG_THIS_PIXEL(image imageName);
vec4 pixelColor = IMG_NORM_THIS_PIXEL(image imageName);
vec2 imageSize = IMG_SIZE(image imageName);
```

### `IMG_PIXEL()` and `IMG_NORM_PIXEL()`
`IMG_PIXEL()` and `IMG_NORM_PIXEL()` fetch the color of a pixel in an image using either pixel-based coords or normalized coords, respectively, and should be used instead of `texture2D()` or `texture2DRect()`. In both functions, "imageName" refers to the variable name of the image you want to work with.

### `IMG_THIS_PIXEL()` and `IMG_NORM_THIS_PIXEL()`
- `IMG_THIS_PIXEL()` is essentially the same as `IMG_PIXEL()` but automatically fills in the pixel coordinate for the pixel being rendered.
- `IMG_NORM_THIS_PIXEL()` is essentially the same as `IMG_THIS_PIXEL()` but automatically fills in the pixel coordinate for the pixel being rendered using a normalized coordinate range.

###  `IMG_SIZE()`
`IMG_SIZE()` returns a two-element vector describing the size of the image in pixels.

## Automatically Declared Variables

### `PASSINDEX`
The uniform `int PASSINDEX` is automatically declared, and set to `0` on the first rendering pass. Subsequent passes (defined by the dicts in your PASSES array) increment this int.

### `RENDERSIZE`
The uniform `vec2 RENDERSIZE` is automatically declared, and is set to the rendering size (in pixels) of the current rendering pass.

### `isf_FragNormCoord`
The uniform `vec2 isf_FragNormCoord` is automatically declared. This is a convenience variable, and repesents the normalized coordinates of the current fragment (`[0,0]` is the bottom-left, `[1,1]` is the top-right).

### `gl_FragCoord`
As part of standard GLSL `vec4 gl_FragCoord` is automatically declared. This holds the values of the fragment coordinate vector are given in the window coordinate system. In 2D space the .xy from this can be used to get the non-normalized pixel location.

### `TIME`
The uniform `float TIME` is automatically declared, and is set to the current rendering time (in seconds) of the shader. This variable is updated once per rendered frame- if a frame requires multiple rendering passes, the variable is only updated once for all the passes.

### `TIMEDELTA`
The uniform `float TIMEDELTA` is automatically declared, and is set to the time (in seconds) that have elapsed since the last frame was rendered. This value will be 0.0 when rendering the first frame.

### `DATE`
The uniform `vec4 DATE` is automatically declared, and is used to pass the date and time to the shader. The first element of the vector is the year, the second element is the month, the third element is the day, and the fourth element is the time (in seconds) within the day.

### `FRAMEINDEX`
The uniform `int FRAMEINDEX` is automatically declared, and is used to pass the index of the frame being rendered to the shader- this value is 0 when the first frame is rendered, and is incremented after each frame has finished rendering.
