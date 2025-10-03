# PX Stream

⚠️ Work in progress. Not ready for use. Stay tuned.

> PX Stream is a visual performance toolkit for [Max for Live](https://www.ableton.com/en/live/max-for-live/),
> featuring audio-reactive [Interactive Shader Format](https://www.interactiveshaderformat.com/) visuals,
> text rendering and [Syphon](https://syphon.info/) output streaming

<!-- begin: collage -->
<div>
    <a href="#px-mix-view"><img src="./docs/media/devices/PX_Mix_View_(expanded).webp" title="PX Mix View" width="253"/></a>
    <a href="#fx-colorize"><img src="./docs/media/devices/PX_FX_Colorize.webp" title="FX Colorize" width="109"/></a>
    <a href="#in-syphon"><img src="./docs/media/devices/PX_IN_Syphon.webp" title="IN Syphon" width="66"/></a>
    <a href="#in-channel"><img src="./docs/media/devices/PX_IN_Channel.webp" title="IN Channel" width="66"/></a>
    <a href="#fx-kaleidoscope"><img src="./docs/media/devices/PX_FX_Kaleidoscope.webp" title="FX Kaleidoscope" width="66"/></a>
    <a href="#dev-console"><img src="./docs/media/devices/DEV_Console.webp" title="DEV Console" width="66"/></a>
    <a href="#px-shader"><img src="./docs/media/devices/PX_Shader_(types).webp" title="PX Shader" width="150"/></a>
    <a href="#fx-pixelization"><img src="./docs/media/devices/PX_FX_Pixelization.webp" title="FX Pixelization" width="131"/></a>
    <a href="#fx-alpha"><img src="./docs/media/devices/PX_FX_Alpha.webp" title="FX Alpha" width="109"/></a>
    <a href="#px-route-audio"><img src="./docs/media/devices/PX_Route_Audio.webp" title="PX Route Audio" width="54"/></a>
    <a href="#in-cam"><img src="./docs/media/devices/PX_IN_Cam.webp" title="IN Cam" width="66"/></a>
    <a href="#fx-delay"><img src="./docs/media/devices/PX_FX_Delay.webp" title="FX Delay" width="66"/></a>
    <a href="#px-world"><img src="./docs/media/devices/PX_World.webp" title="PX World" width="60"/></a>
    <a href="#px-rec"><img src="./docs/media/devices/PX_Rec.webp" title="PX Rec" width="54"/></a>
    <a href="#px-shader"><img src="./docs/media/devices/PX_Shader.webp" title="PX Shader" width="229"/></a>
    <a href="#fx-color"><img src="./docs/media/devices/PX_FX_Color_(hue).webp" title="FX Color" width="234"/></a>
    <a href="#gen-mini-shader"><img src="./docs/media/devices/PX_GEN_Mini_Shader.webp" title="GEN Mini Shader" width="113"/></a>
    <a href="#px-world"><img src="./docs/media/devices/PX_World_(mad_world).webp" title="PX World" width="60"/></a>
    <a href="#px-route-midi"><img src="./docs/media/devices/PX_Route_MIDI_(linked).webp" title="PX Route MIDI" width="54"/></a>
    <a href="#fx-pass"><img src="./docs/media/devices/PX_FX_Pass.webp" title="FX Pass" width="66"/></a>
    <a href="#fx-blur"><img src="./docs/media/devices/PX_FX_Blur.webp" title="FX Blur" width="66"/></a>
    <a href="#in-video"><img src="./docs/media/devices/PX_IN_Video.webp" title="IN Video" width="66"/></a>
    <a href="#gen-sketching"><img src="./docs/media/devices/PX_GEN_Sketching.webp" title="GEN Sketching" width="113"/></a>
    <a href="#fx-color"><img src="./docs/media/devices/PX_FX_Color.webp" title="FX Color" width="156"/></a>
    <a href="#gen-text"><img src="./docs/media/devices/PX_GEN_Text_(expanded).webp" title="GEN Text" width="129"/></a>
    <a href="#px-mix-dry"><img src="./docs/media/devices/PX_Mix_Dry.webp" title="PX Mix Dry" width="66"/></a>
    <a href="#in-mix"><img src="./docs/media/devices/PX_IN_Mix.webp" title="IN Mix" width="66"/></a>
    <a href="#fx-transform"><img src="./docs/media/devices/PX_FX_Transform.webp" title="FX Transform" width="66"/></a>
    <a href="#fx-convert"><img src="./docs/media/devices/PX_FX_Convert.webp" title="FX Convert" width="66"/></a>
    <a href="#in-image"><img src="./docs/media/devices/PX_IN_Image.webp" title="IN Image" width="66"/></a>
    <a href="#gen-cos-pattern"><img src="./docs/media/devices/PX_GEN_Cos_Pattern.webp" title="GEN Cos Pattern" width="155"/></a>
    <a href="#fx-color"><img src="./docs/media/devices/PX_FX_Color_(gamma).webp" title="FX Color" width="149"/></a>
    <a href="#px-mix-channel"><img src="./docs/media/devices/PX_Mix_Channel.webp" title="PX Mix Channel" width="66"/></a>
    <a href="#fx-convert"><img src="./docs/media/devices/PX_FX_Convert_(convert_back).webp" title="FX Convert" width="66"/></a>
    <a href="#gen-text"><img src="./docs/media/devices/PX_GEN_Text.webp" title="GEN Text" width="66"/></a>
    <a href="#in-svg"><img src="./docs/media/devices/PX_IN_SVG.webp" title="IN SVG" width="66"/></a>
    <a href="#px-mix-transition"><img src="./docs/media/devices/PX_Mix_Transition.webp" title="PX Mix Transition" width="66"/></a>
    <a href="#dev-info"><img src="./docs/media/devices/DEV_Info.webp" title="DEV Info" width="127"/></a>
    <a href="#px-mix-view"><img src="./docs/media/devices/PX_Mix_View.webp" title="PX Mix View" width="163"/></a>
</div>
<!-- end: collage -->

<br>

- [Guides](#guides)
    - [Install](#install)
    - [Minimal patch](#minimal-patch)
    - [Concept basics: Chain, Channel, Mix](#concept-basics-chain-channel-mix)
    - [Extending patch](#extending-patch)
    - [Dry/Wet](#drywet)
    - [Transitions](#transitions)
    - [Automation](#automation)
- [Devices](#devices)
- [Alternatives](#alternatives)
- [License](#license)

<br>

## Guides

### Install

TBD

### Minimal patch

TBD

### Concept basics: Chain, Channel, Mix

TBD

### Extending patch

TBD

### Dry/Wet

TBD

### Transitions

TBD

### Automation

TBD

## Devices

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
        <a href="#px-rec">Rec</a><br>
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
        <a href="#gen-mini-shader">GEN Mini Shader</a><br>
        <a href="#gen-sketching">GEN Sketching</a><br>
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

<img src="./docs/media/automation/PX_World.webp" height="231" title="PX World" /> <img src="./docs/media/devices/PX_World_(mad_world).webp" height="231" title="PX World (mad world)" />

### PX Mix View

Multi-channel mixing and preview. Mix output selected in expanded section can be consumed by [IN Mix](#in-mix) device and [Syphon](https://syphon.info/) clients. Click preview for floating window, <kbd>ESC</kbd> for fullscreen on/off.

<img src="./docs/media/devices/PX_Mix_View.webp" height="231" title="PX Mix View" /> <img src="./docs/media/devices/PX_Mix_View_(expanded).webp" height="231" title="PX Mix View (expanded)" />

### PX Mix Channel

Send texture to selected channel. Alternative to individual channel selectors on each device.

<img src="./docs/media/devices/PX_Mix_Channel.webp" height="231" title="PX Mix Channel" />

### PX Mix Dry

Dry/wet mix from two previous devices. Select which (-1 to -4) for dry signal. Multiple blend modes and signal swap. Swap has no effect on [commutative](https://en.wikipedia.org/wiki/Commutative_property) blending methods.

<img src="./docs/media/devices/PX_Mix_Dry.webp" height="231" title="PX Mix Dry" />

### PX Mix Transition

Transition between two previous devices. Channel selection same as Mix Dry. Uses 90+ transitions from [gl-transitions.com](https://gl-transitions.com/).

<img src="./docs/media/devices/PX_Mix_Transition.webp" height="231" title="PX Mix Transition" />

### PX Rec

Video recording and screenshotting

<img src="./docs/media/devices/PX_Rec.webp" height="231" title="PX Rec" />

---

### PX Route Audio

Route audio from any track in your Live set

<img src="./docs/media/devices/PX_Route_Audio.webp" height="231" title="PX Route Audio" />

### PX Route MIDI

Send MIDI from selected track to next device. Works with [PX Shader](#px-shader) device and MIDI-enabled shaders.

<img src="./docs/media/devices/PX_Route_MIDI_(linked).webp" height="231" title="PX Route MIDI (linked)" />

---

### PX Shader

Interactive Shader Format ([ISF](https://isf.video/)) host for generators and effects. Up to 32 dynamic parameters and various audio rendering options with our custom audio types.

<img src="./docs/media/devices/PX_Shader.webp" height="231" title="PX Shader" /> <img src="./docs/media/devices/PX_Shader_(types).webp" height="231" title="PX Shader (types)" />

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

<img src="./docs/media/devices/PX_IN_Cam.webp" height="231" title="PX IN Cam" />

### IN Syphon

[Syphon](https://syphon.info/) input for sharing visuals between applications. Mac only.

<img src="./docs/media/devices/PX_IN_Syphon.webp" height="231" title="PX IN Syphon" />

---

### IN Image

Static image input. Supports JPG, WEBP and PNG formats.

<img src="./docs/media/devices/PX_IN_Image.webp" height="231" title="PX IN Image" />

### IN SVG

Vector graphics input with resolution-independent scaling SVG file formal

<img src="./docs/media/devices/PX_IN_SVG.webp" height="231" title="PX IN SVG" />

### IN Video

Video playback. Supports MP4, AVI, MOV (including [HAP codecs](https://hap.video/)).

<img src="./docs/media/devices/PX_IN_Video.webp" height="231" title="PX IN Video" />

---

### IN Channel

Use texture from [Mix Channel](#px-mix-channel) as input. Creates feedback when combined with [Mix Dry](#px-mix-dry) on same channel.

<img src="./docs/media/devices/PX_IN_Channel.webp" height="231" title="PX IN Channel" />

### IN Mix

Use channel mix from [Mix View](#px-mix-view) device as input texture.

<img src="./docs/media/devices/PX_IN_Mix.webp" height="231" title="PX IN Mix" />

---

### GEN Cos Pattern

Procedural patterns with cosine palettes [popularized](https://iquilezles.org/articles/palettes/) by Inigo Quilez

<img src="./docs/media/previews/PX_GEN_Cos_Pattern.webp" height="231" title="PX GEN Cos Pattern" /> <img src="./docs/media/automation/PX_GEN_Cos_Pattern.webp" height="231" title="PX GEN Cos Pattern" />

### GEN Mini Shader

Shaders in [twigl.app](https://twigl.app/) `geekest (300 es)` format.

<img src="./docs/media/previews/PX_GEN_Mini_Shader.webp" height="231" title="PX GEN Mini Shader" /> <img src="./docs/media/automation/PX_GEN_Mini_Shader.webp" height="231" title="PX GEN Mini Shader" />

#### Shader files

`GLSL` files are stored in `data/mini-shaders` folder. Temporary JXS files is stored under `data/mini-shaders/.temp.jxs`.

#### Shader categories

| Type | Description           |
|------|-----------------------|
| B.   | Shaders from Blue Sky |
| T.   | Shaders from Twitter  |
| X.   | Examples              |

Learn more about the [Modeling the World in 280 Characters](https://tympanus.net/codrops/2025/06/23/modeling-the-world-in-280-characters/).

#### Variables

| Name | Type      | Description  |
|------|-----------|--------------|
| FC   | vec4      | gl_FragCoord |
| r    | vec2      | resolution   |
| m    | vec2      | mouse        |
| t    | float     | time         |
| f    | float     | frame        |
| b    | sampler2D | backbuffer   |
| o    | vec4      | output       |

#### Utilities

Included when needed.

- F4
- mod289
- permute
- taylorInvSqrt
- snoise2D
- snoise3D
- grad4
- snoise4D
- fsnoise
- fsnoiseDigits
- hsv
- rotate2D
- rotate3D
- PI
- PI2
- tanh (`#define tanh(x) tanh(clamp(x, -10.,10.))`)

Learn more in [twigl documentation](https://github.com/doxas/twigl#twigl).

### GEN Sketching

Custom OpenGL primitives scripting with JavaScript, slightly compatible with [openprocessing.org](https://openprocessing.org/)

<img src="./docs/media/previews/PX_GEN_Sketching.webp" height="231" title="PX GEN Sketching" /> <img src="./docs/media/automation/PX_GEN_Sketching.webp" height="231" title="PX GEN Sketching" />

### GEN Text

Text generation from session/clip names, custom text, or dynamic musical data (beat, bar.beat, time)

<img src="./docs/media/previews/PX_GEN_Text.webp" height="231" title="PX GEN Text" /> <img src="./docs/media/automation/PX_GEN_Text.webp" height="231" title="PX GEN Text" /> <img src="./docs/media/devices/PX_GEN_Text_(expanded).webp" height="231" title="PX GEN Text (expanded)" />

---

### FX Alpha

Alpha channel tools: chroma key, mapping, inversion, smoothing, removal, etc.

<img src="./docs/media/devices/PX_FX_Alpha.webp" height="231" title="PX FX Alpha" />

### FX Blur

Four blur shaders from Max/Jitter stock collection

<img src="./docs/media/devices/PX_FX_Blur.webp" height="231" title="PX FX Blur" />

### FX Color

Color grading and adjustment tools

<img src="./docs/media/devices/PX_FX_Color.webp" height="231" title="PX FX Color" /> <img src="./docs/media/devices/PX_FX_Color_(gamma).webp" height="231" title="PX FX Color (gamma)" /> <img src="./docs/media/devices/PX_FX_Color_(hue).webp" height="231" title="PX FX Color (hue)" />

### FX Colorize

Two/tri tone colorization with multiple mapping methods

<img src="./docs/media/devices/PX_FX_Colorize.webp" height="231" title="PX FX Colorize" />

### FX Convert

Texture format conversion including OKLAB and normalized OKLAB aka NOKLAB

<img src="./docs/media/devices/PX_FX_Convert.webp" height="231" title="PX FX Convert" /> <img src="./docs/media/devices/PX_FX_Convert_(convert_back).webp" height="231" title="PX FX Convert (convert back)" />

### FX Delay

Frame-based texture delay. Combine with Mix Dry device for ghost trail effects.

<img src="./docs/media/devices/PX_FX_Delay.webp" height="231" title="PX FX Delay" />

### FX Kaleidoscope

Kaleidoscope patterns based on [Brewster designs]((https://en.wikipedia.org/wiki/Kaleidoscope#Different_versions_suggested_by_Brewster)) plus Max/Jitter shader

<img src="./docs/media/devices/PX_FX_Kaleidoscope.webp" height="231" title="PX FX Kaleidoscope" />

### FX Pass

Postprocessing shaders from Max/Jitter stock library. See [Max documentation](https://docs.cycling74.com/reference/jit.gl.pass).

<img src="./docs/media/devices/PX_FX_Pass.webp" height="231" title="PX FX Pass" />

### FX Pixelization

Multi-shape pixelization: rectangular, circular, honeycomb, hexagonal, triangular grids

<img src="./docs/media/devices/PX_FX_Pixelization.webp" height="231" title="PX FX Pixelization" />

### FX Transform

Geometric transformations: scale, shift, rotation (around axis or vector)

<img src="./docs/media/devices/PX_FX_Transform.webp" height="231" title="PX FX Transform" />

---

### DEV Info

Shows texture info for development purposes

<img src="./docs/media/devices/DEV_Info.webp" height="231" title="DEV Info" />

### DEV Console

Enables detailed Max console output for development and debugging. DO NOT USE IN PRODUCTION.

<img src="./docs/media/devices/DEV_Console.webp" height="231" title="DEV Console" />

## Alternatives

Max for Live

- [VIZZable 2](https://github.com/zealtv/VIZZable-2) (free)
- [V-Module](https://github.com/j74/V-Module-Max-for-Live-Video-Plugins) (free)
- [Geometrum 02](https://artekniks.gumroad.com/l/geometrum) (free)
- [Zwobot](https://www.zwobotmax.com/)
- [EboSuite](https://www.ebosuite.com/)

Max for Live + App

- [Videosync 2](https://videosync.showsync.com/)

VST

- [VS - Visual Synthesizer](https://www.imaginando.pt/products/vs-visual-synthesizer)

## License

This project is dual-licensed under [MIT or CC-BY](./LICENSE) (your choice).

You may use, modify, and distribute this work under either license.

For dynamically loaded assets licensing see [assets/LICENSE.md](./assets/LICENSE.md)
