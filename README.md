# PX Stream [WIP]

> PX Stream is a visual performance toolkit for [Max for Live](https://www.ableton.com/en/live/max-for-live/),
> featuring audio-reactive [Interactive Shader Format](https://www.interactiveshaderformat.com/) visuals,
> text rendering and [Syphon](https://syphon.info/) output streaming

![](./assets/banner.gif)

## Devices / Usage

### PX World

![PX World](assets/devices/PX_World_v1.jpg)

### PX Mix View

![PX Mix View](assets/devices/PX_Mix_View_v1.jpg)

### PX Mix_Channel

![PX Mix Channel](assets/devices/PX_Mix_Channel_v1.jpg)

### PX Mix Dry

![PX Mix Dry](assets/devices/PX_Mix_Dry_v1.jpg)

### PX Shader

![PX Shader](assets/devices/PX_Shader_v1.jpg)

### PX Transform

![PX Transform](assets/devices/PX_Transform_v1.jpg)

### PX Route Audio

![PX Route Audio](assets/devices/PX_Route_Audio_v1.jpg)

### PX Route MIDI

![PX_Route_MIDI](assets/devices/PX_Route_MIDI_v1.jpg)

### PX IN Text

![PX IN Text](assets/devices/PX_IN_Text_v1.jpg)

### PX IN Cam

![PX IN Cam](assets/devices/PX_IN_Cam_v1.jpg)

### PX IN Channel

![PX IN Channel](assets/devices/PX_IN_Channel_v1.jpg)

### PX IN Cos Pattern

![PX IN Cos Pattern](assets/devices/PX_IN_Cos_Pattern_v1.jpg)

### PX IN Mix

![PX IN Mix](assets/devices/PX_IN_Mix_v1.jpg)

### PX IN SVG

![PX IN SVG](assets/devices/PX_IN_SVG_v1.jpg)

### PX IN Syphon

![PX IN Syphon](assets/devices/PX_IN_Syphon_v1.jpg)

### PX FX Blur

![PX FX Blur](assets/devices/PX_FX_Blur_v1.jpg)

### PX FX Delay

![PX FX Delay](assets/devices/PX_FX_Delay_v1.jpg)

### PX FX Kaleidoscope

![PX FX Kaleidoscope](assets/devices/PX_FX_Kaleidoscope_v1.jpg)

### PX FX Pass

![PX FX Pass](assets/devices/PX_FX_Pass_v1.jpg)

## Development

### Prerequisites

- install __"ISF by Vidvox"__ in Max `File > Show Package Manager`
- configure [maxdiff](https://github.com/Ableton/maxdevtools/tree/main/maxdiff)

### Diff

```bash
git --no-pager diff "./PX Shader.amxd" "./param.maxpat"
```

```bash
git --no-pager diff "./PX Text.amxd" "./PX View.amxd"
```

### Shaders

- shaders loaded from `./shaders` folder near the device
- do not use keywords (like `size`, `float`, `int`, ...) in ISF `NAME` property

### ISF Extensions

|      | Name       | Type     | Description                                                                                                                                                                                           |
|------|------------|----------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| WAVE | waveImage  | audio    | standard ISF, channel per image row                                                                                                                                                                   |
| WAVU | wavuImage  | audio    | channel per image color, Red = Left, Green = Right                                                                                                                                                    |
| FFT  | fftImage   | audiofft | standard ISF, channel per image row                                                                                                                                                                   |
| FFTU | fftuImage  | audiofft | channel per image color                                                                                                                                                                               |
| XY   | xyImage    | audio    | X = Left, Y = Right, dots                                                                                                                                                                             |
| XYC  | xycImage   | audio    | X = Left, Y = Right, connected lines                                                                                                                                                                  |
| XYD  | xydImage   | audio    | X = Left, Y = Right, skipping distant lines                                                                                                                                                           |
| XYE  | xyeImage   | audio    | [electron beam emulation](https://m1el.github.io/woscope-how/), ported to Jitter shader by Rob Ramirez [here](https://discord.com/channels/289378508247924738/351004699811512322/1407790819183956109) |
| MIDI | midiImage  | audio    | X = (R: note/velocity, G: CC number/value), Y = MIDI channel                                                                                                                                          |
| IN   | inputImage | image    | automatic, from previous device in the chain                                                                                                                                                          |

## Shaders [TBD]

### C. Colorful

### F. FFT Spectrogram

### G. Generator

### L. LED

### M. MIDI

### S. Scenes

### T. Transformation

### U. Utility

### W. Waveforms

### X. XY Oscilloscopes

### ~. Test Shaders

## Alternatives

- [VIZZable 2](https://github.com/zealtv/VIZZable-2) (free)
- [Geometrum 02](https://artekniks.gumroad.com/l/geometrum) (free)
- [Videosync 2](https://videosync.showsync.com/)
- [EboSuite](https://www.ebosuite.com/)
- [VS - Visual Synthesizer](https://www.imaginando.pt/products/vs-visual-synthesizer)
- [Zwobot](https://www.zwobotmax.com/)
