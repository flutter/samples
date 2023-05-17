// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#define M_PI 3.14159265
#define M_INVPI 0.31830989

float hash_1d(float v) {
  float u = 50.0 * sin(v * 3000.0);
  return 2.0 * fract(2.0 * u * u) - 1.0;
}

float hash_2d(vec2 pos) {
  vec2 uv = 50.0 * fract(pos * M_INVPI);
  return 2.0 * fract(uv.x * uv.y * (uv.x + uv.y)) - 1.0;
}
