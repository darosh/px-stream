import { patcherPropCheck } from './maxpat-lint-rules-utils.js'

export function require_snap_to_grid ([level, config], files) {
  const results = patcherPropCheck(files, level, 'gridsnaponopen',
    v => [v === undefined ? undefined : v === 2, 2])

  return {
    rule: 'require_snap_to_grid',
    results
  }
}

export function require_snap_to_pixel ([level, config], files) {
  const results = patcherPropCheck(files, level, 'integercoordinates',
    v => [v === undefined ? undefined : v === 1, 1])

  return {
    rule: 'require_snap_to_pixel',
    results
  }
}

/**
 * Check if grid size matches expected values
 * Validates the `gridsize` array property in patcher settings
 */
export function require_default_grid_size ([level, expectedGridSize], files) {
  const results = []

  if (!Array.isArray(expectedGridSize) || expectedGridSize.length !== 2) {
    // Configuration error - but still process files
    for (const file of files) {
      results.push({
        file: file.name,
        level: 'error',
        message: 'Invalid rule configuration - expected grid size must be [x, y] array',
        line: null,
        column: null,
        details: {
          configError: true,
          expectedConfig: '[number, number]',
          actualConfig: expectedGridSize
        }
      })
    }

    return {
      rule: 'require_default_grid_size',
      results
    }
  }

  const [expectedX, expectedY] = expectedGridSize

  for (const file of files) {
    const patcher = file.content.patcher

    if (!patcher) {
      results.push({
        file: file.name,
        level: 'error',
        message: 'Missing patcher object - cannot check gridsize settings',
        line: null,
        column: null
      })
      continue
    }

    // Check if gridsize property exists
    if (patcher.gridsize === undefined) {
      results.push({
        file: file.name,
        level: level,
        message: `Missing \`gridsize\` property - should be [${expectedX}, ${expectedY}]`,
        line: null,
        column: null,
        details: {
          property: 'gridsize',
          expected: expectedGridSize,
          actual: undefined
        }
      })
      continue
    }

    // Check if gridsize is an array
    if (!Array.isArray(patcher.gridsize)) {
      results.push({
        file: file.name,
        level: level,
        message: `Invalid \`gridsize\` format - expected array [${expectedX}, ${expectedY}], got ${typeof patcher.gridsize}`,
        line: null,
        column: null,
        details: {
          property: 'gridsize',
          expected: expectedGridSize,
          actual: patcher.gridsize,
          actualType: typeof patcher.gridsize
        }
      })
      continue
    }

    // Check if gridsize has correct length
    if (patcher.gridsize.length !== 2) {
      results.push({
        file: file.name,
        level: level,
        message: `Invalid \`gridsize\` length - expected [${expectedX}, ${expectedY}], got array of length ${patcher.gridsize.length}`,
        line: null,
        column: null,
        details: {
          property: 'gridsize',
          expected: expectedGridSize,
          actual: patcher.gridsize,
          actualLength: patcher.gridsize.length
        }
      })
      continue
    }

    const [actualX, actualY] = patcher.gridsize

    // Check X coordinate
    if (actualX !== expectedX) {
      results.push({
        file: file.name,
        level: level,
        message: `Grid X size mismatch - \`gridsize[0]\` is ${actualX}, should be ${expectedX}`,
        line: null,
        column: null,
        details: {
          property: 'gridsize[0]',
          expected: expectedX,
          actual: actualX,
          fullGridsize: patcher.gridsize
        }
      })
    }

    // Check Y coordinate
    if (actualY !== expectedY) {
      results.push({
        file: file.name,
        level: level,
        message: `Grid Y size mismatch - \`gridsize[1]\` is ${actualY}, should be ${expectedY}`,
        line: null,
        column: null,
        details: {
          property: 'gridsize[1]',
          expected: expectedY,
          actual: actualY,
          fullGridsize: patcher.gridsize
        }
      })
    }
  }

  return {
    rule: 'require_default_grid_size',
    results
  }
}
