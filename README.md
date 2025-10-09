# PX Stream

[![License: MIT or CC BY](https://img.shields.io/badge/License-MIT_or_CC_BY-blue.svg)](LICENSE)
[![Discord](https://img.shields.io/discord/1329379539708805193?label=Discord&logo=discord&logoColor=white&color=5865F2)](https://discord.gg/de5txQSven)
[![Downloads](https://img.shields.io/github/downloads/darosh/px-stream/total?label=Downloads)](https://github.com/darosh/px-stream/releases)

⚠️ `WARNING` Work in progress. Not ready for use. Stay tuned.

<br> 

> PX Stream is a visual performance toolkit of 30+ devices for [Max for Live](https://www.ableton.com/en/live/max-for-live/), featuring 
> - audio-reactive [Interactive Shader Format](https://www.interactiveshaderformat.com/) visuals, 
> - various effects, generators and utilities,
> - 90+ transitions
> - text rendering 
> - and [Syphon](https://syphon.info/)/[Spout](https://spout.zeal.co/) output streaming

<br> 

<!-- begin: collage -->
<div>
    <a href="#px-mix-view"><img src="./docs/media/devices/PX_Mix_View_(expanded).webp" title="PX Mix View" width="253"/></a>
    <a href="#fx-colorize"><img src="./docs/media/devices/PX_FX_Colorize.webp" title="FX Colorize" width="109"/></a>
    <a href="#in-stream"><img src="./docs/media/devices/PX_IN_Stream_(Syphon).webp" title="IN Stream" width="66"/></a>
    <a href="#in-image"><img src="./docs/media/devices/PX_IN_Image.webp" title="IN Image" width="66"/></a>
    <a href="#fx-pass"><img src="./docs/media/devices/PX_FX_Pass.webp" title="FX Pass" width="66"/></a>
    <a href="#dev-console"><img src="./docs/media/devices/DEV_Console.webp" title="DEV Console" width="66"/></a>
    <a href="#px-shader"><img src="./docs/media/devices/PX_Shader_(types).webp" title="PX Shader" width="150"/></a>
    <a href="#fx-pixelization"><img src="./docs/media/devices/PX_FX_Pixelization.webp" title="FX Pixelization" width="131"/></a>
    <a href="#fx-alpha"><img src="./docs/media/devices/PX_FX_Alpha.webp" title="FX Alpha" width="109"/></a>
    <a href="#px-route-audio"><img src="./docs/media/devices/PX_Route_Audio.webp" title="PX Route Audio" width="54"/></a>
    <a href="#in-channel"><img src="./docs/media/devices/PX_IN_Channel.webp" title="IN Channel" width="66"/></a>
    <a href="#fx-kaleidoscope"><img src="./docs/media/devices/PX_FX_Kaleidoscope.webp" title="FX Kaleidoscope" width="66"/></a>
    <a href="#px-world"><img src="./docs/media/devices/PX_World.webp" title="PX World" width="60"/></a>
    <a href="#px-rec"><img src="./docs/media/devices/PX_Rec.webp" title="PX Rec" width="54"/></a>
    <a href="#px-shader"><img src="./docs/media/devices/PX_Shader.webp" title="PX Shader" width="229"/></a>
    <a href="#fx-color"><img src="./docs/media/devices/PX_FX_Color_(hue).webp" title="FX Color" width="234"/></a>
    <a href="#gen-mini-shader"><img src="./docs/media/devices/PX_GEN_Mini_Shader.webp" title="GEN Mini Shader" width="113"/></a>
    <a href="#px-world"><img src="./docs/media/devices/PX_World_(mad_world).webp" title="PX World" width="60"/></a>
    <a href="#px-route-midi"><img src="./docs/media/devices/PX_Route_MIDI_(linked).webp" title="PX Route MIDI" width="54"/></a>
    <a href="#fx-transform"><img src="./docs/media/devices/PX_FX_Transform.webp" title="FX Transform" width="66"/></a>
    <a href="#fx-blur"><img src="./docs/media/devices/PX_FX_Blur.webp" title="FX Blur" width="66"/></a>
    <a href="#in-video"><img src="./docs/media/devices/PX_IN_Video.webp" title="IN Video" width="66"/></a>
    <a href="#gen-sketching"><img src="./docs/media/devices/PX_GEN_Sketching.webp" title="GEN Sketching" width="113"/></a>
    <a href="#fx-color"><img src="./docs/media/devices/PX_FX_Color.webp" title="FX Color" width="156"/></a>
    <a href="#gen-text"><img src="./docs/media/devices/PX_GEN_Text_(expanded).webp" title="GEN Text" width="129"/></a>
    <a href="#px-mix-dry"><img src="./docs/media/devices/PX_Mix_Dry.webp" title="PX Mix Dry" width="66"/></a>
    <a href="#in-svg"><img src="./docs/media/devices/PX_IN_SVG.webp" title="IN SVG" width="66"/></a>
    <a href="#gen-text"><img src="./docs/media/devices/PX_GEN_Text.webp" title="GEN Text" width="66"/></a>
    <a href="#fx-convert"><img src="./docs/media/devices/PX_FX_Convert.webp" title="FX Convert" width="66"/></a>
    <a href="#in-mix"><img src="./docs/media/devices/PX_IN_Mix.webp" title="IN Mix" width="66"/></a>
    <a href="#gen-cos-pattern"><img src="./docs/media/devices/PX_GEN_Cos_Pattern.webp" title="GEN Cos Pattern" width="155"/></a>
    <a href="#fx-color"><img src="./docs/media/devices/PX_FX_Color_(gamma).webp" title="FX Color" width="149"/></a>
    <a href="#px-mix-channel"><img src="./docs/media/devices/PX_Mix_Channel.webp" title="PX Mix Channel" width="66"/></a>
    <a href="#fx-delay"><img src="./docs/media/devices/PX_FX_Delay.webp" title="FX Delay" width="66"/></a>
    <a href="#in-cam"><img src="./docs/media/devices/PX_IN_Cam.webp" title="IN Cam" width="66"/></a>
    <a href="#in-stream"><img src="./docs/media/devices/PX_IN_Stream_(Spout).webp" title="IN Stream" width="66"/></a>
    <a href="#px-mix-transition"><img src="./docs/media/devices/PX_Mix_Transition.webp" title="PX Mix Transition" width="66"/></a>
    <a href="#dev-info"><img src="./docs/media/devices/DEV_Info.webp" title="DEV Info" width="127"/></a>
    <a href="#px-mix-view"><img src="./docs/media/devices/PX_Mix_View.webp" title="PX Mix View" width="163"/></a>
</div>
<!-- end: collage -->

<br>

- [Install](#install)
- [Troubleshooting and feedback](#troubleshooting-and-feedback)
- [Guide](#guide)
    - [Minimal patch](#guide--minimal-patch)
    - [Adding FX](#guide--adding-fx)
    - [Using Mix Dry](#guide--using-mix-dry)
    - [Syphon streaming](#guide--using-mix-dry)
    - [Automation](#guide--automation)
    - [Transitions](#guide--performance)
- [Devices](#devices)
- [Alternatives](#alternatives)
- [Roadmap](#roadmap)
- [License](#license)

<br>

## Install


0. Prerequisites: _Ableton Live 12 Suite_ or _Ableton Live 12 Standard with Max for Live_
1. Download latest [release](https://github.com/darosh/px-stream/releases)
2. Follow official instructions on [Using third-party Packs](https://help.ableton.com/hc/en-us/articles/206471044-Using-third-party-Packs)

### Windows

Windows users need to install two additional Max packages (VIDDLL and [ISF](https://cycling74.com/packages/isf)) in [package manager](https://docs.cycling74.com/userguide/package_manager/)

Open the package manager:

1. Open [...] menu on max device, for example `PX World` and click `Edit in Max`
2. In Max > `File` menu click `Show Package Manager`

In package manager:

4. Select `Remote packages` and search for a package `VIDDLL`
5. Open the package and click install
6. Repeat step **4.** for `ISF` package
7. Restart Live

<br>

## Troubleshooting and feedback

- File an [issue](https://github.com/darosh/px-stream/issues) or vote on existing one
- Join our [Discord server](https://discord.gg/de5txQSven)

<br>

## Guide

### Guide &mdash; Minimal patch

1. Insert [PX World](#px-world) device
2. Insert [PX Mix View](#px-mix-view) device
3. Insert [GEN Mini Shader](#gen-mini-shader) device
4. Select channel number **1** in `channel selector` in the bottom of the last inserted device

✨ `TIP`  All devices start with PX so you can quickly select device with sequence <kbd>Command+F</kbd> + `px wo` + <kbd>Down</kbd> + <kbd>Enter</kbd>

<img src="./docs/media/guide/Minimal_patch.webp" height="231" title="Minimal patch" />

<br>

### Guide &mdash; Adding FX

1. Select **P** (Pass) in `channel selector` in the `GEN Mini Shader` device from previous guide
2. Insert [FX Kaleidoscope](#fx-kaleidoscope) device
3. Insert [PX Mix Channel](#px-mix-channel) device
4. Select **1** in `channel selector in the bottom of the last inserted device
5. Adjust FX Kaleidoscope parameters as you like

<img src="./docs/media/guide/Adding_FX.webp" height="231" title="Adding FX" />

<br>

### Guide &mdash; Using Mix Dry

1. Insert [IN SVG](#in-svg) device before `Mix Channel` device and select `PX Stream logo`
2. Insert [PX Mix Dry](#px-mix-dry) before `Mix Channel` device
3. Experiment with parameters in the `Mix Dry` device

✨ `TIP`  `Dry` selector **-1** to **-4** in the `PX Mix Dry` device selects which of the previous devices is used as the _dry_ one

✨ `TIP`  With [PX Mix Channel](#px-mix-channel) and [PX Mix Dry](#px-mix-dry) you can create complex multichannel non-linear processing structure in single track


<img src="./docs/media/guide/Using_Mix_Dry.webp" height="231" title="Using Mix Dry" />

<br>

### Guide &mdash; Syphon streaming

1. Expand the [PX Mix View](#px-mix-view) device using the `[...]` button
2. Select Mix OUT channel number **1** &dash; this will allow you to select the stream in Syphon client as `[Live] PX Stream 1`

📒 `NOTE` `Mix OUT` has dual purpose, not only it turns the Syphon output on, but it also can be consumed with the [IN Mix](#in-mix) device for further (post)processing

<img src="./docs/media/guide/Syphon_streaming.webp" height="231" title="Syphon streaming" />

<br>

### Guide &mdash; Automation

Most of the 500+ parameters in the toolkit can be [automated in standard way](https://www.ableton.com/en/manual/automation-and-editing-envelopes/) with few exceptions:

- **File and font menus** in devices loading dynamic assets operate on two ways
  1. when you only select single value without automation the session will restore the value based on selected name
  2. when you automate, for example `File / File Automation` parameter in [IN SVG](#in-svg) the automation is based on order of items and will break if you change the content of loaded folder, for example `assets/svg`
- **Color wheels** in [FX Color](#fx-color) &mdash; see  🧲 `AUTOMATION` note in the device documentation

<br>

### Guide &mdash; Performance

- Devices and assets are designed to be mostly lightweight and run at 60 to 120 FPS on MacBook M1 Pro.
- Power status, energy saving options and floating/fullscreen preview window status may affect real FPS.
- Most of the processing is done with OpenGL on GPU so they should not affect Ableton CPU based sound processing.
- Optimizing resources loaded from assets is recommended: smaller dimensions for images and smaller format (WEBP) and smaller dimensions and CPU friendly codec (HAP) for videos
- Some devices, especially the postprocessing ones like the [FX Pass](#fx-pass) is better to use only once &mdash; before the final output

✨ `TIP` To guess the impact of device on performance select 0 FPS in [PX World](#px-world) and turn on the `Show FPS` switch in extended (`[...]` button) [PX Mix View](#px-mix-view) device

<br>

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
        <a href="#in-stream">IN Stream</a><br>
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

<br>

### PX World

Essential rendering context. You need exactly one per Live set. More would be problematic. Sets target FPS. FPS 0 will use available maximum with displaylink turned on on Mac.

<img src="./docs/media/devices/PX_World.webp" height="231" title="PX World" /> <img src="./docs/media/devices/PX_World_(mad_world).webp" height="231" title="PX World (mad world)" />

<br>

---
<br>

### PX Mix View

Multichannel mixing and preview. Mix output selected in expanded section can be consumed by [IN Mix](#in-mix) device and [Syphon](https://syphon.info/) clients. Click preview for floating window, <kbd>ESC</kbd> for fullscreen on/off.

<img src="./docs/media/devices/PX_Mix_View.webp" height="231" title="PX Mix View" /> <br><img src="./docs/media/devices/PX_Mix_View_(expanded).webp" height="148" title="PX Mix View (expanded)" />

🎛️ `Hotkeys` 
- <kbd>Shift+Click</kbd> for instant screenshot stored in `assets/images`, it will be available in [IN Image](#in-image) device as PNG file
- <kbd>Control+Click</kbd> for instant video recording (while holding the mouse button) stored in `assets/video`, it will be available in [IN Video](#in-video) device as MOV file. For more control and automation use [PX Rec](#px-rec) device instead.

✨ `TIP` Click on preview opens floating window with fullscreen option and channel toggle buttons

<img src="./docs/media/extra/PX_Mix_View_(floating_menu).png" title="Floating window menu" height="148" />

<br>

---
<br>

### PX Mix Channel

Send texture to selected channel. Alternative to individual channel selectors on each device.

<img src="./docs/media/devices/PX_Mix_Channel.webp" height="231" title="PX Mix Channel" />

<br>

---
<br>

### PX Mix Dry

Dry/wet mix from two previous devices. Select which (-1 to -4) for dry signal. Multiple blend modes and signal swap. Swap has no effect on [commutative](https://en.wikipedia.org/wiki/Commutative_property) blending methods.

<img src="./docs/media/previews/PX_Mix_Dry_v1.webp" height="231" title="PX Mix Dry" /> <img src="./docs/media/automation/PX_Mix_Dry_v1.webp" height="231" title="PX Mix Dry" />

<br>

---
<br>

### PX Mix Transition

Transition between two previous devices. Channel selection same as Mix Dry. Uses 90+ transitions from [gl-transitions.com](https://gl-transitions.com/).

<img src="./docs/media/previews/PX_Mix_Transition_v1.webp" height="231" title="PX Mix Transition" /> <img src="./docs/media/automation/PX_Mix_Transition_v1.webp" height="231" title="PX Mix Transition" />

<br>

---
<br>

### PX Rec

Video recording and screenshotting

<img src="./docs/media/devices/PX_Rec.webp" height="231" title="PX Rec" />

✨ `TIP`  Recorded files are stored under `assets/video` as MOV files and directly available in [IN Video](#in-video) device and for screenshot it is PNG files in `assets/images` and [IN Image](#in-image) device

<br>

---
<br>

### PX Route Audio

Route audio from any track in your Live set

<img src="./docs/media/devices/PX_Route_Audio.webp" height="231" title="PX Route Audio" />

<br>

---
<br>

### PX Route MIDI

Send MIDI from selected track to next device. Works with [PX Shader](#px-shader) device and MIDI-enabled shaders.

<img src="./docs/media/devices/PX_Route_MIDI_(linked).webp" height="231" title="PX Route MIDI (linked)" />

<br>

---
<br>

### PX Shader

Interactive Shader Format ([ISF](https://isf.video/)) host for generators and effects. Up to 32 dynamic parameters and various audio rendering options with our custom audio types.

<img src="./docs/media/previews/PX_Shader_v1.webp" height="231" title="PX Shader" /> <img src="./docs/media/devices/PX_Shader.webp" height="231" title="PX Shader" /> <br><img src="./docs/media/devices/PX_Shader_(types).webp" height="148" title="PX Shader (types)" />

🧲 `AUTOMATION` To automate selected shader file find `File` / `File Automation` parameter in automation lane

#### PX Shader &mdash; Audio types

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

#### PX Shader &mdash; Shader categories

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

<br>

---
<br>

### IN Cam

Live input from connected video devices

<img src="./docs/media/devices/PX_IN_Cam.webp" height="231" title="PX IN Cam" />

<br>

---
<br>

### IN Stream

[Syphon](https://syphon.info/) or [Spout](https://spout.zeal.co/) input for sharing visuals between applications.

<img src="./docs/media/devices/PX_IN_Stream_(Syphon).webp" height="231" title="PX IN Stream (Syphon)" /> <img src="./docs/media/devices/PX_IN_Stream_(Spout).webp" height="231" title="PX IN Stream (Spout)" />

<br>

---
<br>

### IN Image

Static image input. Supports JPG, WEBP and PNG formats.

<img src="./docs/media/previews/PX_IN_Image_v1.webp" height="231" title="PX IN Image" /> <img src="./docs/media/automation/PX_IN_Image_v1.webp" height="231" title="PX IN Image" />

🧲 `AUTOMATION` To automate selected image file find `File` / `File Automation` parameter in automation lane

<br>

---
<br>

### IN SVG

Vector graphics input with resolution-independent scaling SVG file formal

<img src="./docs/media/previews/PX_IN_SVG_v1.webp" height="231" title="PX IN SVG" /> <img src="./docs/media/automation/PX_IN_SVG_v1.webp" height="231" title="PX IN SVG" />

🧲 `AUTOMATION` To automate selected SVG file find `File` / `File Automation` parameter in automation lane

<br>

---
<br>

### IN Video

Video playback. Supports MP4, AVI, MOV (including [HAP codecs](https://hap.video/)).

<img src="./docs/media/previews/PX_IN_Video_v1.webp" height="231" title="PX IN Video" /> <img src="./docs/media/automation/PX_IN_Video_v1.webp" height="231" title="PX IN Video" />

🧲 `AUTOMATION` To automate selected video file find `File` / `File Automation` parameter in automation lane

<br>

---
<br>

### IN Channel

Use texture from [Mix Channel](#px-mix-channel) as input. Creates feedback when combined with [Mix Dry](#px-mix-dry) on same channel.

<img src="./docs/media/devices/PX_IN_Channel.webp" height="231" title="PX IN Channel" />

<br>

---
<br>

### IN Mix

Use channel mix from [Mix View](#px-mix-view) device as input texture.

<img src="./docs/media/devices/PX_IN_Mix.webp" height="231" title="PX IN Mix" />

<br>

---
<br>

### GEN Cos Pattern

Procedural patterns with cosine palettes [popularized](https://iquilezles.org/articles/palettes/) by Inigo Quilez

<img src="./docs/media/previews/PX_GEN_Cos_Pattern_v1.webp" height="231" title="PX GEN Cos Pattern" /> <img src="./docs/media/automation/PX_GEN_Cos_Pattern_v1.webp" height="231" title="PX GEN Cos Pattern" />

<br>

---
<br>

### GEN Mini Shader

Shaders in [twigl.app](https://twigl.app/) `geekest (300 es)` format.

<img src="./docs/media/previews/PX_GEN_Mini_Shader_v1.webp" height="231" title="PX GEN Mini Shader" /> <img src="./docs/media/automation/PX_GEN_Mini_Shader_v1.webp" height="231" title="PX GEN Mini Shader" />

🧲 `AUTOMATION` To automate selected mini shader find `File` / `File Automation` parameter in automation lane

#### GEN Mini Shader &mdash; Shader files

`GLSL` files are stored in `data/mini-shaders` folder. Temporary JXS files is stored under `data/mini-shaders/.temp.jxs`.

#### GEN Mini Shader &mdash; Shader categories

| Type | Description           |
|------|-----------------------|
| B.   | Shaders from Blue Sky |
| T.   | Shaders from Twitter  |
| X.   | Examples              |

Learn more about the [Modeling the World in 280 Characters](https://tympanus.net/codrops/2025/06/23/modeling-the-world-in-280-characters/).

#### GEN Mini Shader &mdash; Variables

| Name | Type      | Description  |
|------|-----------|--------------|
| FC   | vec4      | gl_FragCoord |
| r    | vec2      | resolution   |
| m    | vec2      | mouse        |
| t    | float     | time         |
| f    | float     | frame        |
| b    | sampler2D | backbuffer   |
| o    | vec4      | output       |

#### GEN Mini Shader &mdash; Utilities

Dynamically included when referenced in mini shader GLSL.

- **Noise**: `F4`, `mod289`, `permute`, `taylorInvSqrt`, `snoise2D`, `snoise3D`, `grad4`, `snoise4D`, `fsnoise`, `fsnoiseDigits`
- **Color**: `hsv`
- **Rotation**: `rotate2D`, `rotate3D`
- **Constants**: `PI`, `PI2`
- **Compatibility**: `tanh` (`#define tanh(x) tanh(clamp(x, -10.,10.))`)

Learn more in [twigl documentation](https://github.com/doxas/twigl#twigl).

<br>

---
<br>

### GEN Sketching

Custom OpenGL primitives scripting with JavaScript, slightly compatible with [openprocessing.org](https://openprocessing.org/)

<img src="./docs/media/previews/PX_GEN_Sketching_v1.webp" height="231" title="PX GEN Sketching" /> <img src="./docs/media/automation/PX_GEN_Sketching_v1.webp" height="231" title="PX GEN Sketching" />

🧲 `AUTOMATION` To automate selected sketch find `File` / `File Automation` parameter in automation lane

🧪 `DEV_NOTE` This device is very limited, and due to the underlying tech `JS`/`jit.gl.sketch` it will likely develop into its own thing rather than processing.js compatible environment 

<br>

---
<br>

### GEN Text

Text generation from session/clip names, custom text, or dynamic musical data (beat, bar.beat, time)

<img src="./docs/media/previews/PX_GEN_Text_v1.webp" height="231" title="PX GEN Text" /> <img src="./docs/media/automation/PX_GEN_Text_v1.webp" height="231" title="PX GEN Text" /> <img src="./docs/media/devices/PX_GEN_Text_(expanded).webp" height="231" title="PX GEN Text (expanded)" />

🧲 `AUTOMATION` To automate selected font find `Font` / `Font Automation` parameter in automation lane

<br>

---
<br>

### FX Alpha

Alpha channel tools: chroma key, mapping, inversion, smoothing, removal, etc.

<img src="./docs/media/previews/PX_FX_Alpha_v1.webp" height="231" title="PX FX Alpha" /> <img src="./docs/media/automation/PX_FX_Alpha_v1.webp" height="231" title="PX FX Alpha" />

<br>

---
<br>

### FX Blur

Four blur shaders from Max/Jitter stock collection

<img src="./docs/media/previews/PX_FX_Blur_v1.webp" height="231" title="PX FX Blur" /> <img src="./docs/media/automation/PX_FX_Blur_v1.webp" height="231" title="PX FX Blur" />

<br>

---
<br>

### FX Color

Color grading and adjustment tools

<img src="./docs/media/previews/PX_FX_Color_v1.webp" height="231" title="PX FX Color" /> <img src="./docs/media/automation/PX_FX_Color_v1.webp" height="231" title="PX FX Color" /> <br><img src="./docs/media/devices/PX_FX_Color_(gamma).webp" height="148" title="PX FX Color (gamma)" /> <img src="./docs/media/devices/PX_FX_Color_(hue).webp" height="148" title="PX FX Color (hue)" />

🧲 `AUTOMATION` For color wheels automation find `Dark X`, `Dark Y`, `Light X`, ... parameters in automation lane 

✨ `TIP` To reset color wheel to default value click its label `Dark`, `Light`, ...

<br>

---
<br>

### FX Colorize

Two/tri tone colorization with multiple mapping methods

<img src="./docs/media/previews/PX_FX_Colorize_v1.webp" height="231" title="PX FX Colorize" /> <img src="./docs/media/automation/PX_FX_Colorize_v1.webp" height="231" title="PX FX Colorize" />

<br>

---
<br>

### FX Convert

Texture format conversion including OKLAB and normalized OKLAB aka NOKLAB

<img src="./docs/media/previews/PX_FX_Convert_v1.webp" height="231" title="PX FX Convert" /> <img src="./docs/media/automation/PX_FX_Convert_v1.webp" height="231" title="PX FX Convert" />

✨ `TIP` to get even weirder colors use two `FX Convert` devices with different format

<br>

---
<br>

### FX Delay

Frame-based texture delay. Combine with Mix Dry device for ghost trail effects.

<img src="./docs/media/previews/PX_FX_Delay_v1.webp" height="231" title="PX FX Delay" /> <img src="./docs/media/automation/PX_FX_Delay_v1.webp" height="231" title="PX FX Delay" />

✨ `TIP` To see the dry and delayed signal at same time put [Mix Dry](#px-mix-dry) device after the delay one

<br>

---
<br>

### FX Kaleidoscope

Kaleidoscope patterns based on [Brewster designs]((https://en.wikipedia.org/wiki/Kaleidoscope#Different_versions_suggested_by_Brewster)) plus Max/Jitter shader

<img src="./docs/media/previews/PX_FX_Kaleidoscope_v1.webp" height="231" title="PX FX Kaleidoscope" /> <img src="./docs/media/automation/PX_FX_Kaleidoscope_v1.webp" height="231" title="PX FX Kaleidoscope" />

<br>

---
<br>

### FX Pass

Postprocessing shaders from Max/Jitter stock library. See [Max documentation](https://docs.cycling74.com/reference/jit.gl.pass).

<img src="./docs/media/previews/PX_FX_Pass_v1.webp" height="231" title="PX FX Pass" /> <img src="./docs/media/automation/PX_FX_Pass_v1.webp" height="231" title="PX FX Pass" />

✨ `TIP` Everything looks better with Bloom effect, especially if you are into the neon glowing aesthetics.

✨ `TIP` To adjust Bloom effect find the right `Threshold` first and then set the `Bloom` amount

<br>

---
<br>

### FX Pixelization

Multi-shape pixelization: rectangular, circular, honeycomb, hexagonal, triangular grids

<img src="./docs/media/previews/PX_FX_Pixelization_v1.webp" height="231" title="PX FX Pixelization" /> <img src="./docs/media/automation/PX_FX_Pixelization_v1.webp" height="231" title="PX FX Pixelization" />

✨ `TIP` To make a gap between pixels lower the `Shape %` value

✨ `TIP` To make image less pixelated adjust the `Smooth` parameter

✨ `TIP` For LED like glowing effect use `Fading`

<br>

---
<br>

### FX Transform

Geometric transformations: scale, shift, rotation (around axis or vector)

<img src="./docs/media/previews/PX_FX_Transform_v1.webp" height="231" title="PX FX Transform" /> <img src="./docs/media/automation/PX_FX_Transform_v1.webp" height="231" title="PX FX Transform" />

<br>

---
<br>

### DEV Info

Shows texture info for development purposes

<img src="./docs/media/devices/DEV_Info.webp" height="231" title="DEV Info" />

<br>

---
<br>

### DEV Console

Enables detailed Max console output for development and debugging. ⚠ DO NOT USE IN PRODUCTION!

<img src="./docs/media/devices/DEV_Console.webp" height="231" title="DEV Console" />

<br>

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

<br>

## Roadmap

- alpha testing (volunteers)
- more shaders, presets
- beta testing (public)
- more shaders, presets
- demo track
- 1.0 release
- gumroad.com for donations?
- more shaders, presets
- 2.0?
  - simple/instant audio/MIDI based modulation
  - geometry/scene based devices?
  - more GENs, FXs, shaders, presets
  - device template / SDK, dev doc?

<br>

## License

This project is dual-licensed under [MIT or CC-BY](./LICENSE) (your choice).

You may use, modify, and distribute this work under either license.

For dynamically loaded assets licensing see [assets/LICENSE.md](./assets/LICENSE.md)
