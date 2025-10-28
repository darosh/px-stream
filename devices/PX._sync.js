// PX Sync Engine - Parameter Scanner
// Simple version - just scan next device and list params

autowatch = 1
outlets = 1

let PARAMS = []
let SELECTED = [0, 0, 0, 0]
let TARGETS = []

function u () {
  SELECTED = [0, 0, 0, 0]
  TARGETS = [0, 0, 0, 0]
  const next = get_next('this_device')
  // p(next)
  const next_device = new LiveAPI(next)
  const params = scanParameters(next_device)
    .filter(d => !d.is_quantized[0])
  // p(JSON.stringify(params, null, 2))

  PARAMS = params

  const range = [
    '_parameter_range',
    ' ',
    ...params.length ? params.map(({ name }) => name) : [' ']
  ]

  outlet(0, 'range', range)

  outlet(0, 1, params.length >= 1 ? 1 : 0)
  // outlet(0, 2, params.length >= 2 ? 2 : 0)
  // outlet(0, 3, params.length >= 3 ? 3 : 0)
  // outlet(0, 4, params.length >= 4 ? 4 : 0)
}

function p (...v) {
  // post(v + '\n')
}

function add_target (index, live_id, param_slot) {
  const target_slot = TARGETS.findIndex(x => x === 0)
  TARGETS[target_slot] = index
  p(0, 'target', target_slot + 1, 'id', live_id)
  outlet(0, 'target', target_slot + 1, 'id', live_id)
  outlet(0, 'gate', param_slot, target_slot  + 1)
  outlet(0, 'metro', param_slot, 1)
}

function remove_target (index, live_id, param_slot) {
  const target_slot = TARGETS.findIndex(d => d === index)
  TARGETS[target_slot] = 0
  p(0, 'target', target_slot + 1, 'id', live_id)
  outlet(0, 'target', target_slot + 1, 'id', live_id)
  outlet(0, 'gate', param_slot, 0)
  outlet(0, 'metro', param_slot, 0)
}

function replace_target (index, live_id, previous_selected, param_slot) {
  const target_slot = TARGETS.findIndex(d => d === previous_selected)
  TARGETS[target_slot] = index
  p(0, 'target', target_slot + 1, 'id', live_id)
  outlet(0, 'target', target_slot + 1, 'id', live_id)
  outlet(0, 'gate', param_slot, target_slot + 1)
  outlet(0, 'metro', param_slot, 1)
}

function set_param (param_slot, index) {
  if (!PARAMS.length) {
    return
  }
  
  p(JSON.stringify({param_slot, index}))

  const previous_selected = SELECTED[param_slot - 1]
  SELECTED[param_slot - 1] = index
  const live_id = index > 0 ? new LiveAPI(PARAMS[index - 1].path).id : 0
  p(JSON.stringify({SELECTED}))
  const usage = SELECTED.filter(x => x === previous_selected).length
  p(JSON.stringify({previous_selected}))
  p(JSON.stringify({usage}))
  
  if ((previous_selected === 0) && !TARGETS.includes(index)) {
    // add target
    add_target(index, live_id, param_slot)
    // outlet(0, 'gate', param_slot, target_slot)
  } else if ((previous_selected === 0) && TARGETS.includes(index)) {
    // reuse target
    p('REUSE')
  } else if ((previous_selected > 0) && (index === 0) && usage > 0) {
    // keep old target
    p('KEEP')
  } else if ((previous_selected > 0) && (index > 0) && usage > 0) {
    // keep old target add new
    add_target(index, live_id, param_slot)
  } else if ((previous_selected > 0) && (index === 0) && usage === 0) {
    // remove old
    remove_target(previous_selected, live_id, param_slot)
  } else if ((previous_selected > 0) && (index > 0) && usage === 0) {
    // remove old and add new target
    replace_target(index, live_id, previous_selected, param_slot)
  }
}

function get_next (path) {
  const this_device = new LiveAPI(path)
  const parent = new LiveAPI(`${path} canonical_parent`)
  p(this_device.path)
  p(parent.path)
  p(parent.children)
  const parts = this_device.path.split(' ')
  const entities = parts.at(-2)
  const this_index = Number.parseInt(parts.at(-1), 10)
  const total = parent.getcount(entities)
  p(total)

  const next_index = this_index + 1

  if (next_index < total) {
    return [...parts.slice(0, parts.length - 1), next_index].join(' ')
  }
}

// Scan parameters from next device
function scanParameters (nextDeviceAPI) {
  const paramCount = nextDeviceAPI.getcount('parameters')
  p('Parameter count: ' + paramCount + '\n')

  const parameters = []

  for (let i = 0; i < paramCount; i++) {
    const param = new LiveAPI(nextDeviceAPI.path + ' parameters ' + i)

    const name = param.get('name')
    const value = param.get('value')
    const min = param.get('min')
    const max = param.get('max')
    const is_quantized = param.get('is_quantized')
    const nameStr = String(name)

    // p(param.info)

    // Skip utility params
    if (nameStr.indexOf('Device On') >= 0) {
      continue
    }

    const paramInfo = {
      index: i,
      name: nameStr,
      is_quantized: is_quantized,
      value: Number.parseFloat(value),
      min: Number.parseFloat(min),
      max: Number.parseFloat(max),
      path: nextDeviceAPI.path + ' parameters ' + i
    }

    parameters.push(paramInfo)

    // post("  [" + (parameters.length - 1) + "] " + nameStr +
    //   " = " + value +
    //   " (" + min + " to " + max + ")\n");

    // Output each param
    // outlet(0, "param", parameters.length - 1, nameStr, min, max, value);
  }

  // post("Found " + parameters.length + " parameters\n");
  // outlet(0, "scan_complete", parameters.length);

  return parameters
}
