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

import 'package:meta/meta.dart' show protected, required;

import '../../common/graphics_factory.dart' show GraphicsFactory;
import '../../common/symbol_renderer.dart';
import '../common/chart_canvas.dart' show ChartCanvas;
import 'point_renderer.dart' show PointRendererElement;
import 'point_renderer_decorator.dart' show PointRendererDecorator;

/// Decorates a point chart by drawing a shape connecting the domain and measure
/// data bounds.
///
/// The line will connect the point (domainLowerBound, measureLowerBound) to the
/// point  (domainUpperBound, measureUpperBound).
class ComparisonPointsDecorator<D> extends PointRendererDecorator<D> {
  /// Renderer used to draw the points. Defaults to a line with circular end
  /// caps.
  final PointSymbolRenderer symbolRenderer;

  /// Render the bounds shape underneath series data.
  final bool renderAbove = false;

  ComparisonPointsDecorator({PointSymbolRenderer symbolRenderer})
      : this.symbolRenderer = symbolRenderer ?? new CylinderSymbolRenderer();

  @override
  void decorate(PointRendererElement<D> pointElement, ChartCanvas canvas,
      GraphicsFactory graphicsFactory,
      {@required Rectangle drawBounds,
      @required double animationPercent,
      bool rtl = false}) {
    final points = computeBoundedPointsForElement(pointElement, drawBounds);

    if (points == null) {
      return;
    }

    final color = pointElement.color.lighter;

    symbolRenderer.paint(canvas, points[0], pointElement.boundsLineRadiusPx,
        fillColor: color, strokeColor: color, p2: points[1]);
  }

  /// Computes end points for the [pointElement]'s lower and upper data bounds.
  ///
  /// This will compute two points representing the end points of the symbol,
  /// from (xLower, yLower) to (xUpper, yUpper). The end points will be clamped
  /// along the line so that it is fully contained within [drawBounds].
  ///
  /// Returns null if [pointElement] is missing any of the data bounds, or if
  /// the line connecting them is located entirely outside of [drawBounds].
  @protected
  List<Point<double>> computeBoundedPointsForElement(
      PointRendererElement<D> pointElement, Rectangle drawBounds) {
    // All bounds points must be defined for a valid comparison point to be
    // drawn.
    if (pointElement.point.xLower == null ||
        pointElement.point.xUpper == null ||
        pointElement.point.yLower == null ||
        pointElement.point.yUpper == null) {
      return null;
    }

    // Construct the points that describe our line p1p2.
    var p1 =
        new Point<double>(pointElement.point.xLower, pointElement.point.yLower);
    var p2 =
        new Point<double>(pointElement.point.xUpper, pointElement.point.yUpper);

    // First check to see if there is no intersection at all between the line
    // p1p2 and [drawBounds].
    final dataBoundsRect = new Rectangle<num>.fromPoints(p1, p2);
    if (!drawBounds.intersects(dataBoundsRect)) {
      return null;
    }

    // Line with end points [p1] and [p2].
    final p1p2 = new _Line.fromPoints(p1, p2);

    // Next, slide p1 along the line p1p2 towards the edge of the draw area if
    // the point is located outside of it.
    if (!drawBounds.containsPoint(p1)) {
      final p = _clampPointAlongLineToBoundingBox(p1, p1p2, drawBounds);
      if (p != null) {
        p1 = p;
      }
    }

    // Next, slide p2 along the line p1p2 towards the edge of the draw area if
    // the point is located outside of it.
    if (!drawBounds.containsPoint(p2)) {
      final p = _clampPointAlongLineToBoundingBox(p2, p1p2, drawBounds);
      if (p != null) {
        p2 = p;
      }
    }

    return [p1, p2];
  }

