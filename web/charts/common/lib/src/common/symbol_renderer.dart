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

import 'dart:math' show Rectangle, Point, min;

import 'package:meta/meta.dart' show protected;

import '../chart/common/chart_canvas.dart' show ChartCanvas;
import 'color.dart' show Color;
import 'style/style_factory.dart' show StyleFactory;

/// Strategy for rendering a symbol.
abstract class BaseSymbolRenderer {
  bool shouldRepaint(covariant BaseSymbolRenderer oldRenderer);
}

/// Strategy for rendering a symbol bounded within a box.
abstract class SymbolRenderer extends BaseSymbolRenderer {
  /// Whether the symbol should be rendered as a solid shape, or a hollow shape.
  ///
  /// If this is true, then fillColor and strokeColor will be used to fill in
  /// the shape, and draw a border, respectively. The stroke (border) will only
  /// be visible if a non-zero strokeWidthPx is configured.
  ///
  /// If this is false, then the shape will be filled in with a white color
  /// (overriding fillColor). strokeWidthPx will default to 2 if none was
  /// configured.
  final bool isSolid;

  SymbolRenderer({this.isSolid});

  void paint(ChartCanvas canvas, Rectangle<num> bounds,
      {List<int> dashPattern,
      Color fillColor,
      Color strokeColor,
      double strokeWidthPx});

  @protected
  double getSolidStrokeWidthPx(double strokeWidthPx) {
    return isSolid ? strokeWidthPx : strokeWidthPx ?? 2.0;
  }

  @protected
  Color getSolidFillColor(Color fillColor) {
    return isSolid ? fillColor : StyleFactory.style.white;
  }

  @override
  bool operator ==(Object other) {
    return other is SymbolRenderer && other.isSolid == isSolid;
  }

  @override
  int get hashCode => isSolid.hashCode;
}

/// Strategy for rendering a symbol centered around a point.
///
/// An optional second point can describe an extended symbol.
abstract class PointSymbolRenderer extends BaseSymbolRenderer {
  void paint(ChartCanvas canvas, Point<double> p1, double radius,
      {Point<double> p2, Color fillColor, strokeColor});
}

/// Rounded rectangular symbol with corners having [radius].
class RoundedRectSymbolRenderer extends SymbolRenderer {
  final double radius;

  RoundedRectSymbolRenderer({bool isSolid = true, double radius})
      : radius = radius ?? 1.0,
        super(isSolid: isSolid);

  @override
  void paint(ChartCanvas canvas, Rectangle<num> bounds,
      {List<int> dashPattern,
      Color fillColor,
      Color strokeColor,
      double strokeWidthPx}) {
    canvas.drawRRect(bounds,
        fill: getSolidFillColor(fillColor),
        stroke: strokeColor,
        radius: radius,
        roundTopLeft: true,
        roundTopRight: true,
        roundBottomRight: true,
        roundBottomLeft: true);
  }

  @override
  bool shouldRepaint(RoundedRectSymbolRenderer oldRenderer) {
    return this != oldRenderer;
  }

  @override
  bool operator ==(Object other) {
    return other is RoundedRectSymbolRenderer &&
        other.radius == radius &&
        super == (other);
  }

  @override
  int get hashCode {
    int hashcode = super.hashCode;
    hashcode = (hashcode * 37) + radius.hashCode;
    return hashcode;
  }
}

/// Line symbol renderer.
class LineSymbolRenderer extends SymbolRenderer {
  static const roundEndCapsPixels = 2;
  static const minLengthToRoundCaps = (roundEndCapsPixels * 2) + 1;
  static const strokeWidthForRoundEndCaps = 4.0;
  static const strokeWidthForNonRoundedEndCaps = 2.0;

  /// Thickness of the line stroke.
  final double strokeWidth;

  /// Dash pattern for the line.
  final List<int> _dashPattern;

  LineSymbolRenderer(
      {List<int> dashPattern, bool isSolid = true, double strokeWidth})
      : strokeWidth = strokeWidth ?? strokeWidthForRoundEndCaps,
        _dashPattern = dashPattern,
        super(isSolid: isSolid);

  @override
  void paint(ChartCanvas canvas, Rectangle<num> bounds,
      {List<int> dashPattern,
      Color fillColor,
      Color strokeColor,
      double strokeWidthPx}) {
    final centerHeight = (bounds.bottom - bounds.top) / 2;

    // If we have a dash pattern, do not round the end caps, and set
    // strokeWidthPx to a smaller value. Using round end caps makes smaller
    // patterns blurry.
    final localDashPattern = dashPattern ?? _dashPattern;
    final roundEndCaps = localDashPattern == null;

    // If we have a dash pattern, the normal stroke width makes them look
    // strangely tall.
    final localStrokeWidthPx = localDashPattern == null
        ? getSolidStrokeWidthPx(strokeWidthPx ?? strokeWidth)
        : strokeWidthForNonRoundedEndCaps;

    // Adjust the length so the total width includes the rounded pixels.
    // Otherwise the cap is drawn past the bounds and appears to be cut off.
    // If bounds is not long enough to accommodate the line, do not adjust.
    var left = bounds.left;
    var right = bounds.right;

    if (roundEndCaps && bounds.width >= minLengthToRoundCaps) {
      left += roundEndCapsPixels;
      right -= roundEndCapsPixels;
    }

    // TODO: Pass in strokeWidth, roundEndCaps, and dashPattern from
    // line renderer config.
    canvas.drawLine(
      points: [new Point(left, centerHeight), new Point(right, centerHeight)],
      dashPattern: localDashPattern,
      fill: getSolidFillColor(fillColor),
      roundEndCaps: roundEndCaps,
      stroke: strokeColor,
      strokeWidthPx: localStrokeWidthPx,
    );
  }

