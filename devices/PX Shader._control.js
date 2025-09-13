outlets = 1
let d
const RGBA = 'RGBA'.split('')

function param () {
  const name = arguments[0]
  const val = arguments[1]

  //post('param:' + name + '\n')

  if (name[1] === '_') {
    const [c, n] = [name[0], name.slice(2)]
    const i = RGBA.indexOf(c)

    //post('pdict: ' + JSON.stringify(d[name]) + '\n')
    d[name] = d[name] || {}
    d[name].default = val

    const vals = RGBA.map(c => d?.[`${c}_${n}`]?.default ?? 1)
    outlet(0, [n, ...vals])
  } else if (name[0] === '_') {
  }
}

function dict () {
  d = JSON.parse(arguments[0])

  //post('dict: ' + JSON.stringify(d) + '\n')
}
