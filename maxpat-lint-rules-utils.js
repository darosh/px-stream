export function patcherPropCheck (files, level, prop, check) {
  const results = []

  for (const file of files) {
    const patcher = file.content.patcher

    if (!patcher) {
      results.push({
        file: file.name,
        level: 'error',
        message: `Missing patcher object - cannot check ${prop} settings`,
        line: null,
        column: null
      })
      continue
    }

    const [checked, expected] = check(patcher[prop])

    if (checked === undefined) {
      results.push({
        file: file.name,
        level: level,
        message: `Missing \`${prop}\` property`,
        line: null,
        column: null,
        details: {
          property: prop,
          expected: 1,
          actual: undefined
        }
      })
    } else if (checked === false) {
      results.push({
        file: file.name,
        level: level,
        message: `Property \`${prop}\` is ${patcher[prop]}, should be ${expected}`,
        line: null,
        column: null,
        details: {
          property: 'gridsnaponopen',
          expected: expected,
          actual: patcher[prop]
        }
      })
    }
  }

  return results
}
