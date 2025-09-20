import { writeFile } from 'fs/promises'
import makeShader from './make-shader.js'
import glsl from './glsl.json' with { type: 'json' }
import glslNames from './glsl-names.json' with { type: 'json' }

// const names = glsl.map(({ name }) => [name, name])
// console.log(JSON.stringify(Object.fromEntries(names)))
// console.log(JSON.stringify(Object.values(glslNames).sort()).replaceAll(',', ' '))

function nameToSlug (name) {
  return name.replaceAll(' ', '-')
    .toLowerCase()
}

for (const transition of glsl) {
  const jxs = []
  const shader = makeShader(transition)
  const readableName = glslNames[transition.name]
  const slug = nameToSlug(readableName)

  jxs.push(`<jittershader name="${slug}">`)
  jxs.push(`  <description>${readableName}</description>`)
  jxs.push(`  <param name="tex0" type="int" default="0"/>`)
  jxs.push(`  <param name="tex1" type="int" default="1"/>`)
  jxs.push(`  <param name="progress" type="float" default="0.5"/>`)

  for (const key of Object.keys(transition.paramsTypes)) {
    let d = transition.defaultParams[key]
    d = Array.isArray(d) ? d.join(' ') : d

    jxs.push(`  <param name="${key}" type="${transition.paramsTypes[key]}" default="${d}"/>`)
  }

  jxs.push(`  <language name="glsl" version="1.0">`)
  jxs.push(`    <bind param="tex0" program="fp"/>`)
  jxs.push(`    <bind param="tex1" program="fp"/>`)
  jxs.push(`    <bind param="progress" program="fp"/>`)

  for (const key of Object.keys(transition.paramsTypes)) {
    jxs.push(`    <bind param="${key}" program="fp"/>`)
  }

  jxs.push(`    <program name="vp" type="vertex">
            <![CDATA[
varying vec2 texcoord0;
varying vec2 texdim0;

varying vec2 texcoord1;
varying vec2 texdim1;

void main() {
    gl_Position = ftransform();
    texcoord0 = vec2(gl_TextureMatrix[0] * gl_MultiTexCoord0);
    texdim0 = vec2 (abs(gl_TextureMatrix[0][0][0]),abs(gl_TextureMatrix[0][1][1]));
    texcoord1 = vec2(gl_TextureMatrix[1] * gl_MultiTexCoord1);
    texdim1 = vec2 (abs(gl_TextureMatrix[1][0][0]),abs(gl_TextureMatrix[1][1][1]));
}
]]>
    </program>`)

  // jxs.push(`    <program name="vp" type="vertex" source="sh.passthru.xform.vp.glsl" />`)

  jxs.push(`    <program name="fp" type="fragment">`)
  jxs.push(`<![CDATA[`)
  jxs.push(shader)
  jxs.push(`]]>`)
  jxs.push(`    </program>`)
  jxs.push(`  </language>`)
  jxs.push(`</jittershader>`)
  jxs.push('')

  await writeFile(`./devices/PX._transition.${slug}.jxs`, jxs.join('\n'))
}
