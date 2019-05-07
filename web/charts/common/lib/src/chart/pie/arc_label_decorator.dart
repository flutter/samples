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

import 'dart:math' show cos, min, sin, pi, Point, Rectangle;

import 'package:meta/meta.dart' show immutable, required;

import '../../common/color.dart' show Color;
import '../../common/graphics_factory.dart' show GraphicsFactory;
import '../../common/style/style_factory.dart' show StyleFactory;
import '../../common/text_element.dart'
    show MaxWidthStrategy, TextDirection, TextElement;
import '../../common/text_style.dart' show TextStyle;
import '../../data/series.dart' show AccessorFn;
import '../cartesian/axis/spec/axis_spec.dart' show TextStyleSpec;
import '../common/chart_canvas.dart' show ChartCanvas;
import 'arc_renderer.dart' show ArcRendererElementList;
import 'arc_renderer_decorator.dart' show ArcRendererDecorator;

/// Renders labels for arc renderers.
///
/// This decorator performs very basic label collision detection. If the y
/// position of a label positioned outside collides with the previously drawn
/// label (on the same side of the chart), then that label will be skipped.
class ArcLabelDecorator<D> extends ArcRendererDecorator<D> {
  // Default configuration
  static const _defaultLabelPosition = ArcLabelPosition.auto;
  static const _defaultLabelPadding = 5;
  static final _defaultInsideLabelStyle =
      new TextStyleSpec(fontSize: 12, color: Color.white);
  static final _defaultOutsideLabelStyle =
      new TextStyleSpec(fontSize: 12, color: Color.black);
  static final _defaultLeaderLineStyle = new ArcLabelLeaderLineStyleSpec(
      length: 20.0,
      thickness: 1.0,
      color: StyleFactory.style.arcLabelOutsideLeaderLine);
  static const _defaultShowLeaderLines = true;

  /// Configures [TextStyleSpec] for labels placed inside the arcs.
  final TextStyleSpec insideLabelStyleSpec;

  /// Configures [TextStyleSpec] for labels placed outside the arcs.
  final TextStyleSpec outsideLabelStyleSpec;

  /// Configures [ArcLabelLeaderLineStyleSpec] for leader lines for labels
  /// placed outside the arcs.
  final ArcLabelLeaderLineStyleSpec leaderLineStyleSpec;

  /// Configures where to place the label relative to the arcs.
  final ArcLabelPosition labelPosition;

  /// Space before and after the label text.
  final int labelPadding;

  /// Whether or not to draw leader lines for labels placed outside the arcs.
  final bool showLeaderLines;

  /// Render the labels on top of series data.
  final bool renderAbove = true;

  ArcLabelDecorator(
      {TextStyleSpec insideLabelStyleSpec,
      TextStyleSpec outsideLabelStyleSpec,
      ArcLabelLeaderLineStyleSpec leaderLineStyleSpec,
      this.labelPosition = _defaultLabelPosition,
      this.labelPadding = _defaultLabelPadding,
      this.showLeaderLines = _defaultShowLeaderLines,
      Color leaderLineColor})
      : insideLabelStyleSpec = insideLabelStyleSpec ?? _defaultInsideLabelStyle,
        outsideLabelStyleSpec =
            outsideLabelStyleSpec ?? _defaultOutsideLabelStyle,
        leaderLineStyleSpec = leaderLineStyleSpec ?? _defaultLeaderLineStyle;

