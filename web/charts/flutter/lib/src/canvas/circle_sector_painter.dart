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

import 'dart:math' show cos, pi, sin, Point;
import 'package:flutter_web/material.dart';
import 'package:charts_common/common.dart' as common show Color;

/// Draws a sector of a circle, with an optional hole in the center.
class CircleSectorPainter {
  /// Draws a sector of a circle, with an optional hole in the center.
  ///
  /// [center] The x, y coordinates of the circle's center.
  /// [radius] The radius of the circle.
  /// [innerRadius] Optional radius of a hole in the center of the circle that
  ///     should not be filled in as part of the sector.
  /// [startAngle] The angle at which the arc starts, measured clockwise from
  ///     the positive x axis and expressed in radians.
  /// [endAngle] The angle at which the arc ends, measured clockwise from the
  ///     positive x axis and expressed in radians.
  /// [fill] Fill color for the sector.
  /// [stroke] Stroke color of the arc and radius lines.
  /// [strokeWidthPx] Stroke width of the arc and radius lines.
  void draw(
      {Canvas canvas,
      Paint paint,
      Point center,
      double radius,
      double innerRadius,
      double startAngle,
      double endAngle,
      common.Color fill,
      common.Color stroke,
      double strokeWidthPx}) {
    paint.color = new Color.fromARGB(fill.a, fill.r, fill.g, fill.b);
    paint.style = PaintingStyle.fill;

    final innerRadiusStartPoint = new Point<double>(
        innerRadius * cos(startAngle) + center.x,
        innerRadius * sin(startAngle) + center.y);

    final innerRadiusEndPoint = new Point<double>(
        innerRadius * cos(endAngle) + center.x,
        innerRadius * sin(endAngle) + center.y);

    final radiusStartPoint = new Point<double>(
        radius * cos(startAngle) + center.x,
        radius * sin(startAngle) + center.y);

    final centerOffset = new Offset(center.x, center.y);

    final isFullCircle = startAngle != null &&
        endAngle != null &&
        endAngle - startAngle == 2 * pi;

    final midpointAngle = (endAngle + startAngle) / 2;

    final path = new Path()
      ..moveTo(innerRadiusStartPoint.x, innerRadiusStartPoint.y);

    path.lineTo(radiusStartPoint.x, radiusStartPoint.y);

    // For full circles, draw the arc in two parts.
    if (isFullCircle) {
      path.arcTo(new Rect.fromCircle(center: centerOffset, radius: radius),
          startAngle, midpointAngle - startAngle, true);
      path.arcTo(new Rect.fromCircle(center: centerOffset, radius: radius),
          midpointAngle, endAngle - midpointAngle, true);
    } else {
      path.arcTo(new Rect.fromCircle(center: centerOffset, radius: radius),
          startAngle, endAngle - startAngle, true);
    }

    path.lineTo(innerRadiusEndPoint.x, innerRadiusEndPoint.y);

    // For full circles, draw the arc in two parts.
    if (isFullCircle) {
      path.arcTo(new Rect.fromCircle(center: centerOffset, radius: innerRadius),
          endAngle, midpointAngle - endAngle, true);
      path.arcTo(new Rect.fromCircle(center: centerOffset, radius: innerRadius),
          midpointAngle, startAngle - midpointAngle, true);
    } else {
      path.arcTo(new Rect.fromCircle(center: centerOffset, radius: innerRadius),
          endAngle, startAngle - endAngle, true);
    }

    // Drawing two copies of this line segment, before and after the arcs,
    // ensures that the path actually gets closed correctly.
    path.lineTo(radiusStartPoint.x, radiusStartPoint.y);

    canvas.drawPath(path, paint);
  }
}
