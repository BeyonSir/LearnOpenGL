#version 330 core
out vec4 FragColor;

in float prewq;
in vec2 oTexCoord;
uniform sampler2D diffuseTexture;
uniform float time;

void main() {
  vec3 FragColor_pre = texture(diffuseTexture, oTexCoord).rgb;
  float middle = 0.5 * sin(time * 10 * prewq);
  vec3 now = FragColor_pre + vec3(middle,middle,middle);
  FragColor = vec4(now,1.0);
  //FragColor = vec4(texture(diffuseTexture, oTexCoord).rgb, 1.0);
}