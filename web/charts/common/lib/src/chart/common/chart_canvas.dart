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

import '../../common/color.dart' show Color;
import '../../common/graphics_factory.dart' show GraphicsFactory;
import '../../common/text_element.dart' show TextElement;
import 'canvas_shapes.dart' show CanvasBarStack, CanvasPie;

abstract class ChartCanvas {
  /// Get [GraphicsFactory] for creating native graphics elements.
  GraphicsFactory get graphicsFactory;

  /// Set the name of the view doing the rendering for debugging purposes,
  /// or null when we believe rendering is complete.
  set drawingView(String viewName);

  /// Renders a sector of a circle, with an optional hole in the center.
  ///
  /// [center] The x, y coordinates of the circle's center.
  /// [radius] The radius of the circle.
  /// [innerRadius] Optional radius of a hole in the center of the circle that
  ///     should not be filled in as part of the sector.
  /// [startAngle] The angle at which the arc starts, measured clockwise from
  ///     the positive x axis and expressed in radians
  /// [endAngle] The angle at which the arc ends, measured clockwise from the
  ///     positive x axis and expressed in radians.
  /// [fill] Fill color for the sector.
  /// [stroke] Stroke color of the arc and radius lines.
  /// [strokeWidthPx] Stroke width of the arc and radius lines.
  void drawCircleSector(Point center, double radius, double innerRadius,
      double startAngle, double endAngle,
      {Color fill, Color stroke, double strokeWidthPx});

  /// Renders a simple line.
  ///
  /// [dashPattern] controls the pattern of dashes and gaps in a line. It is a
  /// list of lengths of alternating dashes and gaps. The rendering is similar
  /// to stroke-dasharray in SVG path elements. An odd number of values in the
  /// pattern will be repeated to derive an even number of values. "1,2,3" is
  /// equivalent to "1,2,3,1,2,3."
  void drawLine(
      {List<Point> points,
      Rectangle<num> clipBounds,
      Color fill,
      Color stroke,
      bool roundEndCaps,
      double strokeWidthPx,
      List<int> dashPattern});

  /// Renders a pie, with an optional hole in the center.
  void drawPie(CanvasPie canvasPie);

  /// Renders a simple point.
  ///
  /// [point] The x, y coordinates of the point.
  ///
  /// [radius] The radius of the point.
  ///
  /// [fill] Fill color for the point.
  ///
  /// [stroke] and [strokeWidthPx] configure the color and thickness of the
  /// outer edge of the point. Both must be provided together for a line to
  /// appear.
  void drawPoint(
      {Point point,
      double radius,
      Color fill,
      Color stroke,
      double strokeWidthPx});

  /// Renders a polygon shape described by a set of points.
  ///
  /// [points] describes the vertices of the polygon. The last point will always
  /// be connected to the first point to close the shape.
  ///
  /// [fill] configures the color inside the polygon. The shape will be
  /// transparent if this is not provided.
  ///
  /// [stroke] and [strokeWidthPx] configure the color and thickness of the
  /// edges of the polygon. Both must be provided together for a line to appear.
  void drawPolygon(
      {List<Point> points,
      Rectangle<num> clipBounds,
      Color fill,
      Color stroke,
      double strokeWidthPx});

  /// Renders a simple rectangle.
  ///
  /// [drawAreaBounds] if specified and if the bounds of the rectangle exceed
  /// the draw area bounds on the top, the first x pixels (decided by the native
  /// platform) exceeding the draw area will apply a gradient to transparent
  /// with anything exceeding the x pixels to be transparent.
  void drawRect(Rectangle<num> bounds,
      {Color fill,
      Color stroke,
      double strokeWidthPx,
      Rectangle<num> drawAreaBounds});

  /// Renders a rounded rectangle.
  void drawRRect(Rectangle<num> bounds,
      {Color fill,
      Color stroke,
      num radius,
      bool roundTopLeft,
      bool roundTopRight,
      bool roundBottomLeft,
      bool roundBottomRight});

  /// Renders a stack of bars, rounding the last bar in the stack.
  ///
  /// The first bar of the stack is expected to be the "base" bar. This would
  /// be the bottom most bar for a vertically rendered bar.
  ///
  /// [drawAreaBounds] if specified and if the bounds of the rectangle exceed
  /// the draw area bounds on the top, the first x pixels (decided by the native
  /// platform) exceeding the draw area will apply a gradient to transparent
  /// with anything exceeding the x pixels to be transparent.
  void drawBarStack(CanvasBarStack canvasBarStack,
      {Rectangle<num> drawAreaBounds});

  void drawText(TextElement textElement, int offsetX, int offsetY,
      {double rotation = 0.0});

  /// Request the canvas to clip to [clipBounds].
  ///
  /// Applies to all operations until [restClipBounds] is called.
  void setClipBounds(Rectangle<int> clipBounds);

  /// Restore
  void resetClipBounds();
}

Color getAnimatedColor(Color previous, Color target, double animationPercent) {
  var r = (((target.r - previous.r) * animationPercent) + previous.r).round();
  var g = (((target.g - previous.g) * animationPercent) + previous.g).round();
  var b = (((target.b - previous.b) * animationPercent) + previous.b).round();
  var a = (((target.a - previous.a) * animationPercent) + previous.a).round();

  return new Color(a: a, r: r, g: g, b: b);
}

/// Defines the pattern for a color fill.
///
/// * [forwardHatch] defines a pattern of white lines angled up and to the right
///   on top of a bar filled with the fill color.
/// * [solid] defines a simple bar filled with the fill color. This is the
///   default pattern for bars.
enum FillPatternType { forwardHatch, solid }
