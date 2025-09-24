outlets = 3

let DELAY = 10
let DISABLE = 50

const POINTS = 'points'
const LINES = 'lines'
const TRIANGLES = 'triangles'
const CIRCLES = 'circles'
const QUADS = 'quads'

const MAX_DEFAULT = 10
const MAX = {
  [POINTS]: 5000,
  [LINES]: 2000,
  [TRIANGLES]: 1000,
  [QUADS]: 1000,
  [CIRCLES]: 1000
}

let _canvasX
let _canvasY
let _dimX = 512
let _dimY = 512
let _pointScale = .5
let _lineScale = .5
let _lastStrokeWeight = 1
let _maxSkip = 0

let _function
let _last_bang
let _disabled = false
let _disabled_out = false
let _play = 1

let _plan = []

let frameCount = 0
let setup
let draw

function _SX (x) {
  return x / (_canvasX / 2) - 1
}

function _SY (y) {
  return -y / (_canvasY / 2) + 1
}

function _SR (r) {
  return r / _canvasY
}

function _SP (r) {
  return Math.min(_pointScale * r * (_dimY / _canvasY), 64)
}

function _SL (r) {
  return Math.min(_lineScale * r * (_dimY / _canvasY), 128) / 2
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
}

function set_play (x) {
  _play = x

  if (x) {
    _DISABLED(false)
  }
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

function max_lines (x) {
  MAX[LINES] = x
}

function max_triangles (x) {
  MAX[TRIANGLES] = x
}

function max_rectangles (x) {
  MAX[QUADS] = x
}

function max_circles (x) {
  MAX[CIRCLES] = x
}

function max_skip (x) {
  _maxSkip = x
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

    _circles.items.push([['moveto', _SX(x), _SY(y)],
      ['circle', _SR(r)]])
  }

  function line (a, b, c, d, e, f) {
    let _lines

    if (_plan.at(-1)?.type === LINES) {
      _lines = _plan.at(-1)
    } else {
      _lines = { type: LINES, items: [] }
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
      _triangles = { type: TRIANGLES, items: [] }
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
      _rects = { type: QUADS, items: [] }
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
    // if (x < 0 || x > _canvasX) {
    //   return
    // }
    //
    // if (y < 0 || y > _canvasY) {
    //   return
    // }

    let _points

    if (_plan.at(-1)?.type === POINTS) {
      _points = _plan.at(-1)
    } else {
      _points = { type: POINTS, items: [] }
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
  } catch (e) {
    _function = undefined
    post(e + '\n')
  }
}

function flushArray (arr, type = 'points', limit = 100) {
  if (!arr.length) {
    return
  }

  outlet(0, 'glbegin', type)

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

  outlet(0, 'glend')
}

function flushPlan () {
  for (const set of _plan) {
    if (set.items) {
      flushArray(set.items, set.type, MAX[set.type] ?? MAX_DEFAULT)
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
