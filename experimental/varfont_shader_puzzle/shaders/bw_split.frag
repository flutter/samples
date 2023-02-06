// Copyright 2023 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#define PI 3.1415926538

uniform float uTime;
uniform vec2 uSize;
uniform float uDampener;

out vec4 fragColor;

uniform sampler2D uTexture;

void main()
{
  float piTime = uTime * PI * 2;
  vec2 texCoord = gl_FragCoord.xy / uSize.xy;
  float offset = 50;
  
  float opacSum = 0.0;
  vec4 thisCol = texture(uTexture, texCoord.xy);

  float x = texCoord.x + (offset / uSize.x * pow(sin(piTime), 4)) * uDampener;
  if (x >= 0.0 && x <= 1.0) {
    opacSum += 0.3 * texture(uTexture, vec2(x, texCoord.y)).a;  
  }
  
  x = texCoord.x - (offset / uSize.x * pow(sin(piTime + PI), 2)) * uDampener;
  if (x >= 0.0 && x <= 1.0) {
    opacSum += 0.3 * texture(uTexture, vec2(x, texCoord.y)).a;
  }

  float y = texCoord.y + (offset / uSize.y * pow(sin(piTime + PI * 0.66), 4)) * uDampener;
  if (y >= 0.0 && y <= 1.0) {
    opacSum += 0.3 * texture(uTexture, vec2(texCoord.x, y)).a;
  }

  fragColor = vec4(0.0, 0.0, 0.0, clamp(opacSum, 0.0, 1.0));    

}
