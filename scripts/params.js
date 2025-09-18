import { glob } from 'glob'
import { readFile, writeFile } from 'fs/promises'
import stringify from 'json-stringify-pretty-compact'
import { basename, dirname } from 'path'

async function loadMaxpat (file) {
  return JSON.parse(await readFile(file, 'utf8'))
}

function getPatcherParams (obj, params = []) {
  for (const { box } of obj.boxes) {
    if (box.boxes) {
      getPatcherParams(box, params)

      continue
    }

    if (!((box?.saved_object_attributes?.parameter_enable
      || box?.parameter_enable) && box?.presentation)) {
      continue
    }

    const { id, maxclass, presentation, varname, text, annotation, annotation_name } = box
    const { parameter_longname, parameter_shortname } = box.saved_attribute_attributes.valueof

    params.push({
      id, maxclass, presentation, text, varname,
      parameter_longname: parameter_longname || '',
      parameter_shortname: parameter_shortname || '',
      annotation: annotation || '',
      annotation_name: annotation_name || ''
    })
  }

  return params
}

function update (obj, updated) {
  for (const { box } of obj.boxes) {
    if (box.boxes) {
      update(obj, updated)

      continue
    }

    if (!((box?.saved_object_attributes?.parameter_enable
      || box?.parameter_enable) && box?.presentation)) {
      continue
    }

    const { id, varname } = box

    const u = updated.find(v => v.id === id && v.varname === varname)
    
    if (u.parameter_longname) {
      box.saved_attribute_attributes = box.saved_attribute_attributes || {}
      box.saved_attribute_attributes.valueof = box.saved_attribute_attributes.valueof || {}
      box.saved_attribute_attributes.valueof.parameter_longname = u.parameter_longname
    }
    
    if (u.parameter_shortname) {
      box.saved_attribute_attributes = box.saved_attribute_attributes || {}
      box.saved_attribute_attributes.valueof = box.saved_attribute_attributes.valueof || {}
      box.saved_attribute_attributes.valueof.parameter_shortname = u.parameter_shortname
    }
    
    if (u.annotation) {
      box.annotation = u.annotation
      box.saved_attribute_attributes = box.saved_attribute_attributes || {}
      box.saved_attribute_attributes.valueof = box.saved_attribute_attributes.valueof || {}
      box.saved_attribute_attributes.valueof.parameter_info = u.annotation
    }
    
    if (u.annotation_name) {
      box.annotation_name = u.annotation_name
      box.saved_attribute_attributes = box.saved_attribute_attributes || {}
      box.saved_attribute_attributes.valueof = box.saved_attribute_attributes.valueof || {}
      box.saved_attribute_attributes.valueof.parameter_annotation_name = u.annotation_name
    }
  }

  return obj
}

async function collect (path) {
  const files = glob.sync(path)
  const data = {}

  for (const file of files) {
    const obj = await loadMaxpat(file)
    const params = getPatcherParams(obj.patcher)

    data[file] = { boxes: params, obj }
  }

  return data
}

async function read (path, save) {
  const files = glob.sync(path)
  const data = {}

  for (const file of files) {
    const obj = await loadMaxpat(file)
    const key = file
      .replace(/\.json$/, '')
      .replace(dirname(file), dirname(save).replace(/^\.\//, ''))

    data[key] = obj.boxes
  }

  return data
}

if (process.argv[2] === 'collect') {
  const params = await collect(process.argv[3])
  const save = process.argv[4]

  Object.entries(params).forEach(async ([name, { boxes }]) => {
    if (!boxes.length) {
      return
    }

    await writeFile(`${save}/${basename(name)}.json`, stringify({ boxes }))
  })

  console.log(`Params saved: ${save}`)
} else if (process.argv[2] === 'update') {
  const params = await collect(process.argv[3])
  const stored = await read(process.argv[4], process.argv[3])

  Object.entries(params).forEach(async ([file, { boxes, obj }]) => {
    if (!boxes.length) {
      return
    }

    if (JSON.stringify(boxes) === JSON.stringify(stored[file])) {
      return
    }

    console.log(`Updating: ${file}`)
    update(obj.patcher, stored[file])
    
    await writeFile(file, stringify(obj))
  })
}