  @override
  void decorate(ArcRendererElementList<D> arcElements, ChartCanvas canvas,
      GraphicsFactory graphicsFactory,
      {@required Rectangle drawBounds,
      @required double animationPercent,
      bool rtl = false}) {
    // Only decorate the arcs when animation is at 100%.
    if (animationPercent != 1.0) {
      return;
    }

    // Create [TextStyle] from [TextStyleSpec] to be used by all the elements.
    // The [GraphicsFactory] is needed so it can't be created earlier.
    final insideLabelStyle =
        _getTextStyle(graphicsFactory, insideLabelStyleSpec);
    final outsideLabelStyle =
        _getTextStyle(graphicsFactory, outsideLabelStyleSpec);

    // Track the Y position of the previous outside label for collision
    // detection purposes.
    num previousOutsideLabelY;
    bool previousLabelLeftOfChart;

    for (var element in arcElements.arcs) {
      final labelFn = element.series.labelAccessorFn;
      final datumIndex = element.index;
      final label = (labelFn != null) ? labelFn(datumIndex) : null;

      // If there are custom styles, use that instead of the default or the
      // style defined for the entire decorator.
      final datumInsideLabelStyle = _getDatumStyle(
          element.series.insideLabelStyleAccessorFn,
          datumIndex,
          graphicsFactory,
          defaultStyle: insideLabelStyle);
      final datumOutsideLabelStyle = _getDatumStyle(
          element.series.outsideLabelStyleAccessorFn,
          datumIndex,
          graphicsFactory,
          defaultStyle: outsideLabelStyle);

      // Skip calculation and drawing for this element if no label.
      if (label == null || label.isEmpty) {
        continue;
      }

      final arcAngle = element.endAngle - element.startAngle;

      final centerAngle = element.startAngle + (arcAngle / 2);

      final centerRadius = arcElements.innerRadius +
          ((arcElements.radius - arcElements.innerRadius) / 2);

      final innerPoint = new Point<double>(
          arcElements.center.x + arcElements.innerRadius * cos(centerAngle),
          arcElements.center.y + arcElements.innerRadius * sin(centerAngle));

      final outerPoint = new Point<double>(
          arcElements.center.x + arcElements.radius * cos(centerAngle),
          arcElements.center.y + arcElements.radius * sin(centerAngle));

      //final bounds = element.bounds;
      final bounds = new Rectangle<double>.fromPoints(innerPoint, outerPoint);

      // Get space available inside and outside the arc.
      final totalPadding = labelPadding * 2;
      final insideArcWidth = (min(
              (((arcAngle * 180 / pi) / 360) * (2 * pi * centerRadius)).round(),
              (arcElements.radius - arcElements.innerRadius) - labelPadding)
          .round());

      final leaderLineLength = showLeaderLines ? leaderLineStyleSpec.length : 0;

      final outsideArcWidth = ((drawBounds.width / 2) -
              bounds.width -
              totalPadding -
              leaderLineLength)
          .round();

      final labelElement = graphicsFactory.createTextElement(label)
        ..maxWidthStrategy = MaxWidthStrategy.ellipsize;

      var calculatedLabelPosition = labelPosition;
      if (calculatedLabelPosition == ArcLabelPosition.auto) {
        // For auto, first try to fit the text inside the arc.
        labelElement.textStyle = datumInsideLabelStyle;

        // A label fits if the space inside the arc is >= outside arc or if the
        // length of the text fits and the space. This is because if the arc has
        // more space than the outside, it makes more sense to place the label
        // inside the arc, even if the entire label does not fit.
        calculatedLabelPosition = (insideArcWidth >= outsideArcWidth ||
                labelElement.measurement.horizontalSliceWidth < insideArcWidth)
            ? ArcLabelPosition.inside
            : ArcLabelPosition.outside;
      }

      // Set the max width and text style.
      if (calculatedLabelPosition == ArcLabelPosition.inside) {
        labelElement.textStyle = datumInsideLabelStyle;
        labelElement.maxWidth = insideArcWidth;
      } else {
        // calculatedLabelPosition == LabelPosition.outside
        labelElement.textStyle = datumOutsideLabelStyle;
        labelElement.maxWidth = outsideArcWidth;
      }

      // Only calculate and draw label if there's actually space for the label.
      if (labelElement.maxWidth > 0) {
        // Calculate the start position of label based on [labelAnchor].
        if (calculatedLabelPosition == ArcLabelPosition.inside) {
          _drawInsideLabel(canvas, arcElements, labelElement, centerAngle);
        } else {
          final l = _drawOutsideLabel(
              canvas,
              drawBounds,
              arcElements,
              labelElement,
              centerAngle,
              previousOutsideLabelY,
              previousLabelLeftOfChart);

          // List destructuring..
          if (l != null) {
            previousLabelLeftOfChart = l[0];
            previousOutsideLabelY = l[1];
          }
        }
      }
    }
  }

  /// Helper function that converts [TextStyleSpec] to [TextStyle].
  TextStyle _getTextStyle(
      GraphicsFactory graphicsFactory, TextStyleSpec labelSpec) {
    return graphicsFactory.createTextPaint()
      ..color = labelSpec?.color ?? Color.black
      ..fontFamily = labelSpec?.fontFamily
      ..fontSize = labelSpec?.fontSize ?? 12;
  }

  /// Helper function to get datum specific style
  TextStyle _getDatumStyle(AccessorFn<TextStyleSpec> labelFn, int datumIndex,
      GraphicsFactory graphicsFactory,
      {TextStyle defaultStyle}) {
    final styleSpec = (labelFn != null) ? labelFn(datumIndex) : null;
    return (styleSpec != null)
        ? _getTextStyle(graphicsFactory, styleSpec)
        : defaultStyle;
  }

  /// Draws a label inside of an arc.
  void _drawInsideLabel(
      ChartCanvas canvas,
      ArcRendererElementList<D> arcElements,
      TextElement labelElement,
      double centerAngle) {
    // Center the label inside the arc.
    final labelRadius = arcElements.innerRadius +
        (arcElements.radius - arcElements.innerRadius) / 2;

    final labelX =
        (arcElements.center.x + labelRadius * cos(centerAngle)).round();

    final labelY = (arcElements.center.y +
            labelRadius * sin(centerAngle) -
            insideLabelStyleSpec.fontSize / 2)
        .round();

    labelElement.textDirection = TextDirection.center;

    canvas.drawText(labelElement, labelX, labelY);
  }

