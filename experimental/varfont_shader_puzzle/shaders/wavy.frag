// Copyright 2023 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
#define PI 3.1415926538

layout(location = 0) uniform float uTime;
layout(location = 1) uniform vec2 uSize; 
layout(location = 3) uniform float uDampener;

layout(location = 0) out vec4 fragColor;

layout(location = 2) uniform sampler2D uTexture;

void main()
{
  float piTime = uTime * PI * 2;
  
  vec2 texCoord = gl_FragCoord.xy / uSize.xy;
  int speed;
  
  // wavy
  speed = 1;
  float xAdj = texCoord.x * 3 * PI;
  float waveFnVal = sin((xAdj + piTime * speed));
  float hackAdj = 0.0; 
  float offset = ( ((pow(waveFnVal, 2) * 0.5 - 0.5) * 0.2) + hackAdj ) * uDampener;

  vec2 offsetTexCoord = vec2(texCoord.x, texCoord.y + offset);
  fragColor = texture(uTexture, offsetTexCoord);
}
