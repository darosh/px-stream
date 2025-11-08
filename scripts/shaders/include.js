function resolve (a, b) {
  return a + b
}

function normalize (a) {
  return a
}

function dirname (a) {
  const b = a.split('/')
  b.pop()

  return b.join('/') + '/'
}

export function inlineIncludes_ (source, basePath, readFile, processedFiles = new Set()) {
  // Match #include directives with both single and double quotes
  // Supports patterns like: #include "path/to/file.glsl" or #include 'path/to/file.glsl'
  const includeRegex = /#include\s+["']([^"']+)["']/g

  let result = source
  let match

  // Find all includes in the current file
  const includes = []
  while ((match = includeRegex.exec(source)) !== null) {
    includes.push({
      fullMatch: match[0],
      includePath: match[1],
      index: match.index
    })
  }

  // Process includes in reverse order to maintain correct string indices
  for (let i = includes.length - 1; i >= 0; i--) {
    const { fullMatch, includePath } = includes[i]

    // Resolve the absolute path
    const absolutePath = resolve(basePath, includePath)
    const normalizedPath = normalize(absolutePath)

    // Check for circular reference
    if (processedFiles.has(normalizedPath)) {
      console.warn(`Warning: Circular reference detected for ${includePath}`)
      // Replace with a comment instead of throwing
      result = result.replace(
        fullMatch,
        `// Circular reference skipped: ${includePath}`
      )
      continue
    }

    try {
      // Read the included file
      const includedContent = readFile(absolutePath)

      // Add to processed files set
      // const newProcessedFiles = new Set(processedFiles)
      // newProcessedFiles.add(normalizedPath)
      processedFiles.add(normalizedPath)

      // Recursively process the included file
      const newBasePath = dirname(absolutePath)
      const processedContent = inlineIncludes(
        includedContent,
        newBasePath,
        readFile,
        processedFiles
      )

      // Add a comment showing the original include for debugging
      const replacement = `// --- Begin include: ${includePath} ---\n${processedContent}\n// --- End include: ${includePath} ---`

      // Replace the include directive with the processed content
      result = result.replace(fullMatch, replacement)

    } catch (error) {
      // If file not found or other error, keep the include directive and add a warning
      console.error(`Error processing include "${includePath}": ${error.message}`)
      result = result.replace(
        fullMatch,
        `// Error: Could not include ${includePath} - ${error.message}\n${fullMatch}`
      )
    }
  }

  return result
}

export function inlineIncludes(lines, basePath, readFile, processedFiles = new Set()) {
  const includeRegex = /#include\s+["']([^"']+)["']/;
  const result = [];

  for (let i = 0; i < lines.length; i++) {
    const line = lines[i];
    const match = includeRegex.exec(line);

    // If no include directive, just add the line
    if (!match) {
      result.push(line);
      continue;
    }

    // Found an include directive
    const fullMatch = match[0];
    const includePath = match[1];

    // Resolve the absolute path
    const absolutePath = resolve(basePath, includePath);
    const normalizedPath = normalize(absolutePath);

    // Check for circular reference
    if (processedFiles.has(normalizedPath)) {
      // console.warn(`Warning: Circular reference detected for ${includePath}`);
      // result.push(`// Circular reference skipped: ${includePath}`);
      continue;
    }

    try {
      // Read the included file as array of lines
      const includedLines = readFile(absolutePath).split('\n');

      // Add to processed files set
      processedFiles.add(normalizedPath);

      // Recursively process the included file
      const newBasePath = dirname(absolutePath);
      const processedLines = inlineIncludes(
        includedLines,
        newBasePath,
        readFile,
        processedFiles
      );

      // Add the processed content with markers
      // result.push(`// --- Begin include: ${includePath} ---`);
      result.push(...processedLines);
      // result.push(`// --- End include: ${includePath} ---`);

    } catch (error) {
      // If file not found or other error, keep the include directive and add a warning
      // console.error(`Error processing include "${includePath}": ${error.message}`);
      result.push(`// Error: Could not include ${includePath} - ${error.message}`);
      result.push(line);
    }
  }

  return result;
}
