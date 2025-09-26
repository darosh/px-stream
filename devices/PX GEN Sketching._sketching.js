outlets = 4

let DELAY = 10
let DISABLE = 50

const POINTS = 'points'
const LINES = 'lines'
const TRIANGLES = 'triangles'
const CIRCLES = 'circles'
const QUADS = 'quads'

const MODE_FIT = 0
const MODE_FILL = 1
const MODE_STRETCH = 2

let PARAM_X = 0
let PARAM_Y = 0
let MODE = 0

const MAX_DEFAULT = 10
const MAX = {
  [POINTS]: 5000,
  [LINES]: 1000,
  [TRIANGLES]: 1000,
  [QUADS]: 1000,
  [CIRCLES]: 1000
}

let _canvasX = 100
let _canvasY = 100
let _dimX = 512
let _dimY = 512
let _pointScale = .5
let _lineScale = .5
let _lastStrokeWeight = 1
let _maxSkip = 0
let _TRANS_OX = 0
let _TRANS_OY = 0
let _TRANS_SX = 1
let _TRANS_SY = 1
let _TRANS_SHORT = 1
let _HALF_SHORT = 1

let _function
let _last_bang
let _disabled = false
let _disabled_out = null
let _play = 1

let _plan = []

let frameCount = 0
let setup
let draw

function log (msg) {
  post(JSON.stringify(msg) + '\n')
}

function _updateScale () {
  const t = _getTransform(MODE)

  _TRANS_OX = t.offsetX
  _TRANS_OY = t.offsetY
  _TRANS_SX = t.scaleX
  _TRANS_SY = t.scaleY
  
  const short = Math.min(_dimX, _dimY)
  
  _TRANS_SHORT = (short === _dimX ? _TRANS_SX : _TRANS_SY) * 2

  _HALF_SHORT = short / 2
}

// compute per-mode scale and offsets (offsets are in canvas pixels)
function _getTransform (mode = MODE_FIT) {
  if (_dimX <= 0 || _dimY <= 0 || _canvasX <= 0 || _canvasY <= 0) {
    throw new Error('invalid dimensions')
  }

  const sx = _canvasX / _dimX // canvas pixels per frame unit (X)
  const sy = _canvasY / _dimY // canvas pixels per frame unit (Y)

  let scaleX, scaleY, offsetX = 0, offsetY = 0

  if (mode === MODE_FIT) {
    const s = Math.max(sx, sy)
    scaleX = scaleY = s
    offsetX = (_canvasX - _dimX * s) / 2
    offsetY = (_canvasY - _dimY * s) / 2
  } else if (mode === MODE_FILL) {
    const s = Math.min(sx, sy)
    scaleX = scaleY = s
    offsetX = (_canvasX - _dimX * s) / 2
    offsetY = (_canvasY - _dimY * s) / 2
  } else if (mode === MODE_STRETCH) {
    // independent axis scale, no offset
    scaleX = sx
    scaleY = sy
  }

  return { scaleX, scaleY, offsetX, offsetY }
}

function _SX (x) {
  return ((x - _TRANS_OX) / _TRANS_SX - _dimX / 2) / _HALF_SHORT
}

function _SY (y) {
  return (_dimY / 2 - (y - _TRANS_OY) / _TRANS_SY) / _HALF_SHORT
}

function _SR (r) {
  return r / _TRANS_SHORT / _HALF_SHORT
}

function _SP (r) {
  return Math.min(_pointScale * r * (_dimY / _canvasY), 64)
}

function _SL (r) {
  return Math.min(_lineScale * r * (_dimY / _canvasY), 128) / 2
}

const _C_6 = _CPTS(6)
const _C_12 = _CPTS(12)
const _C_18 = _CPTS(18)
const _C_24 = _CPTS(24)
const _C_30 = _CPTS(30)
const _C_36 = _CPTS(36)

function _CPTS (n) {
  const p = []

  for (let i = 0; i < n; i++) {
    const a = i * Math.PI / (n / 2)
    p.push({ x: Math.cos(a), y: Math.sin(a) })
  }

  return p
}

function _SC (x, y, r) {
  const sr = _SR(r)
  const sx = _SX(x)
  const sy = _SY(y)

  return (sr < 0.04 ? _C_6 : sr < 0.08 ? _C_12 : sr < .16 ? _C_18 : sr < .32 ? _C_24 : sr < .48 ? _C_30 : _C_36)
    .map(({ x, y }) => [
      'glvertex',
      x * sr + sx,
      y * sr + sy
    ])
}

function _REPL (type, cmd) {
  let item

  if (_plan.at(-1)?.type === type) {
    item = _plan.at(-1)
  } else {
    item = { type: type }
    _plan.push(item)
  }

  item.item = cmd
}

