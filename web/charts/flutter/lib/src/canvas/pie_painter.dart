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

import 'dart:math' show cos, sin, Point;
import 'package:flutter_web/material.dart';
import 'package:charts_common/common.dart' as common show CanvasPie;
import 'circle_sector_painter.dart' show CircleSectorPainter;

/// Draws a pie chart, with an optional hole in the center.
class PiePainter {
  CircleSectorPainter _circleSectorPainter;

  /// Draws a pie chart, with an optional hole in the center.
  void draw(Canvas canvas, Paint paint, common.CanvasPie canvasPie) {
    _circleSectorPainter ??= new CircleSectorPainter();

    final center = canvasPie.center;
    final radius = canvasPie.radius;
    final innerRadius = canvasPie.innerRadius;

    for (var slice in canvasPie.slices) {
      _circleSectorPainter.draw(
          canvas: canvas,
          paint: paint,
          center: center,
          radius: radius,
          innerRadius: innerRadius,
          startAngle: slice.startAngle,
          endAngle: slice.endAngle,
          fill: slice.fill);
    }

    // Draw stroke lines between pie slices. This is done after the slices are
    // drawn to ensure that they appear on top.
    if (canvasPie.stroke != null &&
        canvasPie.strokeWidthPx != null &&
        canvasPie.slices.length > 1) {
      paint.color = new Color.fromARGB(canvasPie.stroke.a, canvasPie.stroke.r,
          canvasPie.stroke.g, canvasPie.stroke.b);

      paint.strokeWidth = canvasPie.strokeWidthPx;
      paint.strokeJoin = StrokeJoin.bevel;
      paint.style = PaintingStyle.stroke;

      final path = new Path();

      for (var slice in canvasPie.slices) {
        final innerRadiusStartPoint = new Point<double>(
            innerRadius * cos(slice.startAngle) + center.x,
            innerRadius * sin(slice.startAngle) + center.y);

        final innerRadiusEndPoint = new Point<double>(
            innerRadius * cos(slice.endAngle) + center.x,
            innerRadius * sin(slice.endAngle) + center.y);

        final radiusStartPoint = new Point<double>(
            radius * cos(slice.startAngle) + center.x,
            radius * sin(slice.startAngle) + center.y);

        final radiusEndPoint = new Point<double>(
            radius * cos(slice.endAngle) + center.x,
            radius * sin(slice.endAngle) + center.y);

        path.moveTo(innerRadiusStartPoint.x, innerRadiusStartPoint.y);

        path.lineTo(radiusStartPoint.x, radiusStartPoint.y);

        path.moveTo(innerRadiusEndPoint.x, innerRadiusEndPoint.y);

        path.lineTo(radiusEndPoint.x, radiusEndPoint.y);
      }

      canvas.drawPath(path, paint);
    }
  }
}
