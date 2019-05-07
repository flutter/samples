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

import 'dart:math' show Point;
import 'package:flutter_web/material.dart';
import 'package:charts_common/common.dart' as common show Color;

/// Draws a simple point.
///
/// TODO: Support for more shapes than circles?
class PointPainter {
  void draw(
      {Canvas canvas,
      Paint paint,
      Point point,
      double radius,
      common.Color fill,
      common.Color stroke,
      double strokeWidthPx}) {
    if (point == null) {
      return;
    }

    if (fill != null) {
      paint.color = new Color.fromARGB(fill.a, fill.r, fill.g, fill.b);
      paint.style = PaintingStyle.fill;

      canvas.drawCircle(
          new Offset(point.x.toDouble(), point.y.toDouble()), radius, paint);
    }

    // [Canvas.drawCircle] does not support drawing a circle with both a fill
    // and a stroke at this time. Use a separate circle for the stroke.
    if (stroke != null && strokeWidthPx != null && strokeWidthPx > 0.0) {
      paint.color = new Color.fromARGB(stroke.a, stroke.r, stroke.g, stroke.b);
      paint.strokeWidth = strokeWidthPx;
      paint.strokeJoin = StrokeJoin.bevel;
      paint.style = PaintingStyle.stroke;

      canvas.drawCircle(
          new Offset(point.x.toDouble(), point.y.toDouble()), radius, paint);
    }
  }
}
