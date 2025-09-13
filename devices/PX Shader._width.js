outlets = 1

let T = 0
let V = 1
let D = -1

const s1 = 114 + 14
const s2 = 60
const s3 = 48 * 2
const s4 = 2

function val (v) {
  V = v
  width()
}

function dia (d) {
  D = d
  width()
}

function typ (t) {
  if (t === T) return

  T = t
  const amount = t ? -169 : 169

  var obj = this.patcher.firstobject

  while (obj) {
    if (obj.getattr('varname')?.startsWith('typeLed')) {
      var rect = obj.getattr('presentation_rect')
      // rect = [left, top, width, height]
      rect[1] += amount // shift left (x) by amount
      obj.setattr('presentation_rect', rect)
    }
    obj = obj.nextobject
  }

  shiftDials(t ? 60 : -60)

  width()
}

function width () {
  if (D === -1) {
    return
  }

  outlet(0, [
    s1
    + (T ? s2 : 0)
    + (V ? (s3 * Math.ceil(D / 8) + (D > 0 ? s4 * 2 : 0)) : 0)
    + (!V || !D ? s4 : 0)
  ])
}

function shiftDials (amount) {
  var obj = this.patcher.firstobject

  while (obj) {
    const n = obj.maxclass

    if (n?.startsWith('live.comment') || n?.startsWith('live.numbox')) {
      var rect = obj.getattr('presentation_rect')
      // rect = [left, top, width, height]
      rect[0] += amount // shift left (x) by amount
      obj.setattr('presentation_rect', rect)
    }
    obj = obj.nextobject
  }
}
