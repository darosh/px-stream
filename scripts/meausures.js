import shots from './screenshots.conf.js'

const scale = 2

export function toScreen (x) {
  return scale * x + 2 * 8
}

export function fromScreen (y) {
  return (y - 2 * 8) / scale
}

const ys = shots.devices
  .reduce((acc, [_0, name, _2, y]) => {
    const x = fromScreen(y)

    if (acc.has(x)) {
      acc.get(x).push(name)
    } else {
      acc.set(x, [name])
    }

    return acc
  }, new Map())

const sorted = new Map()

;[...ys.keys()].sort().forEach(k => {
  sorted.set(k, ys.get(k))
})

console.log(sorted)
