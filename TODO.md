# Todo

## Doc

- [ ] doc
- [ ] doc demo
- [ ] doc world enabled automation
- [ ] doc update banner
- [ ] doc FS display link and fps 0, and multi fs limitation
- [ ] doc exclusive rotation
- [ ] doc console font, brew install --cask font-cascadia-code
- [ ] doc https://syphon.info/recorder.html
- [ ] sdk?

## Misc

- [ ] disable unused chains?
- [ ] automate batch freeze?
- [ ] If parameter automation causes high CPU load, try enabling Defer Automation Output in the object Inspector,
  or try higher values for the Update Limit.
- [ ] mid/side something?
- [ ] check texture float 32
- [ ] check fx (pass) quality param
- [ ] restore session params and automation
- [ ] disable dynamic live.menu automation
- [ ] remove the silly cam & syphon icons, replace with dims and activity
- [ ] check negative values parsing in eslint

## Devices

- [ ] video in? loop on/off per clip, speed control, in/out points
- [ ] texture (feedback?) delay
- [ ] color correction
  - [ ] cc.scalebias.jxs?
  - [ ] https://docs.cycling74.com/learn/articles/01-color-management/
- [ ] JPEG
- [ ] video rate LFO?

- [ ] color
- [ ] gradient
- [ ] image in?
- [ ] activity blink?
- [ ] reactive geometry device?
  - [ ] /Applications/Max.app/Contents/Resources/C74/media/demos/max9-geom-demo.maxpat
- [ ] inline preview device

### DEV

#### DEV Console.amxd

#### DEV Info.amxd

### FX

#### PX FX Blur.amxd

- [ ] find optimal ranges

#### PX FX Delay.amxd

- [ ] make max frames dynamic
- [ ] https://cycling74.com/tutorials/max-and-opengl-gl-texture-delay
- [ ] https://www.youtube.com/watch?v=PomKrUNqdAk

#### PX FX Kaleidoscope.amxd

- [ ] find optimal ranges

#### PX FX Pass.amxd

- [ ] find optimal ranges

### IN

#### PX IN Cam.amxd

- [ ] no webcam selected on load
- [ ] webcam stored as name

#### PX IN Channel.amxd

#### PX IN Cos Pattern.amxd

#### PX IN Mix.amxd

#### PX IN SVG.amxd

- [ ] powered by logo
- [ ] fix svg automation
- [ ] fix svg resolution switch
- [ ] cache svg texture

#### PX IN Syphon.amxd

- [ ] syphon persistence?
- [ ] fix jit.gl.syphonclient: doesn't understand "<separator>"

#### PX IN Text.amxd

- [ ] text: beat, time, frame, direct
- [ ] text font automation + ref, store by string

### PX

#### PX Mix Channel.amxd

#### PX Mix Dry.amxd

- [ ] fix dry swap dims?

#### PX Mix View.amxd

- [ ] optimize mix (jxs?)
- [ ] mix: takes screenshot

#### PX Route Audio.amxd

#### PX Route MIDI.amxd

#### PX Shader.amxd

- [ ] hsv mode?
- [ ] shader stored as name
- [ ] beat param?
- [ ] tempo param? BEAT? BAR?
- [ ] replace bpatchers
- [ ] scrollable bpatcher to isf info
- [ ] reset dials on empty inputs

#### PX Transform.amxd

#### PX World.amxd

## IFS

- [ ] frameSkip should be time based
- [ ] more shaders
- [ ] better midi shader
- [ ] vu shader?
- [ ] rolling waveform shader?

## Done

- [x] fix pass?
- [x] add activity to dev info
- [x] screenshot automation
- [x] optimize console
- [x] ~~transformation causing errors in PASS?~~
- [x] transform bake in texture
- [x] transform scale x=y btn
- [x] transform rotation tabs
- [x] ~~pause rendering on pause~~ use automation instead
- - [x] ~~mystery error
  ```typedmess: draw: corrupt object object_class_internal: bad object b06583e0 doesn't understand "draw" ```~~
- [x] info device console style
- [x] ~~doc~~ eslint globals, sends, dicts
- [x] disable device for bypass
- [x] use jit window instead of world for fullscreen
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
