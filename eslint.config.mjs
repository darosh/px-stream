import { defineConfig } from 'eslint/config'
import maxpat from 'eslint-plugin-maxpat'

export default defineConfig([{
  files: ['*.maxpat'],
  plugins: { maxpat },
  extends: ['maxpat/recommended'],
  rules: {
    // STRUCTURE
    'maxpat/structure/validate': 'error',

    // LAYOUT
    'maxpat/layout/snap-to-grid': ['warn', { snap: true, fix: true }],
    'maxpat/layout/snap-to-pixel': ['warn', { snap: true, fix: true }],
    'maxpat/layout/grid-size': ['warn', { grid: [8, 8], fix: true }],
    'maxpat/layout/position-rounding': ['warn', {
      'patching-precision': [8, 8],
      'presentation-precision': [1, 1],
      fix: true
    }],
    'maxpat/layout/patching-overlaps': ['warn', {
      exceptions: ['panel', 'comment', 'bpatcher', 'inlet', 'outlet'],
      threshold: 5 // More forgiving for patching mode
    }],
    'maxpat/layout/presentation-overlaps': ['warn', {
      exceptions: ['panel', 'bpatcher', 'live.comment', 'comment'],
      threshold: 1, // Precise for UI
    }],

    // UI
    'maxpat/ui/annotation-info': ['warn', {
      include: [
        'slider', 'dial', 'button', 'toggle', 'number', 'live.dial',
        'live.slider', 'live.button', 'live.toggle', 'live.text',
        'live.menu', 'live.tab',
      ]
    }],

    // FLOW
    'maxpat/flow/disconnected': ['warn', {
      exclude: [
        'comment', 'panel', 'fpic', 'bpatcher',
        'live.comment', 'live.banks'
      ]
    },],
    'maxpat/flow/local-send-receive': 'warn',
    'maxpat/flow/global-send-receive': ['warn', {
      exclude: [
        'master-volume', 'tempo', 'transport'
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
    'maxpat/performance/defer': ['warn', {
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
