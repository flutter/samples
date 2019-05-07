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

import 'dart:math' show Rectangle, min, max, Point;

import '../../common/color.dart' show Color;
import 'chart_canvas.dart' show FillPatternType;

/// A rectangle to be painted by [ChartCanvas].
class CanvasRect {
  final Rectangle<int> bounds;
  final List<int> dashPattern;
  final Color fill;
  final FillPatternType pattern;
  final Color stroke;
  final double strokeWidthPx;

  CanvasRect(this.bounds,
      {this.dashPattern,
      this.fill,
      this.pattern,
      this.stroke,
      this.strokeWidthPx});
}

/// A stack of [CanvasRect] to be painted by [ChartCanvas].
class CanvasBarStack {
  final List<CanvasRect> segments;
  final int radius;
  final int stackedBarPadding;
  final bool roundTopLeft;
  final bool roundTopRight;
  final bool roundBottomLeft;
  final bool roundBottomRight;
  final Rectangle<int> fullStackRect;

  factory CanvasBarStack(List<CanvasRect> segments,
      {int radius,
      int stackedBarPadding,
      bool roundTopLeft,
      bool roundTopRight,
      bool roundBottomLeft,
      bool roundBottomRight}) {
    final firstBarBounds = segments.first.bounds;

    // Find the rectangle that would represent the full stack of bars.
    var left = firstBarBounds.left;
    var top = firstBarBounds.top;
    var right = firstBarBounds.right;
    var bottom = firstBarBounds.bottom;

    for (var barIndex = 1; barIndex < segments.length; barIndex++) {
      final bounds = segments[barIndex].bounds;

      left = min(left, bounds.left);
      top = min(top, bounds.top);
      right = max(right, bounds.right);
      bottom = max(bottom, bounds.bottom);
    }

    final width = right - left;
    final height = bottom - top;
    final fullStackRect = new Rectangle(left, top, width, height);

    return new CanvasBarStack._internal(
      segments,
      radius: radius,
      stackedBarPadding: stackedBarPadding,
      roundTopLeft: roundTopLeft,
      roundTopRight: roundTopRight,
      roundBottomLeft: roundBottomLeft,
      roundBottomRight: roundBottomRight,
      fullStackRect: fullStackRect,
    );
  }

  CanvasBarStack._internal(
    this.segments, {
    this.radius,
    this.stackedBarPadding = 1,
    this.roundTopLeft = false,
    this.roundTopRight = false,
    this.roundBottomLeft = false,
    this.roundBottomRight = false,
    this.fullStackRect,
  });
}

/// A list of [CanvasPieSlice]s to be painted by [ChartCanvas].
class CanvasPie {
  final List<CanvasPieSlice> slices;
  Point center;
  double radius;
  double innerRadius;

  /// Color of separator lines between arcs.
  final Color stroke;

  /// Stroke width of separator lines between arcs.
  double strokeWidthPx;

  CanvasPie(this.slices, this.center, this.radius, this.innerRadius,
      {this.stroke, this.strokeWidthPx = 0.0});
}

/// A circle sector to be painted by [ChartCanvas].
class CanvasPieSlice {
  double startAngle;
  double endAngle;
  Color fill;

  CanvasPieSlice(this.startAngle, this.endAngle, {this.fill});
}
