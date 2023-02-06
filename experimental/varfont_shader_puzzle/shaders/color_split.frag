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
  float offset = 15;

  vec4 thisCol = texture(uTexture, texCoord.xy);
  vec4 rSrc = texture(uTexture, vec2(texCoord.x + offset / uSize.x * sin(piTime), texCoord.y));
  float r = rSrc.a;

  vec4 gSrc = texture(uTexture, vec2(texCoord.x + offset / uSize.x * sin(piTime + PI), texCoord.y));
  float g = gSrc.a;

  vec4 bSrc = texture(uTexture, vec2(texCoord.x, texCoord.y + offset / uSize.y * sin(piTime + PI * 0.66)));
  float b = bSrc.a;
  fragColor = vec4(r, g, b, clamp(r+g+b, 0.0, 1.0));    
}
