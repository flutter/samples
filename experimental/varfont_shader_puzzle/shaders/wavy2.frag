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
  float maxMag = 0.2;

  float thisMag = (sin(texCoord.y * 10 + piTime) + 1) * 0.5 * maxMag * uDampener;
  float srcX;
  srcX = texCoord.x + (0.5 - texCoord.x) * thisMag;
  vec2 srcCoord = vec2(srcX, texCoord.y);
  fragColor = texture(uTexture, srcCoord);
}
