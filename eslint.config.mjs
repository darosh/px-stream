import { defineConfig } from 'eslint/config'
import maxpat from 'eslint-plugin-maxpat'

export default defineConfig([{
  plugins: { maxpat },
  extends: ['maxpat/recommended'],
  rules: {
    // STRUCTURE
    'maxpat/structure/validate': 'error',
    'maxpat/structure/no-unused-styles': ['warn', { fix: true }],
    'maxpat/structure/require': ['warn', {
      file: 'PX .+\\.maxpat',
      include: ['live.banks', 'live.thisdevice'],
    }],

    // LAYOUT
    'maxpat/layout/snap-to-grid': ['warn', { snap: true, fix: true }],
    'maxpat/layout/snap-to-pixel': ['warn', { snap: true, fix: true }],
    'maxpat/layout/grid-size': ['warn', { grid: [8, 8], fix: true }],
    'maxpat/layout/no-segmented-cords': ['warn', { fix: true }],
    'maxpat/layout/position-rounding': ['warn', {
      'patching-precision': [8, 8],
      'presentation-precision': [1, 1],
      fix: true
    }],
    'maxpat/layout/no-negative-patching': ['warn', { minimum: 0, fix: true }],
    'maxpat/layout/patching-overlaps': ['warn', {
      exceptions: [
        'panel', 'comment', 'bpatcher', 'inlet', 'outlet', 'fpic', 'umenu'
      ],
      threshold: 5 // More forgiving for patching mode
    }],
    'maxpat/layout/presentation-overlaps': ['warn', {
      exceptions: [
        'panel', 'bpatcher', 'live.comment', 'comment', 'fpic', 'umenu', 'live.slider'
      ],
      threshold: 1, // Precise for UI
    }],

    // UI
    'maxpat/ui/annotation-info': ['warn', {
      include: [
        'live.dial', 'live.slider', 'live.button', 'live.toggle',
        'live.text', 'live.menu', 'live.tab', 'live.numbox',
        'umenu',
      ]
    }],

    // FLOW
    'maxpat/flow/disconnected': ['warn', {
      exclude: [
        'comment', 'panel', 'fpic', 'bpatcher',
        'live.comment', 'live.banks', 'live.line'
      ]
    },],
    'maxpat/flow/local-send-receive': ['warn', {
      exclude: ['---bang_param', '---isf_pre_param']
    }],
    'maxpat/flow/global-send-receive': ['warn', {
      exclude: [
        'px_debug', 'px_mix', 'px_render', 'px_channel_removed',
        'px_chains_updated', 'px_bang'
      ]
    }],
    'maxpat/flow/disconnected-outlets': ['warn', {
      exclude: [
        'jit.gl.node', 'dac~', 'print', 'post', 'error', 'jit.window',
        'jit.pwindow', 'live.gain~', 'ezdac~', 'ezadc~', 'scope~',
        'meter~', 'live.scope~', 's', 'send', 'forward', 'prepend',
        'sprintf', 'tosymbol', 'fromsymbol', 'jit.gl.render',
        'jit.gl.videoplane', 'live.dial', 'live.slider', 'live.numbox',
        'live.toggle', 'live.button', 'live.menu', 'plugout~',
        'thispatcher', 'live.object', 'live.text', 'jit.gl.texture',
        'jit.poke~', 'jit.gl.mesh', 'live.banks', '"jit.gl.shader',
        'live.meter~', 'jit.gl.layer', 'jit.gl.text', 'jit.world',
        'jit.gl.syphonserver'
      ]
    }],

    // DEBUG
    'maxpat/debug/connected-print': ['warn', { fix: false }],

    // COMPATIBILITY
    'maxpat/compatibility/deprecated': ['warn', {
      deprecated: [
        'gate~', 'switch~', 'scope~', 'poly~', 'drunk'
      ]
    }],

    // PERFORMANCE
    'maxpat/performance/defer': ['off', {
      include: [
        'live.dial', 'live.slider', 'live.button'
      ]
    }],
    'maxpat/performance/speed-limit': ['warn', {
      milliseconds: 1, include: [
        'slider', 'dial', 'button', 'toggle', 'number', 'live.dial',
        'live.slider', 'live.button', 'live.toggle', 'live.text',
        'live.menu', 'live.tab',
      ], fix: true
    }],
  }
}])
