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

import 'dart:math' show Point, Rectangle;
import 'package:flutter_web/material.dart';
import 'package:charts_common/common.dart' as common show Color;

/// Draws a simple line.
///
/// Lines may be styled with dash patterns similar to stroke-dasharray in SVG
/// path elements. Dash patterns are currently only supported between vertical
/// or horizontal line segments at this time.
class PolygonPainter {
  /// Draws a simple line.
  ///
  /// [dashPattern] controls the pattern of dashes and gaps in a line. It is a
  /// list of lengths of alternating dashes and gaps. The rendering is similar
  /// to stroke-dasharray in SVG path elements. An odd number of values in the
  /// pattern will be repeated to derive an even number of values. "1,2,3" is
  /// equivalent to "1,2,3,1,2,3."
  void draw(
      {Canvas canvas,
      Paint paint,
      List<Point> points,
      Rectangle<num> clipBounds,
      common.Color fill,
      common.Color stroke,
      double strokeWidthPx}) {
    if (points.isEmpty) {
      return;
    }

    // Apply clip bounds as a clip region.
    if (clipBounds != null) {
      canvas
        ..save()
        ..clipRect(new Rect.fromLTWH(
            clipBounds.left.toDouble(),
            clipBounds.top.toDouble(),
            clipBounds.width.toDouble(),
            clipBounds.height.toDouble()));
    }

    final strokeColor = stroke != null
        ? new Color.fromARGB(stroke.a, stroke.r, stroke.g, stroke.b)
        : null;

    final fillColor = fill != null
        ? new Color.fromARGB(fill.a, fill.r, fill.g, fill.b)
        : null;

    // If the line has a single point, draw a circle.
    if (points.length == 1) {
      final point = points.first;
      paint.color = fillColor;
      paint.style = PaintingStyle.fill;
      canvas.drawCircle(new Offset(point.x, point.y), strokeWidthPx, paint);
    } else {
      if (strokeColor != null && strokeWidthPx != null) {
        paint.strokeWidth = strokeWidthPx;
        paint.strokeJoin = StrokeJoin.bevel;
        paint.style = PaintingStyle.stroke;
      }

      if (fillColor != null) {
        paint.color = fillColor;
        paint.style = PaintingStyle.fill;
      }

      final path = new Path()
        ..moveTo(points.first.x.toDouble(), points.first.y.toDouble());

      for (var point in points) {
        path.lineTo(point.x.toDouble(), point.y.toDouble());
      }

      canvas.drawPath(path, paint);
    }

    if (clipBounds != null) {
      canvas.restore();
    }
  }
}
