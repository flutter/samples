// Copyright 2018 the Charts project authors. Please see the AUTHORS file
// for details.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:math' show max, min, sqrt;
import 'package:vector_math/vector_math.dart' show Vector2;

/// Takes a number and clamps it to within the provided bounds.
///
/// Returns the input number if it is within bounds, or the nearest number
/// within the bounds.
///
/// [value] The input number.
/// [minValue] The minimum value to return.
/// [maxValue] The maximum value to return.
num clamp(num value, num minValue, num maxValue) {
  return min(max(value, minValue), maxValue);
}

/// Returns the minimum distance between point p and the line segment vw.
///
/// [p] The point.
/// [v] Start point for the line segment.
/// [w] End point for the line segment.
double distanceBetweenPointAndLineSegment(Vector2 p, Vector2 v, Vector2 w) {
  return sqrt(distanceBetweenPointAndLineSegmentSquared(p, v, w));
}

/// Returns the squared minimum distance between point p and the line segment
/// vw.
///
/// [p] The point.
/// [v] Start point for the line segment.
/// [w] End point for the line segment.
double distanceBetweenPointAndLineSegmentSquared(
    Vector2 p, Vector2 v, Vector2 w) {
  final lineLength = v.distanceToSquared(w);

  if (lineLength == 0) {
    return p.distanceToSquared(v);
  }

  var t0 = (p - v).dot(w - v) / lineLength;
  t0 = max(0.0, min(1.0, t0));

  final projection = v + ((w - v) * t0);

  return p.distanceToSquared(projection);
}