  /// Slide the given point [p1] along the line [line], such that it intersects
  /// the nearest edge of [bounds].
  ///
  /// This method assumes that we have already verified that the [line]
  /// intercepts the [bounds] somewhere.
  Point<double> _clampPointAlongLineToBoundingBox(
      Point<double> p1, _Line line, Rectangle<num> bounds) {
    // The top and bottom edges of the bounds box describe two horizontal lines,
    // with equations y = bounds.top and y = bounds.bottom. We can pass these
    // into a standard line interception method to find our point.
    if (p1.y < bounds.top) {
      final p = line.intersection(new _Line(0.0, bounds.top.toDouble()));
      if (p != null && bounds.containsPoint(p)) {
        return p;
      }
    }

    if (p1.y > bounds.bottom) {
      final p = line.intersection(new _Line(0.0, bounds.bottom.toDouble()));
      if (p != null && bounds.containsPoint(p)) {
        return p;
      }
    }

    // The left and right edges of the bounds box describe two vertical lines,
    // with equations x = bounds.right and x = bounds.left. To find the
    // intersection, we just need to solve for y in our line described by
    // [slope] and [yIntercept]:
    //
    // y = slope * x + yIntercept
    if (p1.x < bounds.left) {
      final p =
          line.intersection(new _Line.fromVertical(bounds.left.toDouble()));
      if (p != null && bounds.containsPoint(p)) {
        return p;
      }
    }

    if (p1.x > bounds.right) {
      final p =
          line.intersection(new _Line.fromVertical(bounds.right.toDouble()));
      if (p != null && bounds.containsPoint(p)) {
        return p;
      }
    }

    return null;
  }
}

/// Describes a simple line with the equation y = slope * x + yIntercept.
class _Line {
  /// Slope of the line.
  double slope;

  /// y-intercept of the line (i.e. the y value of the point where the line
  /// intercepts the y axis).
  double yIntercept;

  /// x-intercept of the line (i.e. the x value of the point where the line
  /// intercepts the x axis). This is normally only needed for vertical lines,
  /// which have no slope.
  double xIntercept;

  /// True if this line is a vertical line, of the form x = [xIntercept].
  bool get vertical => slope == null && xIntercept != null;

  _Line(this.slope, this.yIntercept, [this.xIntercept]);

  /// Creates a line with end points [p1] and [p2].
  factory _Line.fromPoints(Point<num> p1, Point<num> p2) {
    // Handle vertical lines.
    if (p1.x == p2.x) {
      return new _Line.fromVertical(p1.x);
    }

    // Slope of the line p1p2.
    double m = ((p2.y - p1.y) / (p2.x - p1.x)).toDouble();

    // y-intercept of the line p1p2.
    double b = (p1.y - (m * p1.x)).toDouble();

    return new _Line(m, b);
  }

  /// Creates a vertical line, with the question x = [xIntercept].
  factory _Line.fromVertical(num xIntercept) {
    return new _Line(null, null, xIntercept.toDouble());
  }

  /// Computes the intersection of `this` and [other].
  ///
  /// Returns the intersection of this and `other`, or `null` if they don't
  /// intersect.
  Point<double> intersection(_Line other) {
    // Parallel lines have no intersection.
    if (slope == other.slope || (vertical && other.vertical)) {
      return null;
    }

    // If the other line is a vertical line (has undefined slope), then we can
    // just plug its xIntercept value into the line equation as x and solve for
    // y.
    if (other.vertical) {
      return new Point<double>(
          other.xIntercept, slope * other.xIntercept + yIntercept);
    }

    // If this line is a vertical line (has undefined slope), then we can just
    // plug its xIntercept value into the line equation as x and solve for y.
    if (vertical) {
      return new Point<double>(
          xIntercept, other.slope * xIntercept + other.yIntercept);
    }

    // Now that we know that we have intersecting, non-vertical lines, compute
    // the intersection.
    final x = (other.yIntercept - yIntercept) / (slope - other.slope);

    final y = slope * (other.yIntercept - yIntercept) / (slope - other.slope) +
        yIntercept;

    return new Point<double>(x, y);
  }
}
