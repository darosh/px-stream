function shiftPresentationX (amount) {
  var obj = this.patcher.firstobject
  while (obj) {
    if (obj.getattr('presentation') !== 0 && !obj?.varname?.endsWith('_static')) { // only if in Presentation
      var rect = obj.getattr('presentation_rect')
      // rect = [left, top, width, height]
      rect[0] += amount // shift left (x) by amount
      obj.setattr('presentation_rect', rect)
    }
    obj = obj.nextobject
  }
}
