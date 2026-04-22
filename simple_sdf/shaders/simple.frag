#version 460 core

#include <flutter/runtime_effect.glsl>

precision mediump float;

uniform vec2 resolution;
out vec4 fragColor;

vec3 flutterBlue = vec3(5, 83, 177) / 255;
vec3 flutterNavy = vec3(4, 43, 89) / 255;
vec3 flutterSky = vec3(2, 125, 253) / 255;

void main() {
  vec2 st = FlutterFragCoord().xy / resolution.xy;

  vec3 color = vec3(0.0);
  vec3 percent = vec3((st.x + st.y) / 2);

  color =
      mix(mix(flutterSky, flutterBlue, percent * 2),
          mix(flutterBlue, flutterNavy, percent * 2 - 1), step(0.5, percent));

  fragColor = vec4(color, 1);
}