  /// Draws a label outside of an arc.
  List _drawOutsideLabel(
      ChartCanvas canvas,
      Rectangle drawBounds,
      ArcRendererElementList<D> arcElements,
      TextElement labelElement,
      double centerAngle,
      num previousOutsideLabelY,
      bool previousLabelLeftOfChart) {
    final labelRadius = arcElements.radius + leaderLineStyleSpec.length / 2;

    final labelPoint = new Point<double>(
        arcElements.center.x + labelRadius * cos(centerAngle),
        arcElements.center.y + labelRadius * sin(centerAngle));

    // Use the label's chart quandrant to determine whether it's rendered to the
    // right or left.
    final centerAbs = centerAngle.abs() % (2 * pi);
    final labelLeftOfChart = pi / 2 < centerAbs && centerAbs < pi * 3 / 2;

    // Shift the label horizontally away from the center of the chart.
    var labelX = labelLeftOfChart
        ? (labelPoint.x - labelPadding).round()
        : (labelPoint.x + labelPadding).round();

    // Shift the label up by the size of the font.
    final labelY = (labelPoint.y - outsideLabelStyleSpec.fontSize / 2).round();

    // Outside labels should flow away from the center of the chart
    labelElement.textDirection =
        labelLeftOfChart ? TextDirection.rtl : TextDirection.ltr;

    // Skip this label if it collides with the previously drawn label.
    if (_detectOutsideLabelCollision(labelY, labelLeftOfChart,
        previousOutsideLabelY, previousLabelLeftOfChart)) {
      return null;
    }

    if (showLeaderLines) {
      final tailX = _drawLeaderLine(canvas, labelLeftOfChart, labelPoint,
          arcElements.radius, arcElements.center, centerAngle);

      // Shift the label horizontally by the length of the leader line.
      labelX = (labelX + tailX).round();

      labelElement.maxWidth = (labelElement.maxWidth - tailX).round();
    }

    canvas.drawText(labelElement, labelX, labelY);

    // Return a structured list of values.
    return [labelLeftOfChart, labelY];
  }

  /// Detects whether the current outside label collides with the previous label.
  bool _detectOutsideLabelCollision(num labelY, bool labelLeftOfChart,
      num previousOutsideLabelY, bool previousLabelLeftOfChart) {
    bool collides = false;

    // Given that labels are vertically centered, we can assume they will
    // collide if the current label's Y coordinate +/- the font size
    // crosses past the Y coordinate of the previous label drawn on the
    // same side of the chart.
    if (previousOutsideLabelY != null &&
        labelLeftOfChart == previousLabelLeftOfChart) {
      if (labelY > previousOutsideLabelY) {
        if (labelY - outsideLabelStyleSpec.fontSize <= previousOutsideLabelY) {
          collides = true;
        }
      } else {
        if (labelY + outsideLabelStyleSpec.fontSize >= previousOutsideLabelY) {
          collides = true;
        }
      }
    }

    return collides;
  }

  /// Draws a leader line for the current arc.
  double _drawLeaderLine(
      ChartCanvas canvas,
      bool labelLeftOfChart,
      Point labelPoint,
      double radius,
      Point<double> arcCenterPoint,
      double centerAngle) {
    final tailX = (labelLeftOfChart ? -1 : 1) * leaderLineStyleSpec.length;

    final leaderLineTailPoint =
        new Point<double>(labelPoint.x + tailX, labelPoint.y);

    final centerRadius = radius - leaderLineStyleSpec.length / 2;
    final leaderLineStartPoint = new Point<double>(
        arcCenterPoint.x + centerRadius * cos(centerAngle),
        arcCenterPoint.y + centerRadius * sin(centerAngle));

    canvas.drawLine(
        points: [
          leaderLineStartPoint,
          labelPoint,
          leaderLineTailPoint,
        ],
        stroke: leaderLineStyleSpec.color,
        strokeWidthPx: leaderLineStyleSpec.thickness);

    return tailX;
  }
}

/// Configures where to place the label relative to the arcs.
enum ArcLabelPosition {
  /// Automatically try to place the label inside the arc first and place it on
  /// the outside of the space available outside the arc is greater than space
  /// available inside the arc.
  auto,

  /// Always place label on the outside.
  outside,

  /// Always place label on the inside.
  inside,
}

/// Style configuration for leader lines.
@immutable
class ArcLabelLeaderLineStyleSpec {
  final Color color;
  final double length;
  final double thickness;

  ArcLabelLeaderLineStyleSpec({this.color, this.length, this.thickness});

  @override
  bool operator ==(Object other) {
    return other is ArcLabelLeaderLineStyleSpec &&
        color == other.color &&
        thickness == other.thickness &&
        length == other.length;
  }

  @override
  int get hashCode {
    int hashcode = color?.hashCode ?? 0;
    hashcode = (hashcode * 37) + thickness?.hashCode ?? 0;
    hashcode = (hashcode * 37) + length?.hashCode ?? 0;
    return hashcode;
  }
}
