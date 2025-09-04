# Todo

## Misc

- [ ] restore session params and automation
- [ ] pause rendering on pause
- [ ] update banner
- [ ] mystery error ```typedmess: draw: corrupt object object_class_internal: bad object b06583e0 doesn't understand "draw" ```
- [ ] demo
- [ ] doc
- [ ] doc FS display link and fps 0, and multi fs limitation
- [ ] sdk?
- [ ] disable unused chains?
- [ ] reset dials on empty inputs
- [ ] optimize mix (jxs?)
- [ ] scrollable bpatcher to isf info
- [ ] fix jit.gl.syphonclient: doesn't understand "<separator>"
- [ ] no webcam selected on load
- [ ] web cam stored as name
- [ ] shader stored as name
- [ ] hsv mode?
- [ ] automate batch freeze?
- [ ] doc exclusive rotation
- [ ] cache svg texture
- [ ] text font automation + ref, store by string
- [ ] info device console style
- [ ] doc console font, brew install --cask font-cascadia-code
- [ ] doc globals, sends, dicts
- [ ] doc https://syphon.info/recorder.html
- [ ] syphon persistence?
- [ ] transformation causing errors in PASS?
- [ ] find optimal ranges for FX pass / blur / kaleido
- [ ] powered by logo
- [ ] disable device for bypass
- [ ] frameSkip should be time based
- [ ] fix svg automation
- [ ] fix svg resolution switch
- [ ] disable dynamic live.menu automation
- [ ] text: beat, time, frame, direct
- [ ] If parameter automation causes high CPU load, try enabling Defer Automation Output in the object Inspector,
  or try higher values for the Update Limit.
- [ ] cc.scalebias.jxs?
- [ ] use jit window instead of world for fullscreen
- [ ] https://cycling74.com/tutorials/max-and-opengl-gl-texture-delay
- [ ] https://www.youtube.com/watch?v=PomKrUNqdAk
- [ ] mix: takes screenshot 

chain devices:

- Blur FX
- Cam IN
- Channel IN
- Channel
- Info
- Kaleido FX
- Dry Wet
- Mix IN
- Pass FX
- Send MIDI
- Shader
- SVG IN
- Text
- Transform

non-chain devices:

- Console
- Mix
- Receive
- Send MIDI
- World

## Ideas

- [ ] mid/side something?

## Devices

- [ ] video in? loop on/off per clip, speed control, in/out points
- [ ] texture (feedback?) delay
- [ ] color correction
- [ ] JPEG
- [ ] video rate LFO?

- [ ] color
- [ ] gradient
- [ ] image in?
- [ ] activity blink?
- [ ] reactive geometry device?
- [ ] inline preview device

## IFS

- [ ] more shaders
- [ ] better midi shader
- [ ] vu shader?
- [ ] rolling waveform shader?
- [ ] beat param?
- [ ] tempo param? BEAT? BAR?

## Done

- [x] blur redesign
- [x] fl: tabs
- [x] fl: cam tooltips
- [x] cos pallete (presets)
- [x] kaleido scale lock
- [x] kaleido redesign
- [x] kaleido simulation https://en.wikipedia.org/wiki/Kaleidoscope
- [x] rename IN FX Dry
- [x] Cos Pattern:
    - lock scale,
    - extract param (flower etc),
    - color presets,
    - win size -1,
    - ~~luma?~~
    - channel switch
    - hue shift
- [x] [P] pass not marked as RED on collision?
- [x] merge channels? dry wet?
- [x] ~~how to erase texture from layer?~~
- [x] ~~c~~enter dry/wet by channel
- [x] dry wet - dry selector
- [x] review channel / chain usage, esp. chain "to end"
- [x] channel add through
- [x] shader redesign, sliders columns by ~~4~~ 8,
- [x] shader type should not be default on, expand should be ...
- [x] global reset texture?
- [x] add dry/wet algo
- [x] rename dev devices to DEV?
- [x] syphon in?
- [x] copy channel?
- [x] ~~migrate to umenu?~~
- [x] View -> Mix, Stream -> Out, Mix OUT, MIX IN
- [x] Unify prefix PX
- [x] webcam in?
- [x] jit fx? kaleido
- [x] ~~~jit fx? amoeba~~~
- [x] jit fx blur?
- [x] jit fx glow?
- [x] fx pass
- [x] check removed device/channel
- [x] remove log from view
- [x] texture info
- [x] shader wrong intital size
- [x] ~~view channel hotkeys 1-8~~
- [x] esc multi view bug
- [x] debug globals?
- [x] popup responsivness
- [x] channel to maxpat
- [x] ~~selector to maxpat~~
- [x] ~~GL fullscreen FPS sync~~
- [x] check dim params
- [x] extend dim params
- [x] popup ui?
- [x] popup fullscreen
- [x] doc alternatives
- [x] channel view buttons automation
- [x] adjust fps brightness
- [x] better XY? https://m1el.github.io/woscope-how/ https://github.com/m1el/woscope/blob/master/shaders/fsLine.glsl
- [x] logo open GH
- [x] fix text error msg
- [x] popup
- [x] rebrand popup title
- [x] rebrand patching comments
- [x] rebrand world context
- [x] ~~wave draw?~~
- [x] text/clip? render
- [x] rebrand to PX Stream?
- [x] midi render
- [x] render dimensions selector
- [x] show shader credit
- [x] syphon view
- [x] open file
- [x] open folder
- [x] osc pre render?
- [x] parametrize audio images
- [x] image params
- [x] add vizualizer meta
- [x] syphon tabs
- [x] load shaders dir
- [x] categorize
- [x] fps
- [x] unified wav


#!/bin/bash

# source file
SRC="./.TEST EMPTY.maxpat"

# target files
TARGETS=(
"PX IN Cam.maxpat"
"PX IN Channel.maxpat"
"PX IN Cos Pattern.maxpat"
"PX IN Mix.maxpat"
"PX IN SVG.maxpat"
"PX IN Syphon.maxpat"
"PX IN Text.maxpat"
"PX Mix Channel.maxpat"
"PX Mix Dry.maxpat"
"PX Mix View.maxpat"
"PX Route Audio.maxpat"
"PX Route MIDI.maxpat"
"PX Shader.maxpat"
"PX Transform.maxpat"
"PX World.maxpat"
"PX FX Pass.maxpat"
"PX FX Kaleidoscope.maxpat"
"DEV Info.maxpat"
"DEV Console.maxpat"
)

# copy loop
for TGT in "${TARGETS[@]}"; do
cp "$SRC" "$TGT"
echo "Created: $TGT"
done