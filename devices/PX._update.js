const VERSION = '1.0.15-alpha-25'

function check (dict, name) {
  try {
    const d = new Dict(name)

    const b = d.get('body')
    const j = JSON.parse(b)

    outlet(0, j.tag_name.slice(1) === VERSION ? 3 : 1)
  } catch {
    outlet(0, 3)
  }
}
