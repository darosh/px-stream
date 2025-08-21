
<jittershader name="geometry_beam_shader">
  <description>Geometry shader beam/line with gaussian intensity</description>
  <param name="uMVP" type="mat4" state="MODELVIEW_PROJECTION_MATRIX" />
  <param name="uSize" type="float" default="0.1" />
  <param name="uIntensity" type="float" default="1.0" />
  <param name="position" type="vec3" state="POSITION" />
  <param name="color" type="vec4" state="COLOR0" />
  <language name="glsl" version="3.3">
    <bind param="position" program="vp" />
    <bind param="uMVP" program="vp" />
    <bind param="uSize" program="gp" />
    <bind param="uMVP" program="gp" />
    <bind param="uSize" program="fp" />
    <bind param="uIntensity" program="fp" />
    <bind param="color" program="fp" />

    <program name="vp" type="vertex">
      <![CDATA[
      #version 330 core

      in vec3 position;
      out vec3 vPosition;

      void main() {
      vPosition = position;
      gl_Position = vec4(position, 1.0);

    }
]]>
        </program>

    <program name="gp" type="geometry">
      <![CDATA[
      #version 330 core
      #define EPS 1E-6

      layout(lines) in;
      layout(triangle_strip, max_vertices = 4) out;

      uniform mat4 uMVP;
      uniform float uSize;

      in vec3 vPosition[];
      out vec4 uvl;

      void main() {
      vec3 p0 = vPosition[0];
      vec3 p1 = vPosition[1];

      vec3 dir = p1 - p0;
      float len = length(dir);
      uvl.z = len;

      if (len > EPS) {
      dir = dir / len;
    } else {
      dir = vec3(1.0, 0.0, 0.0);
    }

      // Calculate perpendicular in screen space
      vec3 norm = normalize(cross(dir, vec3(0.0, 0.0, 1.0)));

      // Emit quad vertices
      uvl.w = float(gl_PrimitiveIDIn);

      // Vertex 0: start - width
      uvl.xy = vec2(uvl.z + uSize, -uSize);
      gl_Position = uMVP * vec4(p0 - norm * uSize - dir * uSize, 1.0);
      EmitVertex();

      // Vertex 1: start + width
      uvl.xy = vec2(uvl.z + uSize, uSize);
      gl_Position = uMVP * vec4(p0 + norm * uSize - dir * uSize, 1.0);
      EmitVertex();

      // Vertex 2: end - width
      uvl.xy = vec2(-uSize, -uSize);
      gl_Position = uMVP * vec4(p1 - norm * uSize + dir * uSize, 1.0);
      EmitVertex();

      // Vertex 3: end + width
      uvl.xy = vec2(-uSize, uSize);
      gl_Position = uMVP * vec4(p1 + norm * uSize + dir * uSize, 1.0);
      EmitVertex();

      EndPrimitive();
    }
]]>
        </program>

    <program name="fp" type="fragment">
      <![CDATA[
      #version 330 core
      #define EPS 1E-6
      #define TAUR 2.5066282746310002
      #define SQRT2 1.4142135623730951

      uniform float uSize;
      uniform float uIntensity;
      uniform vec4 color;

      in vec4 uvl;
      out vec4 fragColor;

      float erf(float x) {
      float s = sign(x), a = abs(x);
      x = 1.0 + (0.278393 + (0.230389 + 0.078108 * (a * a)) * a) * a;
      x *= x;
      return s - s / (x * x);
    }

      void main() {
      float len = uvl.z;
      vec2 xy = uvl.xy;
      float alpha;

      float sigma = uSize / 4.0;

      if (len < EPS) {
      alpha = exp(-pow(length(xy), 2.0) / (2.0 * sigma * sigma)) / 2.0 / sqrt(uSize);
    } else {
      alpha = erf(xy.x / SQRT2 / sigma) - erf((xy.x - len) / SQRT2 / sigma);
      alpha *= exp(-xy.y * xy.y / (2.0 * sigma * sigma)) / 2.0 / len * uSize;
    }

      float afterglow = smoothstep(0.0, 0.33, uvl.w / 2048.0);
      alpha *= afterglow * uIntensity;

      fragColor = color;
      fragColor.a = alpha;
      //fragColor = vec4(1, 0, 0, 1);
    }
]]>
        </program>
  </language>
</jittershader>
