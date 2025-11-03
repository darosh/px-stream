# Todo

- [ ] check duplication every device
- [ ] check previews undo history on automation
- [ ] check performance pack
- [ ] demo track should be [standard compatible](https://www.ableton.com/en/live/compare-editions/) = no operator, no wavetable
- [ ] transition view fit
- [ ] masking?
- [ ] transform: crop?
- [ ] windows + preview bug in "using feedback"
- [ ] shader should not history undo on session open
- [ ] follow + sync: macro support
- [ ] follow + sync: skip self

- [Release notes](#release-notes)
- [Licencing](#licencing)
- [ISF](#isf)
- [Windows](#windows)
- [Final checklist](#final-checklist)
- [Push mapping](#push-mapping)
- [Done](#done)

## Release notes

```text
Alpha 3 release notes:
Mix View device:
- GL button removed (screenshots in the doc will be updated for Beta release)
- preview inside device is limited to 25 FPS (12.5 FPS on Windows), (FPS in pop window and stream output is unaffected)
```

```text
Alpha 7 release notes:
- cross device communication optimization
- reduced preview inside Mix View device on Windows to 8 FPS
```

```text
Alpha 10 release notes:
Mix View
- `[...]` button replaced with `[<]` and `[>]` buttons
```

```text
Alpha 11 release notes:
All
- Push support

Mix View
- fixed mixing sliders 

Mix View + IN Mix
- Mix OUT, IN Mix: renamed buttons from numbers 1-9 to letters A-Z

DEV Info, DEV Console
- smaller device width
```

```text
Alpha 13 release notes:
Mix Grid
- new device

Mix View
- more blend modes + color modes
- alpha, view fit, swap and OKLAB support
- consistent initial popup size
- improved UI look for smaller popup size
- known issue: demo set "Using Feedback" not showing preview inside device on Windows (pop works) 

Mix Dry
- more blend modes + color modes
- alpha, view fit, swap and OKLAB support

IN Video
- fixed play buton (cosmetic) state
```

```text
Alpha 17 release notes:
Mix View
- added UI, Full, Bare options as a workaround for multi-monitor setup especially with different DPI which does not work well with the UI option
- fixed dimension change for hidden preview
- fixed UI for Max 9.1.0 although there might other issues so it's better to stay on bundled 9.0.7
- added fullscreen <key>ESC<key> support
```

## Licencing

- [ ] check mini shaders licences
  - [x] MIT https://bsky.app/profile/holtsetio.bsky.social/post/3lwyikurabc26
  - [x] CC0 https://bsky.app/profile/rangemarten.bsky.social/post/3losfvor4ws2y
  - [x] https://x.com/kamoshika_vrc/status/1684571232765882368
  - [x] CC BY-NC-SA https://x.com/XorDev/status/1601770313230209024
  - [x] MIT https://x.com/YoheiNishitsuji/status/1796435007873151189
- [ ] check processing licences
  - [x] CC BY https://x.com/SnowEsamosc/status/1971220103070130586
  - [x] https://x.com/yuruyurau/status/1719632742269514103

```text
Hi,

I would love to include your shaders in my open source VJ toolkit for Ableton Live: https://github.com/darosh/px-stream

Currently, it's included in the assets/mini-shaders folder with a link to the original post and marked as "license pending clarification" in assets/LICENSE.md.

The project is dual-licensed MIT/CC-BY. I can work with any open license you prefer (CC0, CC-BY, CC-BY-NC-SA, etc.) - or if you'd prefer, I'll remove it immediately.

The shaders are dynamically loaded and user-editable, so people can learn from and tweak your code while creating visuals for their music.

Would you be okay with this? Let me know your preferred license or if you have any concerns.

Best regards,
Jan
```

```text
Hi,

I would love to include your Processing sketches in my open source VJ toolkit for Ableton Live: https://github.com/darosh/px-stream

Currently, it's included in the assets/sketches folder with a link to the original post and marked as "license pending clarification" in assets/LICENSE.md.

The project is dual-licensed MIT/CC-BY. I can work with any open license you prefer (CC0, CC-BY, CC-BY-NC-SA, etc.) - or if you'd prefer, I'll remove it immediately.

The sketches are dynamically loaded and user-editable, so people can learn from and tweak your code while creating visuals for their music.

Would you be okay with this? Let me know your preferred license or if you have any concerns.

Best regards,
Jan
```

```text
Hi! Can I include it in my open source VJ toolkit https://github.com/darosh/px-stream ? It's in assets/mini-shaders with link to post, marked "license pending." Any open license works (CC0/BY/BY-NC) or I'll remove it. Thank you!
```

```text
Hi! Can I include it in my open source VJ toolkit https://github.com/darosh/px-stream ? It's in assets/sketches with link to post, marked "license pending." Any open license works (CC0/BY/BY-NC) or I'll remove it. Thank you!
```

## ISF

- [ ] tempo param? BEAT? BAR?
- [ ] frameSkip should be time based
- [ ] more shaders
- [ ] better midi shader
- [ ] vu shader?
- [ ] rolling waveform shader?

## Windows

- [x] mix view resize glitch
- [x] mix view broken popup
- [x] FX pass diferent tab layout
- [x] spout support
- [x] jit.record codec diferences?
    - jpeg, h264, prores4444, prores422
    - jpeg, h264, gif
    - use: h264, prores422, prores4444
- [x] syphon error
- [x] VIDDLL needs to be installed
- [x] Mini Shader
  - jit.gl.slab: GLSL shader error in program fp:
    ERROR: 2:4: 'FragUserData' : cannot initialize this type of qualifier
  - jit.gl.slab: jit.gl.shader: GLSL program failed to compile.
  - WIN: OpenGL Version 4.6.0 - Build 30.0.101.1218, GLSL Version 4.60 - Build 30.0.101.1218
  - MAC: OpenGL Version 4.1 Metal - 89.4, GLSL Version 4.10
- [x] isf mxo?
- [x] ~~; max packagebrowser viddll~~ does not work in Live

## Final checklist

From [m4l-production-guidelines](https://github.com/Ableton/maxdevtools/blob/main/m4l-production-guidelines/m4l-production-guidelines.md)

Here is a checklist to recap the topics of this guide that can be tested, which you can use for **Quality Assurance** purposes for your device.

**General**

- [x] Error messages: There are no prints in the Max Console on load.
- [ ] Undo History: After adding the device, there is only one new undo.
- [ ] Undo History: Live's undo menu is never ‘flooded’.
- [x] Freezing: The device is frozen if it contains dependencies.
- [ ] Presets: The device comes with a collection of presets.

**Audio and MIDI**

- [x] Clicks: There are no unintended audio clicks, when changing parameter values or otherwise.
- [x] Sample rate consistency: Everything continues to work and sound the same when changing the sample rate in Live's preferences.
- [x] Render consistency: The device sounds identical on playback, on a frozen track, and on rendering an audio file.
- [x] MPE: MIDI devices support MPE (`is_mpe` is set to active).
- [x] Latency: The device plays in sync with the rest of the Live Set.
- [x] MIDI Mapping: The main device parameters can be mapped to a MIDI controller.
- [x] MIDI Tools: Random number generators (e.g. `random` objects) in between `live.miditool.in` and `live.miditool.out` must be reset using a seed value before being triggered. The seed value used should only change as a result of user input. This ensures a deterministic output when `live.miditool.in` is repeatedly triggered by Live.

**UI**

- [x] Live themes: All UI objects have theme-following colors, checked with all color themes.
- [ ] Disabling: The UI colors are correct when the device is disabled.
- [x] Positioning: The left-most element in presentation mode is as far from the left side of the device as the right-most element is from the right side.
- [x] Default initialization: Colors and texts that are changed dynamically are saved in their default state to prevent a color or content flash after loading a new instance of the device.
- [x] Font consistency: All UI fonts are set to Live's font.
- [x] Tab stops: Comments don't include any tab stops. The result will look different per OS.
- [x] Device width: The device does not take up too much of the horizontal space in the Device view.
- [x] Device width: If the device can dynamically change its size, make sure the device's custom width setting matches its initial width.

**Parameters**

Note: many of these things can be checked and changed in the View > Parameters window.

- [x] Info fields: All Info Title
- [ ] and Info fields are filled in.
- [ ] Naming: All parameters have non-generic Long Name and Short Name fields. No names have auto-appended indexes, like `[1]`.
- [ ] Automation: The parameter dropdown for a device contains all intended automatable parameters.
- [ ] Value editing: Parameter Types and Units correspond to the kind of data being represented, taking into account that using the Int type gives users a tall grid automation lane.
- [ ] Enum labels: Unit / labels of automation for Enum parameters don't have generic values ("val1"/"val2" for buttons).
- [ ] Modulation: All parameters have a modulation mode set. Bipolar for Float, Absolute for Int, or different if you prefer.
- [ ] Defaults: All default parameter values are correct, i.e. the device works well after newly instantiating it.
- [ ] Save and recall: All parameters are recalled correctly when opening a Live Set that contains the device with non-default values for all parameters.
- [ ] Push: The parameters show up correctly on Push.

**Robustness**

- [ ] CPU Load: The device does not cause unexpectedly high CPU load in the context of a Live Set.
- [ ] Version support: The device runs well with all Live and Max versions starting from the lowest versions set in the device.
- [ ] Platform support: Ideally macOS, Windows and Push 3 Standalone all host the device well.
- [ ] Independence: Multiple instances of the device run well simultaneously.
- [ ] Testing: The device is tested by one or more people besides the device developer.

**For new versions of existing devices**

- [ ] Name consistency: The parameter names are the same as the old version.
    - Take special care of auto-indexed names when there are parameters in abstractions (also in bpatchers) that are instantiated multiple times.
- [ ] Value recall: Parameter values stored in a Live Set with an old version of the device are all recalled properly.
- [ ] API ID recall: Persistent ids stored in a Live Set with an old version of the device are all recalled properly.

## Push mapping

- [x] DEV Console
- [x] DEV Info
- [x] PX Follow
- [x] PX FX Alpha
- [x] PX FX Blur
- [x] PX FX Color
- [x] PX FX Colorize
- [x] PX FX Convert
- [x] PX FX Delay
- [x] PX FX Kaleidoscope
- [x] PX FX Pass
- [x] PX FX Pixelization
- [x] PX FX Transform
- [x] PX GEN Cos Pattern
- [x] PX GEN Mini Shader
- [x] PX GEN Sketching
- [x] PX GEN Text
- [x] PX IN Cam
- [x] PX IN Channel
- [x] PX IN Image
- [x] PX IN Mix
- [x] PX IN Stream
- [x] PX IN SVG
- [x] PX IN Video
- [x] PX Mix Channel
- [x] PX Mix Dry
- [x] PX Mix Grid
- [x] PX Mix Transition
- [x] PX Mix View
- [x] PX Rec
- [x] PX Route Audio
- [x] PX Route MIDI
- [x] PX Shader
- [x] PX Sync
- [x] PX World

## Done

- [x] max 9.1.0: pop GL UI broken
- [x] postponed ~~max 9.1.0: pop size~~
- [x] follow: screenshots + doc
- [x] sync: screenshots + doc
- [x] follow: negative slope
- [x] follow: clamp mod
- [x] sync: bypass audio
- [x] follow
- [x] defer all params
- [x] use bundled max version 9.0.7
- [x] sync: push
- [x] ~~sync: link skip self clone~~
- [x] sync: auto re-link
- [x] sync: multi mod fix
- [x] sync: reset counters, comment on stop
- [x] enable_mouse_editing 0
- [x] screenshots
- [x] grid: screenshots
- [x] grid: animation
- [x] ~~doc: grid randomize cycles~~
- [x] ~~doc: oklab highlight~~
- [x] ~~doc: swap highlight~~
- [x] grid: push banks
- [x] ~~split grid shift 1px right~~
- [x] split grid arrow color?
- [x] split rename to ~~merge~~ grid
- [x] join rename to PIP
- [x] merge/split mix?
- [x] wrap clamp
- [x] win: test
- [x] assets: smaller video
- [x] initial pop size
- [x] pop resize blocked by sliders?
- [x] dry: swap + oklab highlight
- [x] externalize button highlight patches
- [x] update blend pickers
- [x] view: update push params
- [x] view: inline shaders
- [x] view: upgrade blend
- [x] unify play buttons
- [x] dry: update push params
- [x] dry: inline shaders
- [x] dry: upgrade blend
- [x] simplify feedback
- [x] ~~check frames on sketching~~
- [x] ~~sketching win performance~~
- [x] resize: console, info, 116, 130, 130 + 96 = 226
- [x] rename mix IN/OUT numbers to letters
- [x] ~~PX Mix device~~ preview switch + doc
- [x] cross device messages on change only
- [x] view: Pop + FPS re-layout
- [x] alpha 2 release and win test (before ~~or after~~ mac alpha 1 result?)
- [x] doc win settings: Win -> System -> Display -> Graphics -> Ableton -> GPU Preference = High performance, Optimization for windowed games: On
- [x] doc win settings: Max -> Options -> OpenGL Status
- [x] Preview
    - should reset pwin when (current === selected track) && is_windows
    - ~~should reset pwin when GL switch is changed~~
    - should pause preview rendering when current !== selected track || device is collapsed || device is disabled
    - none of above should cause lag in Syphon/Spout stream
    - ~~GL switch default on~~
    - GL switch doc needs update
- [x] doc alpha
- [x] pop persistence
- [x] performance guide: sample, embrace, ditch
- [x] doc: svg rounded dim
- [x] shader: param typing
- [x] sprint symout!!!
- [x] guide: using feedback
- [x] guide: using xy oscilloscope
- [x] guide: using midi
- [x] shader types block dials
- [x] ~~midi send refresh~~
- [x] decimal shader params
- [x] midi shaders
- [x] reduce alpha assets - keep/reorg previews
- [x] svg fit rounding?
- [x] re-screenshots mix view -1 -2 px
- [x] re-screenshot collapsed
- [x] re-screenshot guides
- [x] re-save collapsed presets and demos
- [x] ~~is windows~~ selected track needs real bang
- [x] align info box shader and mini shader, sketching
- [x] sketching collapse
- [x] sketching min delay 5
- [x] disable GL button on WINDOWS, gate
- [x] collapse by default: color, mini shader, pixelization, anything else?
- [x] blur dials position and labels fix
- [x] spout in bundle
- [x] win: canvas ui error
- [x] win: FPS font size
- [x] win: console hot keys Ctrl+Alt+Shift+M
- [x] sample presets
- [x] fix presets, add glow wave
- [x] screenshot
- [x] doc world enabled automation
- [x] doc FS display link and fps 0, and multi fs limitation
- [x] doc exclusive rotation
- [x] preset guide doc
- [x] guide presets
- [x] update image assets
- [x] fix save files timestamp
- [x] mini shader real time
- [x] check render gate closed on popup closed
- [x] do not resize fullscreen
- [x] ~~If parameter automation causes high CPU load, try enabling Defer Automation Output in the object Inspector,
  or try higher values for the Update Limit.~~
- [x] fix channel update on device remove
- [x] windows testing
- [x] guide + screenshots
- [x] fix color wheel automation position / update screenshots
- [x] check Mix OUT not persistent
- [x] check frozen console errors
- [x] check return and master
- [x] check grouping
- [x] mini shader param y fix
- [x] screenshot shortcuts
- [x] FX preview, animation, shader, color, kaleido, pass
- [x] remove second convert image
- [x] secondary images should be smaller?
- [x] ~~doc tab layout? top/side,bottom note?~~
- [x] explore bundle folder structure
- [x] assets org
- [x] fix: kaleidoscope switches, params
- [x] fix: transform rotation switch
- [x] disable value in cos pattern?
- [x] color grade automation
- [x] fix: video reset label
- [x] fix: svg file switch
- [x] double-check int params! "parameter_type" : 1
- [x] double-check generic val1 val2 enums
- [x] assets licence
- [x] dual licence?
- [x] disable irrelevant params: x=y
- [x] disable irrelevant params: alpha
- [x] disable irrelevant params: pixel
- [x] disable irrelevant params: colorize
- [x] ~~transition: 0 dry~~
- [x] disable irrelevant params: text
- [x] text: track field label
- [x] white square instead of black?
- [x] ~~doc update banner~~
- [x] ~~doc console font, brew install --cask font-cascadia-code~~
- [x] ~~doc https://syphon.info/recorder.html~~
- [x] ~~sdk?~~
- [x] mix view: optimize mix (jxs?)
- [x] param doc / mass edit
- [x] reorg repo: data=>assets, assets/devices=>docs/media/devices, assets/? => scripts/?, assets/?? => tests/fixtures
- [x] video in? ~~loop on/off per clip~~, speed control, ~~in/out points~~
- [x] ~~inline preview device?~~
- [x] record device?
- [x] ~~powered by logo~~
- [x] light theme fix
- [x] mix: takes screenshot
- [x] ~~delay: make max frames dynamic~~
- [x] https://cycling74.com/tutorials/max-and-opengl-gl-texture-delay
- [x] https://www.youtube.com/watch?v=PomKrUNqdAk
- [x] JPEG
- [x] ~~reactive geometry device?~~
- [x] ~~/Applications/Max.app/Contents/Resources/C74/media/demos/max9-geom-demo.maxpat~~
- [x] ~~oklab blend? color adjustment?~~
- [x] ~~sky box?~~
- [x] ~~blur: find optimal ranges~~
- [x] ~~kaleido: find optimal ranges~~
- [x] pass:find optimal ranges
- [x] no webcam selected on load
- [x] webcam stored as name
- [x] fix svg automation
- [x] fix svg resolution switch
- [x] ~~cache svg texture~~
- [x] fit vs fill
- [x] ~~fix dry swap dims?~~
- [x] shader: scrollable bpatcher to isf info
- [x] ~~shader:replace bpatchers~~
- [x] ~~hsv mode?~~
- [x] syphon persistence?
- [x] fix jit.gl.syphonclient: doesn't understand "<separator>"
- [x] check texture float 32
- [x] ~~check fx (pass) quality param~~
- [x] ~~disable unused chains?~~
- [x] multiline descriptions
- [x] restore session params and automation
- [x] disable dynamic live.menu automation
- [x] make transitions dynamic
- [x] ~~mini shader: device id based temp path~~
- [x] fix world UI
- [x] logo mouse over
- [x] re-enable passed channel on change
- [x] ~~sketch max limit should count only glvertex~~
- [x] sketch point spiral
- [x] replace readme WIP with notice for clean #px-stream hash
- [x] device images link to doc
- [x] sketching point scaling
- [x] fl primitives sketch
- [x] try primitives in block color/sizing
- [x] check params:info
- [x] check int params! "parameter_type" : 1
- [x] file automation item change only
- [x] fix default cos pattern
- [x] move info to bpatcher + add version
- [x] shader stored as name
- [x] Color: add to doc
- [x] Colorize: add to doc
- [x] ~~Colorize: add presets~~
- [x] Colorize: test on color/bw videos
- [x] text: beat, time, frame, direct
- [x] text font automation + ref, store by string
- [x] shader: reset dials on empty inputs
- [X] capitalize params
- [x] params scripts
- [x] transitions? ~~isf?~~
- [x] pixelization rotation fix
- [x] reset shader param
- [x] shader initial load fix
- [x] shader labels
- [x] dimension x format, abstraction
- [x] dry/wet modes capitalization
- [x] reset color grading
- [x] pixelization smoothing split
- [x] UI fl, consolidation
- [x] shader menu
- [x] cam/syphon indicator
- [x] cam/syphon live bang only
- [x] in to in + gen
- [x] automate batch freeze?
- [x] remove the silly cam & syphon icons, replace with dims and activity
- [x] check negative values parsing in eslint
- [x] add DEV to doc
- [x] transform is FX?
- [x] img alt
- [x] ~~video rate LFO?~~
- [x] texture (feedback?) delay
- [x] colorize?
- [x] color correction
    - [x] ~~cc.scalebias.jxs?~~
    - [x] https://docs.cycling74.com/learn/articles/01-color-management/
- [x] ~~color~~
- [x] ~~gradient~~
- [x] ~~image in?~~
- [x] ~~activity blink?~~
- [x] color: reorder ops
- [x] color: improve wheel pic
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
- [x] add visualizer meta
- [x] syphon tabs
- [x] load shaders dir
- [x] categorize
- [x] fps
- [x] unified wav
- [x] win transition errors

```
progress: bad number
int: bad number
tex1: bad number
jit_position: bad number
progress: bad number
direction: bad number
progress: bad number
type: bad number
ReverseEffect: bad number
tex1: bad number
textureMatrix1: bad number
FadeInSecond: bad number
textureMatrix1: bad number
FadeInSecond: bad number
u_transitionUpToDown: bad number
```
