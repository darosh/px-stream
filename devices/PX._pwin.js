// post('pwin manager\n')

let old_obj = null
let switch_obj = null
let extra_handler = null
let old_pos = [0, 0]
let old_pres_rect = null
let old_name = null

// Main function to delete and recreate object
function remove_pwin () {
  const patcher = this.patcher

  // Find the object with varname "pwin_static"
  let obj = patcher.firstobject

  while (obj) {
    if (obj.varname === 'pwin_static') {
      old_obj = obj
      old_pos = [obj.rect[0], obj.rect[1]]
      old_pres_rect = obj.getattr('presentation_rect')
      old_name = obj.getattr('name')
      // post('Found pwin_static at position: ' + old_pos + '\n')
      // post('Presentation rect: ' + old_pres_rect + '\n')
      break
    }

    obj = obj.nextobject
  }

  // old_obj.setattr('presentation', 0)
  // return

  // Find the object with varname "extra_handler"
  obj = patcher.firstobject

  while (obj) {
    if (obj.varname === 'extra_handler') {
      extra_handler = obj
      // post('Found extra_handler\n')

      break
    }

    obj = obj.nextobject
  }

  if (!extra_handler) {
    error('Could not find extra_handler object\n')

    return
  }

  // Delete the old object if found
  if (old_obj) {
    // post('Deleting pwin_static...\n')
    patcher.remove(old_obj)
  }
}

function restore_pwin () {
  // old_obj.setattr('presentation', 1)
  // old_obj.presentation_rect = old_pres_rect;
  // return

  const patcher = this.patcher

  // Create new object at same position and with same name
  const new_obj = patcher.newdefault(old_pos[0], old_pos[1], 'jit.pwindow', '@presentation', 1, '@name', old_name, '@doublebuffer', 0)
  new_obj.varname = 'pwin_static'

  // Restore presentation_rect if it existed
  if (old_pres_rect) {
    new_obj.presentation_rect = old_pres_rect;
    // post("Restored presentation_rect: " + old_pres_rect + "\n");
  }

  // post('Created new pwin_static\n')

  // Connect pwin_switch output 0 to new object input 0
  // patcher.connect(switch_obj, 0, new_obj, 0)
  patcher.connect(new_obj, 1, extra_handler, 0)
  // post('Connected pwin_switch to extra_handler\n')
}