function _REPLS (type, cmds) {
  let item

  if (_plan.at(-1)?.type === type) {
    item = _plan.at(-1)
  } else {
    item = { type: type }
    _plan.push(item)
  }

  item.items = cmds
}

function _FORCE () {
  const backup_plan = _plan
  _plan = []
  _REPL('point_size', ['point_size', _SP(_lastStrokeWeight)])
  _REPL('line_width', ['line_width', _SL(_lastStrokeWeight)])
  flushPlan()
  _plan = backup_plan

}

function _DISABLED (d) {
  _disabled = d

  if (_disabled_out !== _disabled) {
    _disabled_out = _disabled
    outlet(2, _disabled ? 1 : 0)
  }
}

function dim (x, y) {
  _dimX = x
  _dimY = y
  
  _updateScale()
}

function set_play (x) {
  _play = x

  if (x) {
    _DISABLED(false)
  }
}

function set_mode (x) {
  MODE = x
  
  _updateScale()
}

function point_scale (x) {
  _pointScale = x
  _FORCE()
}

function line_scale (x) {
  _lineScale = x
  _FORCE()
}

function set_delay (x) {
  DELAY = x
}

function set_disable (x) {
  DISABLE = x

  if (x) {
    _DISABLED(false)
  }
}

function max_points (x) {
  MAX[POINTS] = x
}

function max_polys (x) {
  MAX[LINES] = x
  MAX[TRIANGLES] = x
  MAX[QUADS] = x
  MAX[CIRCLES] = x
}

function max_skip (x) {
  _maxSkip = x
}

function param_x (x) {
  PARAM_X = x
}

function param_y (x) {
  PARAM_Y = x
}

