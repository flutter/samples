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
  float maxMag = 0.4;
  float minMag = 0.3;
  float numRings = 6.0;
  float ringVel = 4.0;
  float numPeakShifts = 8.0;
  float peakShiftVel = -3.0;

  float unitX = (texCoord.x - 0.5) * 2;
  float unitY = (texCoord.y - 0.5) * 2;
  float dist = distance(vec2(0, 0), vec2(unitX, unitY));
  float theta = atan(unitY, unitX) + PI; // add PI for atan2 values -PI to PI
  float thisMag = (sin(theta * numRings - piTime * ringVel) + 1) * 0.5 * (cos(theta * numPeakShifts - piTime * peakShiftVel) + 1) * 0.5 * (maxMag - minMag) + minMag;

  float unitSrcDist = dist - dist * thisMag;
  float unitSrcX = cos(theta) * unitSrcDist;
  float unitSrcY = sin(theta) * unitSrcDist;
  float texSrcX = unitSrcX * 0.5 + 0.5;
  float texSrcY = unitSrcY * 0.5 + 0.5;  
  fragColor = texture(uTexture, vec2(texSrcX, texSrcY));
}
