import tokenize from 'glsl-tokenizer'

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
  const nonWhitespace = tokens.filter(t => t.type !== 'whitespace' && t.type !== 'line-comment')

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
  const nonWhitespace = tokens.filter(t => t.type !== 'whitespace' && t.type !== 'line-comment')

  for (let i = 0; i < tokens.length - 2; i++) {
    const current = tokens[i]
    const next = tokens[i + 1]

    // Look for: type keyword followed eventually by variable declarations
    if (current.type === 'keyword' && defaultValues.hasOwnProperty(current.data)) {
      const varType = current.data
      const initValue = defaultValues[varType]

      if (!initValue) continue

      // Skip if this doesn't look like a declaration context
      const prevToken = i > 0 ? tokens[i - 1] : null
      if (prevToken && (
        prevToken.data === '.' ||
        prevToken.data === '(' ||
        prevToken.data === '=' ||
        prevToken.type === 'ident' ||
        prevToken.type === 'builtin'
      )) {
        continue
      }

      // Find all variables in this declaration (until semicolon)
      let pos = i + 1
      let parenDepth = 0

      while (pos < tokens.length) {
        const token = tokens[pos]

        if (token.data === ';') break // End of declaration

        // Track parentheses to avoid function arguments
        if (token.data === '(') parenDepth++
        if (token.data === ')') parenDepth--

        // Look for identifier at parentheses depth 0
        if (token.type === 'ident' && parenDepth === 0) {
          // Check what immediately follows (skip whitespace)
          let nextPos = pos + 1
          while (nextPos < tokens.length && tokens[nextPos].type === 'whitespace') {
            nextPos++
          }

          const followingToken = nextPos < tokens.length ? tokens[nextPos] : null

          // Add initialization if followed by comma or semicolon (but not = or [)
          if (followingToken &&
            (followingToken.data === ',' || followingToken.data === ';') &&
            followingToken.data !== '=' &&
            followingToken.data !== '[') {

            fixes.push({
              position: token.position + token.data.length,
              insert: initValue,
              variable: token.data,
              type: varType
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
