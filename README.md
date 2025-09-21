# PX Stream [WIP]

> PX Stream is a visual performance toolkit for [Max for Live](https://www.ableton.com/en/live/max-for-live/),
> featuring audio-reactive [Interactive Shader Format](https://www.interactiveshaderformat.com/) visuals,
> text rendering and [Syphon](https://syphon.info/) output streaming

- [Devices](#devices)
- [Development](#development)
- [Alternatives](#alternatives)

## Devices

<!-- begin: collage -->
<div>
    <a href="#px-mix-view"><img src="./assets/devices/PX_Mix_View_(expanded)_v1.webp" title="PX Mix View" width="273"/></a>
    <a href="#in-video"><img src="./assets/devices/PX_IN_Video_v1.webp" title="IN Video" width="71"/></a>
    <a href="#in-svg"><img src="./assets/devices/PX_IN_SVG_v1.webp" title="IN SVG" width="71"/></a>
    <a href="#gen-text"><img src="./assets/devices/PX_GEN_Text_v1.webp" title="GEN Text" width="71"/></a>
    <a href="#fx-convert"><img src="./assets/devices/PX_FX_Convert_v1.webp" title="FX Convert" width="71"/></a>
    <a href="#in-mix"><img src="./assets/devices/PX_IN_Mix_v1.webp" title="IN Mix" width="71"/></a>
    <a href="#fx-pixelization"><img src="./assets/devices/PX_FX_Pixelization_v1.webp" title="FX Pixelization" width="141"/></a>
    <a href="#px-shader"><img src="./assets/devices/PX_Shader_(types)_v1.webp" title="PX Shader" width="161"/></a>
    <a href="#px-mix-transition"><img src="./assets/devices/PX_Mix_Transition_v1.webp" title="PX Mix Transition" width="71"/></a>
    <a href="#in-syphon"><img src="./assets/devices/PX_IN_Syphon_v1.webp" title="IN Syphon" width="71"/></a>
    <a href="#in-cam"><img src="./assets/devices/PX_IN_Cam_v1.webp" title="IN Cam" width="71"/></a>
    <a href="#fx-delay"><img src="./assets/devices/PX_FX_Delay_v1.webp" title="FX Delay" width="71"/></a>
    <a href="#px-mix-dry"><img src="./assets/devices/PX_Mix_Dry_v1.webp" title="PX Mix Dry" width="71"/></a>
    <a href="#fx-color"><img src="./assets/devices/PX_FX_Color_(hue)_v1.webp" title="FX Color" width="252"/></a>
    <a href="#px-shader"><img src="./assets/devices/PX_Shader_v1.webp" title="PX Shader" width="246"/></a>
    <a href="#fx-alpha"><img src="./assets/devices/PX_FX_Alpha_v1.webp" title="FX Alpha" width="117"/></a>
    <a href="#px-mix-channel"><img src="./assets/devices/PX_Mix_Channel_v1.webp" title="PX Mix Channel" width="71"/></a>
    <a href="#fx-transform"><img src="./assets/devices/PX_FX_Transform_v1.webp" title="FX Transform" width="71"/></a>
    <a href="#fx-convert"><img src="./assets/devices/PX_FX_Convert_(convert_back)_v1.webp" title="FX Convert" width="71"/></a>
    <a href="#px-route-midi"><img src="./assets/devices/PX_Route_MIDI_(linked)_v1.webp" title="PX Route MIDI" width="58"/></a>
    <a href="#dev-info"><img src="./assets/devices/DEV_Info_v1.webp" title="DEV Info" width="137"/></a>
    <a href="#fx-color"><img src="./assets/devices/PX_FX_Color_v1.webp" title="FX Color" width="168"/></a>
    <a href="#fx-color"><img src="./assets/devices/PX_FX_Color_(gamma)_v1.webp" title="FX Color" width="161"/></a>
    <a href="#px-world"><img src="./assets/devices/PX_World_v1.webp" title="PX World" width="64"/></a>
    <a href="#in-channel"><img src="./assets/devices/PX_IN_Channel_v1.webp" title="IN Channel" width="71"/></a>
    <a href="#fx-kaleidoscope"><img src="./assets/devices/PX_FX_Kaleidoscope_v1.webp" title="FX Kaleidoscope" width="71"/></a>
    <a href="#dev-console"><img src="./assets/devices/DEV_Console_v1.webp" title="DEV Console" width="71"/></a>
    <a href="#gen-cos-pattern"><img src="./assets/devices/PX_GEN_Cos_Pattern_v1.webp" title="GEN Cos Pattern" width="167"/></a>
    <a href="#gen-text"><img src="./assets/devices/PX_GEN_Text_(expanded)_v1.webp" title="GEN Text" width="139"/></a>
    <a href="#fx-colorize"><img src="./assets/devices/PX_FX_Colorize_v1.webp" title="FX Colorize" width="117"/></a>
    <a href="#px-world"><img src="./assets/devices/PX_World_(mad_world)_v1.webp" title="PX World" width="64"/></a>
    <a href="#in-image"><img src="./assets/devices/PX_IN_Image_v1.webp" title="IN Image" width="71"/></a>
    <a href="#fx-pass"><img src="./assets/devices/PX_FX_Pass_v1.webp" title="FX Pass" width="71"/></a>
    <a href="#fx-blur"><img src="./assets/devices/PX_FX_Blur_v1.webp" title="FX Blur" width="71"/></a>
    <a href="#px-route-audio"><img src="./assets/devices/PX_Route_Audio_v1.webp" title="PX Route Audio" width="58"/></a>
    <a href="#px-mix-view"><img src="./assets/devices/PX_Mix_View_v1.webp" title="PX Mix View" width="175"/></a>
</div>
<!-- end: collage -->

<br>

<table>
  <tr>
    <th align="left">PX Core</th>
    <th align="left">IN (inputs)</th>
    <th align="left">GEN (generators)</th>
    <th align="left">FX (effects)</th>
    <th align="left">DEV (utilities)</th>
  </tr>
    <td valign="top">
        <a href="#px-world">World</a><br>
        <a href="#px-mix-view">Mix View</a><br>
        <a href="#px-mix_channel">Mix Channel</a><br>
        <a href="#px-mix-dry">Mix Dry</a><br>
        <a href="#px-mix-transition">Mix Transition</a><br>
        <hr>
        <a href="#px-route-audio">Route Audio</a><br>
        <a href="#px-route-midi">Route MIDI</a><br>
        <hr>
        <a href="#px-shader">Shader</a>
    </td>
    <td valign="top">
        <a href="#in-cam">IN Cam</a><br>
        <a href="#in-syphon">IN Syphon</a><br>
        <hr>
        <a href="#in-image">IN Image</a><br>
        <a href="#in-video">IN Video</a><br>
        <a href="#in-svg">IN SVG</a><br>
        <hr>
        <a href="#in-channel">IN Channel</a><br>
        <a href="#in-mix">IN Mix</a><br>
    </td>
    <td valign="top">
        <a href="#gen-cos-pattern">GEN Cos Pattern</a><br>
        <a href="#gen-text">GEN Text</a><br>
    </td>
    <td valign="top">
        <a href="#fx-alpha">FX Alpha</a><br>
        <a href="#fx-blur">FX Blur</a><br>
        <a href="#fx-color">FX Color</a><br>
        <a href="#fx-colorize">FX Colorize</a><br>
        <a href="#fx-convert">FX Convert</a><br>
        <a href="#fx-delay">FX Delay</a><br>
        <a href="#fx-kaleidoscope">FX Kaleidoscope</a><br>
        <a href="#fx-pass">FX Pass</a><br>
        <a href="#fx-pixelization">FX Pixelization</a><br>
        <a href="#fx-transform">FX Transform</a>
    </td>
    <td valign="top">
        <a href="#dev-info">DEV Info</a><br>
        <a href="#dev-console">DEV Console</a>
    </td>
  </tr>
</table>

### PX World

Essential rendering context. You need exactly one per Live set. More would be problematic. Sets target FPS. FPS 0 will use available maximum with displaylink turned on on Mac.

<img src="./assets/devices/PX_World_v1.webp" height="231" title="PX World" /> <img src="./assets/devices/PX_World_(mad_world)_v1.webp" height="231" title="PX World (mad world)" />

### PX Mix View

Multi-channel mixing and preview. Mix output selected in expanded section can be consumed by [IN Mix](#px-in-mix) device and [Syphon](https://syphon.info/) clients. Click preview for floating window, <kbd>ESC</kbd> for fullscreen on/off.

<img src="./assets/devices/PX_Mix_View_v1.webp" height="231" title="PX Mix View" /> <img src="./assets/devices/PX_Mix_View_(expanded)_v1.webp" height="231" title="PX Mix View (expanded)" />

### PX Mix Channel

Send texture to selected channel. Alternative to individual channel selectors on each device.

<img src="./assets/devices/PX_Mix_Channel_v1.webp" height="231" title="PX Mix Channel" />

### PX Mix Dry

Dry/wet mix from two previous devices. Select which (-1 to -4) for dry signal. Multiple blend modes and signal swap. Swap has no effect on [commutative](https://en.wikipedia.org/wiki/Commutative_property) blending methods.

<img src="./assets/devices/PX_Mix_Dry_v1.webp" height="231" title="PX Mix Dry" />

### PX Mix Transition

Transition between two previous devices. Channel selection same as Mix Dry. Uses 90+ transitions from [gl-transitions.com](https://gl-transitions.com/).

<img src="./assets/devices/PX_Mix_Transition_v1.webp" height="231" title="PX Mix Transition" />

---

### PX Route Audio

Route audio from any track in your Live set

<img src="./assets/devices/PX_Route_Audio_v1.webp" height="231" title="PX Route Audio" />

### PX Route MIDI

Send MIDI from selected track to next device. Works with [PX Shader](#px-shader) device and MIDI-enabled shaders.

<img src="./assets/devices/PX_Route_MIDI_(linked)_v1.webp" height="231" title="PX Route MIDI (linked)" />

---

### PX Shader

Interactive Shader Format ([ISF](https://isf.video/)) host for generators and effects. Up to 32 dynamic parameters and various audio rendering options with our custom audio types.

<img src="./assets/devices/PX_Shader_v1.webp" height="231" title="PX Shader" /> <img src="./assets/devices/PX_Shader_(types)_v1.webp" height="231" title="PX Shader (types)" />

#### Audio types

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

#### Shader categories

- C. Colorful
- F. FFT Spectrogram
- G. Generator
- L. LED
- M. MIDI
- S. Scenes
- T. Transformation
- U. Utility
- W. Waveforms
- X. XY Oscilloscopes
- ~. Test Shaders

---

### IN Cam

Live input from connected video devices

<img src="./assets/devices/PX_IN_Cam_v1.webp" height="231" title="PX IN Cam" />

### IN Syphon

[Syphon](https://syphon.info/) input for sharing visuals between applications. Mac only.

<img src="./assets/devices/PX_IN_Syphon_v1.webp" height="231" title="PX IN Syphon" />

### IN Image

Static image input. Supports JPG, WEBP and PNG formats.

<img src="./assets/devices/PX_IN_Image_v1.webp" height="231" title="PX IN Image" />

### IN SVG

Vector graphics input with resolution-independent scaling SVG file formal

<img src="./assets/devices/PX_IN_SVG_v1.webp" height="231" title="PX IN SVG" />

### IN Video

Video playback. Supports MP4, AVI, MOV (including[HAP codecs](https://hap.video/)).

<img src="./assets/devices/PX_IN_Video_v1.webp" height="231" title="PX IN Video" />

### IN Channel

Use texture from [Mix Channel](#px-mix-channel) as input. Creates feedback when combined with [Mix Dry](#px-mix-dry) on same channel.

<img src="./assets/devices/PX_IN_Channel_v1.webp" height="231" title="PX IN Channel" />

### IN Mix

Use channel mix from [Mix View](#px-mix-view) device as input texture.

<img src="./assets/devices/PX_IN_Mix_v1.webp" height="231" title="PX IN Mix" />

---

### GEN Cos Pattern

Procedural patterns with cosine palettes [popularized](https://iquilezles.org/articles/palettes/) by Inigo Quilez

<img src="./assets/devices/PX_GEN_Cos_Pattern_v1.webp" height="231" title="PX GEN Cos Pattern" />

### GEN Text

Text generation from session/clip names, custom text, or dynamic musical data (beat, bar.beat, time)

<img src="./assets/devices/PX_GEN_Text_v1.webp" height="231" title="PX GEN Text" /> <img src="./assets/devices/PX_GEN_Text_(expanded)_v1.webp" height="231" title="PX GEN Text (expanded)" />

---

### FX Alpha

Alpha channel tools: chroma key, mapping, inversion, smoothing, removal, etc.

<img src="./assets/devices/PX_FX_Alpha_v1.webp" height="231" title="PX FX Alpha" />

### FX Blur

Four blur shaders from Max/Jitter stock collection

<img src="./assets/devices/PX_FX_Blur_v1.webp" height="231" title="PX FX Blur" />

### FX Color

Color grading and adjustment tools

<img src="./assets/devices/PX_FX_Color_v1.webp" height="231" title="PX FX Color" /> <img src="./assets/devices/PX_FX_Color_(gamma)_v1.webp" height="231" title="PX FX Color (gamma)" /> <img src="./assets/devices/PX_FX_Color_(hue)_v1.webp" height="231" title="PX FX Color (hue)" />

### FX Colorize

Two/tri tone colorization with multiple mapping methods

<img src="./assets/devices/PX_FX_Colorize_v1.webp" height="231" title="PX FX Colorize" />

### FX Convert

Texture format conversion including OKLAB and normalized OKLAB aka NOKLAB

<img src="./assets/devices/PX_FX_Convert_v1.webp" height="231" title="PX FX Convert" /> <img src="./assets/devices/PX_FX_Convert_(convert_back)_v1.webp" height="231" title="PX FX Convert (convert back)" />

### FX Delay

Frame-based texture delay. Combine with Mix Dry device for ghost trail effects.

<img src="./assets/devices/PX_FX_Delay_v1.webp" height="231" title="PX FX Delay" />

### FX Kaleidoscope

Kaleidoscope patterns based on [Brewster designs]((https://en.wikipedia.org/wiki/Kaleidoscope#Different_versions_suggested_by_Brewster)) plus Max/Jitter shader

<img src="./assets/devices/PX_FX_Kaleidoscope_v1.webp" height="231" title="PX FX Kaleidoscope" />

### FX Pass

Postprocessing shaders from Max/Jitter stock library. See [Max documentation](https://docs.cycling74.com/reference/jit.gl.pass).

<img src="./assets/devices/PX_FX_Pass_v1.webp" height="231" title="PX FX Pass" />

### FX Pixelization

Multi-shape pixelization: rectangular, circular, honeycomb, hexagonal, triangular grids

<img src="./assets/devices/PX_FX_Pixelization_v1.webp" height="231" title="PX FX Pixelization" />

### FX Transform

Geometric transformations: scale, shift, rotation (around axis or vector)

<img src="./assets/devices/PX_FX_Transform_v1.webp" height="231" title="PX FX Transform" />

---

### DEV Info

Shows texture info for development purposes

<img src="./assets/devices/DEV_Info_v1.webp" height="231" title="DEV Info" />

### DEV Console

Enables detailed Max console output for development and debugging. DO NOT USE IN PRODUCTION.

<img src="./assets/devices/DEV_Console_v1.webp" height="231" title="DEV Console" />

## Development

### Prerequisites

- install __"ISF by Vidvox"__ in Max `File > Show Package Manager`
- configure [maxdiff](https://github.com/Ableton/maxdevtools/tree/main/maxdiff)

### Diff

```bash
git --no-pager diff "./*.amxd" "./*.maxpat"
```

### Batch freezing

Requires preparation, see [scripts/freeze.scpt](./scripts/freeze.scpt)

```shell
npm script freeze
```

### Shaders

Do not use keywords (like `size`, `float`, `int`, ...) in ISF `NAME` property

## Alternatives

- [VIZZable 2](https://github.com/zealtv/VIZZable-2) (free)
- [Geometrum 02](https://artekniks.gumroad.com/l/geometrum) (free)
- [Videosync 2](https://videosync.showsync.com/)
- [EboSuite](https://www.ebosuite.com/)
- [VS - Visual Synthesizer](https://www.imaginando.pt/products/vs-visual-synthesizer)
- [Zwobot](https://www.zwobotmax.com/)
