# PX Stream [WIP]

> PX Stream is a visual performance toolkit for [Max for Live](https://www.ableton.com/en/live/max-for-live/),
> featuring audio-reactive [Interactive Shader Format](https://www.interactiveshaderformat.com/) visuals,
> text rendering and [Syphon](https://syphon.info/) output streaming

![](./assets/banner.gif)

## Devices / Usage

**Core**

- [PX World](#px-world)
- [PX Mix View](#px-mix-view)
- [PX Mix Channel](#px-mix_channel)
- [PX Mix Dry](#px-mix-dry)
- [PX Shader](#px-shader)
- [PX Transform](#px-transform)
- [PX Route Audio](#px-route-audio)
- [PX Route MIDI](#px-route-midi)

**Inputs FX**

- [PX IN Text](#px-in-text)
- [PX IN Cam](#px-in-cam)
- [PX IN Channel](#px-in-channel)
- [PX IN Cos Pattern](#px-in-cos-pattern)
- [PX IN Mix](#px-in-mix)
- [PX IN SVG](#px-in-svg)
- [PX IN Syphon](#px-in-syphon)

**Effects FX**

- [PX FX Blur](#px-fx-blur)
- [PX FX Color](#px-fx-color)
- [PX FX Colorize](#px-fx-colorize)
- [PX FX Convert](#px-fx-convert)
- [PX FX Delay](#px-fx-delay)
- [PX FX Kaleidoscope](#px-fx-kaleidoscope)
- [PX FX Pass](#px-fx-pass)

**Development utilities DEV**

- [DEV Info](#dev-info)
- [DEV Console](#dev-console)

### PX World

![PX World](assets/devices/PX_World_v1.jpg) ![PX World](assets/devices/PX_World_(mad_world)_v1.jpg)

### PX Mix View

![PX Mix View](assets/devices/PX_Mix_View_v1.jpg)
![PX Mix View](assets/devices/PX_Mix_View_(expanded)_v1.jpg)

### PX Mix_Channel

![PX Mix Channel](assets/devices/PX_Mix_Channel_v1.jpg)

### PX Mix Dry

![PX Mix Dry](assets/devices/PX_Mix_Dry_v1.jpg)

### PX Shader

![PX Shader](assets/devices/PX_Shader_v1.jpg)
![PX Shader](assets/devices/PX_Shader_(types)_v1.jpg)

### PX Transform

![PX Transform](assets/devices/PX_Transform_v1.jpg)

### PX Route Audio

![PX Route Audio](assets/devices/PX_Route_Audio_v1.jpg)

### PX Route MIDI

![PX_Route_MIDI](assets/devices/PX_Route_MIDI_v1.jpg)
![PX Shader](assets/devices/PX_Shader_(types)_v1.jpg)

### PX IN Text

![PX IN Text](assets/devices/PX_IN_Text_v1.jpg)
![PX IN Text](assets/devices/PX_IN_Text_(expanded)_v1.jpg)

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

### PX FX Color

![PX FX Color](assets/devices/PX_FX_Color_v1.jpg)
![PX FX Color](assets/devices/PX_FX_Color_(gamma)_v1.jpg)
![PX FX Color](assets/devices/PX_FX_Color_(hue)_v1.jpg)

### PX FX Colorize

![PX FX Colorize](assets/devices/PX_FX_Colorize_v1.jpg)

### PX FX Convert

![PX FX Convert](assets/devices/PX_FX_Convert_v1.jpg)
![PX FX Convert](assets/devices/PX_FX_Convert_(convert_back)_v1.jpg)

### PX FX Delay

![PX FX Delay](assets/devices/PX_FX_Delay_v1.jpg)

### PX FX Kaleidoscope

![PX FX Kaleidoscope](assets/devices/PX_FX_Kaleidoscope_v1.jpg)

### PX FX Pass

![PX FX Pass](assets/devices/PX_FX_Pass_v1.jpg)

### DEV Info

![Dev Info](assets/devices/DEV_Info_v1.jpg)

### DEV Console

![Dev Console](assets/devices/DEV_Console_v1.jpg)

## Development

### Prerequisites

- install __"ISF by Vidvox"__ in Max `File > Show Package Manager`
- configure [maxdiff](https://github.com/Ableton/maxdevtools/tree/main/maxdiff)

### Diff

```bash
git --no-pager diff "./*.amxd" "./*.maxpat"
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
