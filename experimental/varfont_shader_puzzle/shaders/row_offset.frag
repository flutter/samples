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
  
  float levels = 5;
  float maxMag = 0.1;
  float minMag = 0.02;
  float magMod = maxMag / levels;
  float row = floor(texCoord.y * uSize.y * 0.25); // resolution/density of rows
  float offsetDir = mod(row, 2) == 0 ? -1 : 1;
  float sinFn = cos(texCoord.y * 1 * PI + piTime);
  float offset = (offsetDir * (minMag + maxMag * sinFn)) * uDampener;

  vec2 offsetTexCoord = vec2(texCoord.x + offset, texCoord.y);
  vec4 outColor = texture(uTexture, offsetTexCoord);
  if (texCoord.x + offset < 0.0 || texCoord.x + offset > 1.0) {
    outColor = vec4(0.0, 0.0, 0.0, 0.0);
  }
  fragColor = outColor;
}
