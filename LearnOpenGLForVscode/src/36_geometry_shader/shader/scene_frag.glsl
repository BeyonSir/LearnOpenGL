#version 330 core
out vec4 FragColor;

in vec2 TexCoord;
uniform sampler2D texture1;

void main() {

  FragColor = vec4(vec3(0.2, 0.5, 0.5), 1.0);
  // FragColor = vec4(texture2D(texture1, TexCoord).rgb, 1.0);
}