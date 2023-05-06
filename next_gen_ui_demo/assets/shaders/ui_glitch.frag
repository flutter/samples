// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#version 460 core

#include "common/common.glsl"
#include <flutter/runtime_effect.glsl>

uniform vec2 uResolution;
uniform float uTime;
uniform sampler2D uTex;

out vec4 oColor;

float cubicPulse(float c, float w, float x) {
	x = abs(x - c);
	if (x > w)
		return 0.0;
	x /= w;
	return 1.0 - x*x*(3.0 - 2.0*x);
}

float twoSin(float x) {
	x = 6.49*x - 0.65;
	float t = -0.7*sin(6.8*x) + 1.4*sin(2.9*x);
	t = t/4.1 + 0.5;
	return t;
}


void main() {

  vec2 uv = vec2(FlutterFragCoord().xy) / uResolution;

  float t_2 = cubicPulse(.5, .05, fract(uTime / 4.0));
  float t_1 = twoSin(fract(uTime / 5.0));
  float glitchScale = mix(0.0, 8.0, t_1 + t_2);
  float aberrationSize = mix(0.0, 5.0, t_1 + t_2);

  float h = hash_1d(uv.y);
  float hs = sign(h);
  h = max(h, 0.0);
  h = h * h;
  h = round(h) * hs;

  uv += vec2(h * glitchScale, 0.0) / uResolution;

  vec2 redOffset = vec2(aberrationSize, 0.0) / uResolution;
  vec2 greenOffset = vec2(0.0, 0.0) / uResolution;
  vec2 blueOffset = vec2(-aberrationSize, 0.0) / uResolution;

  vec2 redUv = uv + redOffset;
  vec2 greenUv = uv + greenOffset;
  vec2 blueUv = uv + blueOffset;

  vec2 ra = texture(uTex, redUv).ra;
  vec2 ga = texture(uTex, greenUv).ga;
  vec2 ba = texture(uTex, blueUv).ba;

  // Convert from pre-multiplied alpha
  ra.x /= ra.y;
  ga.x /= ga.y;
  ba.x /= ba.y;

  float alpha = max(ra.y, max(ga.y, ba.y));
  oColor = vec4(ra.x, ga.x, ba.x, 1.0) * alpha;
}
