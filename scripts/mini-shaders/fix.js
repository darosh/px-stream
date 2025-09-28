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
    const t = nonWhitespace;

    // ONLY look for actual variable declarations
    if (t[i].type === 'keyword' && defaultValues.hasOwnProperty(t[i].data)) {
      const varType = t[i].data;
      const initValue = defaultValues[varType];

      if (!initValue) continue;

      // Check if this is actually a declaration context
      // Look for patterns that indicate declaration vs usage:

      // 1. Skip if previous token suggests this is NOT a declaration
      const prevToken = i > 0 ? t[i - 1] : null;
      if (prevToken && (
        prevToken.data === '.' ||
        prevToken.data === '(' ||
        prevToken.data === '=' ||
        prevToken.type === 'ident' ||
        prevToken.type === 'builtin'
      )) {
        continue;
      }

      // 2. This should be at statement beginning or after certain tokens
      if (prevToken && !(
        prevToken.data === ';' ||           // end of previous statement
        prevToken.data === '{' ||           // start of block
        prevToken.data === ',' ||           // multiple declarations
        prevToken.type === 'keyword'        // after storage qualifier like 'const'
      )) {
        continue;
      }

      // 3. Look ahead to confirm this looks like a declaration
      let pos = i + 1;
      let foundValidDeclaration = false;

      while (pos < nonWhitespace.length && t[pos].data !== ';') {
        if (t[pos].type === 'ident') {
          // This should be followed by =, [, , or ;
          const nextToken = pos + 1 < nonWhitespace.length ? t[pos + 1] : null;
          if (nextToken && (
            nextToken.data === '=' ||
            nextToken.data === '[' ||
            nextToken.data === ',' ||
            nextToken.data === ';'
          )) {
            foundValidDeclaration = true;

            // Only add fix if not already initialized
            if (nextToken.data !== '=' && nextToken.data !== '[') {
              const varToken = t[pos];
              fixes.push({
                position: varToken.position + varToken.data.length,
                insert: initValue,
                variable: varToken.data,
                type: varType
              });
            }
          } else {
            // This doesn't look like a declaration
            break;
          }
        }
        pos++;
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
