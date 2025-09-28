export function toJxs (fs) {
  return `<jittershader name="shading">
    <param name="b" type="int" default="0" />
    <param name="position" type="vec3" state="POSITION" />
    <param name="textureMatrix0" type="mat4" state="TEXTURE0_MATRIX" />
<!--    <param name="r" type="vec2" state="TEXDIM0" />-->
    <param name="r" type="vec2" default="512 512" />
    <param name="m" type="vec2" default="0 0" />
    <param name="t" type="float" default="1" />
    <param name="f" type="float" default="1000" />
    <language name="glsl" version="3.3">
        <bind param="b" program="fp" />
        <bind param="position" program="vp" />
        <bind param="textureMatrix0" program="vp" />
        <bind param="r" program="fp" />
        <bind param="m" program="fp" />
        <bind param="t" program="fp" />
        <bind param="f" program="fp" />
        <program name="vp" type="vertex">
            <![CDATA[
#version 330
in  vec3 position;
uniform mat4 textureMatrix0;

void main(){
    vec2 vTexCoord = (position.xy - 0.5).xy * 2.0;
    gl_Position = vec4(vTexCoord, 0., 1.0);
}
]]>
        </program>
        <program name="fp" type="fragment">
            <![CDATA[
${fs}
]]>
        </program>
    </language>
</jittershader>`
}
