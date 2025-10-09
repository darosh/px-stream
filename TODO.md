# Todo

## Doc

- [ ] doc
- [ ] doc demo
- [ ] doc world enabled automation
- [ ] doc FS display link and fps 0, and multi fs limitation
- [ ] doc exclusive rotation
- [ ] preset guide doc

## Misc

- [ ] If parameter automation causes high CPU load, try enabling Defer Automation Output in the object Inspector,
  or try higher values for the Update Limit.
- [ ] sample presets
- [ ] check duplication every device
- [ ] check previews undo history on automation
- [ ] guide presets
- [ ] update image assets
- [ ] check performance pack
- [ ] check render gate closed on popup closed
- [ ] demo track should be [standard compatible](https://www.ableton.com/en/live/compare-editions/) = no operator, no wavetable

## Licencing

- [ ] check mini shaders licences
  - [ ] https://bsky.app/profile/holtsetio.bsky.social/post/3lwyikurabc26
  - [ ] https://bsky.app/profile/rangemarten.bsky.social/post/3losfvor4ws2y
  - [ ] https://x.com/kamoshika_vrc/status/1684571232765882368
  - [ ] https://x.com/XorDev/status/1601770313230209024
  - [ ] https://x.com/YoheiNishitsuji/status/1796435007873151189
- [ ] check processing licences
  - [ ] https://x.com/SnowEsamosc/status/1971220103070130586
  - [ ] https://x.com/yuruyurau/status/1719632742269514103

## IFS

- [ ] tempo param? BEAT? BAR?
- [ ] frameSkip should be time based
- [ ] more shaders
- [ ] better midi shader
- [ ] vu shader?
- [ ] rolling waveform shader?

## Windows

- [x] do not resize fullscreen
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

## Final Checklist

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

## Done

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
    