  @override
  bool shouldRepaint(LineSymbolRenderer oldRenderer) {
    return this != oldRenderer;
  }

  @override
  bool operator ==(Object other) {
    return other is LineSymbolRenderer &&
        other.strokeWidth == strokeWidth &&
        super == (other);
  }

  @override
  int get hashCode {
    int hashcode = super.hashCode;
    hashcode = (hashcode * 37) + strokeWidth.hashCode;
    return hashcode;
  }
}

/// Circle symbol renderer.
class CircleSymbolRenderer extends SymbolRenderer {
  CircleSymbolRenderer({bool isSolid = true}) : super(isSolid: isSolid);

  @override
  void paint(ChartCanvas canvas, Rectangle<num> bounds,
      {List<int> dashPattern,
      Color fillColor,
      Color strokeColor,
      double strokeWidthPx}) {
    final center = new Point(
      bounds.left + (bounds.width / 2),
      bounds.top + (bounds.height / 2),
    );
    final radius = min(bounds.width, bounds.height) / 2;
    canvas.drawPoint(
        point: center,
        radius: radius,
        fill: getSolidFillColor(fillColor),
        stroke: strokeColor,
        strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx));
  }

  @override
  bool shouldRepaint(CircleSymbolRenderer oldRenderer) {
    return this != oldRenderer;
  }

  @override
  bool operator ==(Object other) =>
      other is CircleSymbolRenderer && super == (other);

  @override
  int get hashCode {
    int hashcode = super.hashCode;
    hashcode = (hashcode * 37) + runtimeType.hashCode;
    return hashcode;
  }
}

/// Rectangle symbol renderer.
class RectSymbolRenderer extends SymbolRenderer {
  RectSymbolRenderer({bool isSolid = true}) : super(isSolid: isSolid);

  @override
  void paint(ChartCanvas canvas, Rectangle<num> bounds,
      {List<int> dashPattern,
      Color fillColor,
      Color strokeColor,
      double strokeWidthPx}) {
    canvas.drawRect(bounds,
        fill: getSolidFillColor(fillColor),
        stroke: strokeColor,
        strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx));
  }

  @override
  bool shouldRepaint(RectSymbolRenderer oldRenderer) {
    return this != oldRenderer;
  }

  @override
  bool operator ==(Object other) =>
      other is RectSymbolRenderer && super == (other);

  @override
  int get hashCode {
    int hashcode = super.hashCode;
    hashcode = (hashcode * 37) + runtimeType.hashCode;
    return hashcode;
  }
}

/// Draws a cylindrical shape connecting two points.
class CylinderSymbolRenderer extends PointSymbolRenderer {
  CylinderSymbolRenderer();

  @override
  void paint(ChartCanvas canvas, Point<double> p1, double radius,
      {Point<double> p2, Color fillColor, strokeColor, double strokeWidthPx}) {
    if (p1 == null) {
      throw new ArgumentError('Invalid point p1 "${p1}"');
    }

    if (p2 == null) {
      throw new ArgumentError('Invalid point p2 "${p2}"');
    }

    final adjustedP1 = new Point<double>(p1.x, p1.y);
    final adjustedP2 = new Point<double>(p2.x, p2.y);

    canvas.drawLine(
        points: [adjustedP1, adjustedP2],
        stroke: strokeColor,
        roundEndCaps: true,
        strokeWidthPx: radius * 2);
  }

  @override
  bool shouldRepaint(CylinderSymbolRenderer oldRenderer) {
    return this != oldRenderer;
  }

  @override
  bool operator ==(Object other) => other is CylinderSymbolRenderer;

  @override
  int get hashCode => runtimeType.hashCode;
}

/// Draws a rectangular shape connecting two points.
class RectangleRangeSymbolRenderer extends PointSymbolRenderer {
  RectangleRangeSymbolRenderer();

  @override
  void paint(ChartCanvas canvas, Point<double> p1, double radius,
      {Point<double> p2, Color fillColor, strokeColor, double strokeWidthPx}) {
    if (p1 == null) {
      throw new ArgumentError('Invalid point p1 "${p1}"');
    }

    if (p2 == null) {
      throw new ArgumentError('Invalid point p2 "${p2}"');
    }

    final adjustedP1 = new Point<double>(p1.x, p1.y);
    final adjustedP2 = new Point<double>(p2.x, p2.y);

    canvas.drawLine(
        points: [adjustedP1, adjustedP2],
        stroke: strokeColor,
        roundEndCaps: false,
        strokeWidthPx: radius * 2);
  }

  @override
  bool shouldRepaint(RectangleRangeSymbolRenderer oldRenderer) {
    return this != oldRenderer;
  }

  @override
  bool operator ==(Object other) => other is RectangleRangeSymbolRenderer;

  @override
  int get hashCode => runtimeType.hashCode;
}
