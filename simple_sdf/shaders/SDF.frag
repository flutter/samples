// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#version 460 core

#include <flutter/runtime_effect.glsl>

precision mediump float;

uniform vec2 resolution;
out vec4 fragColor;

vec3 pink = vec3(255, 105, 180) / 255;

// dot2 and sdHeart from https://iquilezles.org/articles/distfunctions2d/
//
// The MIT License
// Copyright © 2015 Inigo Quilez
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions: The above copyright
// notice and this permission notice shall be included in all copies or
// substantial portions of the Software. THE SOFTWARE IS PROVIDED "AS IS",
// WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED
// TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
// NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
// FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
// TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR
// THE USE OR OTHER DEALINGS IN THE SOFTWARE.
// https://www.youtube.com/c/InigoQuilez
// https://iquilezles.org

float dot2(vec2 v) { return dot(v, v); }
float sdHeart(in vec2 p) {
  p.x = abs(p.x);

  if (p.y + p.x > 1.0)
    return sqrt(dot2(p - vec2(0.25, 0.75))) - sqrt(2.0) / 4.0;
  return sqrt(min(dot2(p - vec2(0.00, 1.00)),
                  dot2(p - 0.5 * max(p.x + p.y, 0.0)))) *
         sign(p.x - p.y);
}

void main() {
  vec2 st = FlutterFragCoord().xy / resolution.xy;
  // Remap coordinates.
  // Flutter normalized coordinates have range [0,1] but sdHeart expects [-1,1].
  st = (st - vec2(0.5)) * vec2(2.0);
  // Center the heart.
  // sdHeart is written such that the bottom point is at (0,0) and it's about 1
  // unit tall.
  st.y -= 0.5;
  // Invert Y coordinate.
  st.y *= -1;

  // Calculate the color of this pixel according to the heart SDF, using
  // smoothstep to anti-alias the edges.
  vec3 color = vec3(0.0);
  color = mix(pink, color, smoothstep(0.01, 0.02, sdHeart(st)));

  fragColor = vec4(color, 1);
}