function load (fn) {
  let _all

  function min (...x) {
    return Math.min(...x)
  }

  function max (...x) {
    return Math.max(...x)
  }

  function abs (x) {
    return Math.abs(x)
  }

  function sqrt (x) {
    return Math.sqrt(x)
  }

  function mag (x, y) {
    return Math.hypot(x, y)
  }

  function sin (x) {
    return Math.sin(x)
  }

  function cos (x) {
    return Math.cos(x)
  }

  function tan (x) {
    return Math.tan(x)
  }

  function atan (x) {
    return Math.atan(x)
  }

  function atan2 (x, y) {
    return Math.atan2(x, y)
  }

  function random (x, y) {
    if (x === undefined) {
      return Math.random()
    } else if (y === undefined) {
      return Math.random() * x
    }

    return Math.random() * (y - x) + x
  }

  function random3D () {
    return { x: random(-1, 1), y: random(-1, 1), z: random(-1, 1) }
  }

  function randomSeed () {
  }

  function createCanvas (x = 100, y = 100) {
    if (_canvasX === x && _canvasY === y) {
      return
    }

    _canvasX = x
    _canvasY = y

    _updateScale()

    return _all
  }

  function background (r, g, b, a) {
    const _r = r
    const _g = b === undefined ? r : (g ?? r)
    const _b = b ?? r
    const _a = ((b === undefined) && (g !== undefined)) ? g : (a ?? 255)

    outlet(1, 'erase_color', _r / 255, _g / 255, _b / 255, _a / 255)
    _REPL('background', ['reset'])

    return _all
  }

  function noFill () {
    return _all
  }

  function stroke (r, g, b, a) {
    return fill(r, g, b, a)
  }

  function fill (r, g, b, a) {
    const _r = r
    const _g = b === undefined ? r : (g ?? r)
    const _b = b ?? r
    const _a = ((b === undefined) && (g !== undefined)) ? g : (a ?? 255)

    _REPL('fill', ['glcolor', _r / 255, _g / 255, _b / 255, _a / 255])

    return _all
  }

  function strokeWeight (x) {
    _lastStrokeWeight = x

    _REPL('point_size', ['point_size', _SP(x)])
    _REPL('line_width', ['line_width', _SL(x)])

    return _all
  }

  function noStroke () {
    return strokeWeight(0)
  }

  function shuffle (x, modify) {
    let arr = modify ? x : x.slice()

    for (let i = arr.length - 1; i > 0; i--) {
      let j = Math.floor(Math.random() * (i + 1));
      [arr[i], arr[j]] = [arr[j], arr[i]]
    }

    return arr
  }

  function circle (x, y, r) {
    let _circles

    if (_plan.at(-1)?.type === CIRCLES) {
      _circles = _plan.at(-1)
    } else {
      _circles = { type: CIRCLES, items: [] }
      _plan.push(_circles)
    }

    _circles.items.push([
      ['glbegin', 'polygon'],
      ..._SC(x, y, r),
      ['glend'],
    ])
  }

  function line (a, b, c, d, e, f) {
    let _lines

    if (_plan.at(-1)?.type === LINES) {
      _lines = _plan.at(-1)
    } else {
      _lines = { type: LINES, wrap: LINES, items: [] }
      _plan.push(_lines)
    }

    if (e === undefined) {
      _lines.items.push([
        ['glvertex', _SX(a), _SY(b)],
        ['glvertex', _SX(c), _SY(d)]
      ])
    } else {
      _lines.items.push([
        ['glvertex', _SX(a), _SY(b), _SX(c)],
        ['glvertex', _SX(d), _SY(e), _SX(f)]
      ])
    }

    return _all
  }

  function triangle (x1, y1, x2, y2, x3, y3) {
    let _triangles

    if (_plan.at(-1)?.type === TRIANGLES) {
      _triangles = _plan.at(-1)
    } else {
      _triangles = { type: TRIANGLES, wrap: TRIANGLES, items: [] }
      _plan.push(_triangles)
    }

    _triangles.items.push([['glvertex', _SX(x1), _SY(y1)],
      ['glvertex', _SX(x2), _SY(y2)],
      ['glvertex', _SX(x3), _SY(y3)]])

    return _all
  }

  function rect (x1, y1, x2, y2) {
    let _rects

    if (_plan.at(-1)?.type === QUADS) {
      _rects = _plan.at(-1)
    } else {
      _rects = { type: QUADS, wrap: QUADS, items: [] }
      _plan.push(_rects)
    }

    _rects.items.push([
      ['glvertex', _SX(x1), _SY(y1)],
      ['glvertex', _SX(x1), _SY(y1 + (y2 ?? x2))],
      ['glvertex', _SX(x1 + x2), _SY(y1 + (y2 ?? x2))],
      ['glvertex', _SX(x1 + x2), _SY(y1)]
    ])

    return _all
  }

  function point (x, y) {
    let _points

    if (_plan.at(-1)?.type === POINTS) {
      _points = _plan.at(-1)
    } else {
      _points = { type: POINTS, wrap: POINTS, items: [] }
      _plan.push(_points)
    }

    _points.items.push([['glvertex', _SX(x), _SY(y)]])

    return _all
  }

  _all = { randomSeed, stroke, noFill, point, triangle }

  const PI = Math.PI
  const TAU = Math.PI * 2

  _canvasX = 100
  _canvasY = 100
  _updateScale()
  _function = undefined
  setup = undefined
  draw = undefined
  frameCount = 0

  eval(fn)

  if (!draw) {
    return
  }

  _function = draw

  try {
    const start = Date.now()
    _lastStrokeWeight = 1

    if (setup) {
      setup()
      draw()
    } else {
      draw()
    }

    _FORCE()
    flushPlan()
    frameCount++

    _DISABLED((start + DISABLE) < Date.now())
    outlet(3, 0)
  } catch (e) {
    _function = undefined
    const msg = `${e.name}:\n${e.message}`
    // error(msg)
    error(e.stack + '\n')
    outlet(3, msg)
  }
}

function flushArray (arr, type = 'points', wrap, limit = 100) {
  if (!arr.length) {
    return
  }

  if (wrap) {
    outlet(0, 'glbegin', wrap)
  }

  if (!_maxSkip) {
    const step = arr.length / limit // spacing between processed items
    let nextPick = 0                // index threshold for next item
    let processed = 0               // count of processed items

    for (let i = 0; i < arr.length; i++) {
      if (processed < limit && i >= Math.floor(nextPick)) {
        for (let j = 0; j < arr[i].length; j++) {
          outlet(0, arr[i][j])
        }

        processed++
        nextPick += step // move threshold forward
      }
    }
  } else {
    const len = Math.min(limit, arr.length)

    for (let i = 0; i < len; i++) {
      for (let j = 0; j < arr[i].length; j++) {
        outlet(0, arr[i][j])
      }
    }
  }

  if (wrap) {
    outlet(0, 'glend')
  }
}

function flushPlan () {
  for (const set of _plan) {
    if (set.items) {
      flushArray(set.items, set.type, set.wrap, MAX[set.type] ?? MAX_DEFAULT)
    } else {
      outlet(0, set.item)
    }
  }

  _plan = []
}

function bang () {
  if (!_play || _disabled || ((_last_bang + DELAY) > Date.now())) {
    return
  }

  function run () {
    if (!_function) {
      return
    }

    const start = Date.now()
    _function()
    flushPlan()
    frameCount++
    _DISABLED((start + DISABLE) < Date.now())
    _last_bang = Date.now()
  }

  new Task(run).schedule(0)
}
