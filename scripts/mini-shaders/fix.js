import tokenize from 'glsl-tokenizer'

const log = () => {}

// Define default values for different types
const defaultValues = {
  'int': '=0',
  'float': '=0.',
  'bool': '=false',
  'vec2': '=vec2(0.)',
  'vec3': '=vec3(0.)',
  'vec4': '=vec4(0.)',
  'ivec2': '=ivec2(0)',
  'ivec3': '=ivec3(0)',
  'ivec4': '=ivec4(0)',
  'bvec2': '=bvec2(false)',
  'bvec3': '=bvec3(false)',
  'bvec4': '=bvec4(false)',
  'mat2': '=mat2(1.)',
  'mat3': '=mat3(1.)',
  'mat4': '=mat4(1.)',
  'sampler2D': '', // Skip samplers - they're uniforms
  'samplerCube': '',
}

export function fixUninitializedLoopVars (glslCode) {
  const tokens = tokenize(glslCode)
  const fixes = []

  // Skip whitespace tokens for pattern matching
  const nonWhitespace = tokens.filter(t => t.type !== 'whitespace'
    && t.type !== 'preprocessor'
    && t.type !== 'line-comment')

  for (let i = 0; i < nonWhitespace.length - 6; i++) {
    const t = nonWhitespace

    // Pattern: for ( [int|float] varname [, varname2] ;
    if (t[i].type === 'keyword' && t[i].data === 'for' &&
      t[i + 1].type === 'operator' && t[i + 1].data === '(' &&
      t[i + 2].type === 'keyword' && defaultValues[t[i + 2].data]) {

      let pos = i + 3
      const varType = t[i + 2].data
      const initValue = defaultValues[varType]

      // Process each variable in the declaration
      while (pos < nonWhitespace.length && t[pos].data !== ';') {
        if (t[pos].type === 'ident') {
          // Check if this variable is already initialized
          const nextToken = pos + 1 < nonWhitespace.length ? t[pos + 1] : null

          if (!nextToken || nextToken.data !== '=') {
            // Variable is not initialized - add fix
            const varToken = t[pos]
            fixes.push({
              position: varToken.position + varToken.data.length,
              insert: initValue,
              variable: varToken.data
            })
          }
        }
        pos++
      }
    }
  }

  // Apply fixes from end to start to maintain positions
  let fixedCode = glslCode

  fixes.sort((a, b) => b.position - a.position).forEach(fix => {
    fixedCode = fixedCode.slice(0, fix.position) + fix.insert + fixedCode.slice(fix.position)
  })

  return {
    fixed: fixedCode,
    changes: fixes.length,
    details: fixes,
    tokens: nonWhitespace
  }
}

export function fixUninitializedVars (glslCode) {
  const tokens = tokenize(glslCode)
  const fixes = []

  // Skip whitespace tokens for pattern matching
  const nonWhitespace = tokens.filter(t => t.type !== 'whitespace'
    && t.type !== 'preprocessor'
    && t.type !== 'line-comment')

  for (let i = 0; i < nonWhitespace.length - 2; i++) {
    const t = nonWhitespace

    // Only look for actual variable declarations
    if (t[i].type === 'keyword' && defaultValues.hasOwnProperty(t[i].data)) {
      log('IN', t[i].data, t[i].position)
      const varType = t[i].data
      const initValue = defaultValues[varType]

      if (!initValue) continue

      // Skip if previous token suggests this is NOT a declaration
      const prevToken = i > 0 ? t[i - 1] : null
      if (prevToken && (
        prevToken.data === '.' ||
        prevToken.data === '(' ||
        prevToken.data === '=' ||
        prevToken.type === 'ident' ||
        prevToken.type === 'builtin'
      )) {
        continue
      }

      // Check if this is at statement beginning or after certain tokens
      if (prevToken && !(
        prevToken.data === ';' ||
        prevToken.data === '{' ||
        prevToken.data === ',' ||
        prevToken.type === 'keyword'
      )) {
        continue
      }

      // Process potential variable declarations
      let pos = i + 1
      let foundValidDeclaration = false

      while (pos < nonWhitespace.length && t[pos].data !== ';') {
        if (t[pos].type === 'ident') {
          const varToken = t[pos]
          const nextToken = pos + 1 < nonWhitespace.length ? t[pos + 1] : null

          // Check if this is a variable declaration
          if (nextToken && (
            nextToken.data === '=' ||
            nextToken.data === '[' ||
            nextToken.data === ',' ||
            nextToken.data === ';'
          )) {
            foundValidDeclaration = true

            // Only add fix if not initialized (no '=' or '[' follows)
            if (nextToken.data !== '=' && nextToken.data !== '[') {
              fixes.push({
                position: varToken.position + varToken.data.length,
                insert: initValue,
                variable: varToken.data,
                type: varType
              })
            }

            // If followed by '=', skip the initialization expression
            if (nextToken.data === '=') {
              pos++
              let paren = 0
              while (pos < nonWhitespace.length && (paren > 0 || (t[pos].data !== ',' && t[pos].data !== ';'))) {
                if (t[pos].data === '(') paren++
                if (t[pos].data === ')') paren--
                pos++
              }
              // If we stopped at a comma, continue to process next variable
              if (pos < nonWhitespace.length && t[pos].data === ',') pos++
              continue
            }
          } else {
            // Invalid declaration pattern, break
            break
          }
        }

        // Move to next token, but skip parentheses correctly
        if (t[pos].data === '(') {
          let paren = 1
          pos++
          while (pos < nonWhitespace.length && paren > 0) {
            if (t[pos].data === '(') paren++
            if (t[pos].data === ')') paren--
            pos++
          }
        } else {
          pos++
        }
      }

      if (foundValidDeclaration) {
        i = pos - 1 // Move to the last processed token
      }
    } else {
      log('OUT', t[i].data, t[i].position)
    }
  }

  // Apply fixes from end to start to maintain positions
  let fixedCode = glslCode

  fixes.sort((a, b) => b.position - a.position).forEach(fix => {
    fixedCode = fixedCode.slice(0, fix.position) + fix.insert + fixedCode.slice(fix.position)
  })

  return {
    fixed: fixedCode,
    changes: fixes.length,
    details: fixes,
    tokens: nonWhitespace
  }
}
