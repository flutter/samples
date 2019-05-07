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

import 'dart:math' show Point, Rectangle, max, min;

import 'package:meta/meta.dart' show required;

import '../../common/color.dart' show Color;
import '../cartesian/axis/axis.dart'
    show ImmutableAxis, domainAxisKey, measureAxisKey;
import '../common/chart_canvas.dart' show ChartCanvas, FillPatternType;
import '../common/datum_details.dart' show DatumDetails;
import '../common/processed_series.dart' show ImmutableSeries, MutableSeries;
import '../common/series_datum.dart' show SeriesDatum;
import 'bar_target_line_renderer_config.dart' show BarTargetLineRendererConfig;
import 'base_bar_renderer.dart'
    show
        BaseBarRenderer,
        barGroupCountKey,
        barGroupIndexKey,
        previousBarGroupWeightKey,
        barGroupWeightKey;
import 'base_bar_renderer_element.dart'
    show BaseAnimatedBar, BaseBarRendererElement;

/// Renders series data as a series of bar target lines.
///
/// Usually paired with a BarRenderer to display target metrics alongside actual
/// metrics.
class BarTargetLineRenderer<D> extends BaseBarRenderer<D,
    _BarTargetLineRendererElement, _AnimatedBarTargetLine<D>> {
  /// If we are grouped, use this spacing between the bars in a group.
  final _barGroupInnerPadding = 2;

  /// Standard color for all bar target lines.
  final _color = new Color(r: 0, g: 0, b: 0, a: 153);

  factory BarTargetLineRenderer(
      {BarTargetLineRendererConfig<D> config,
      String rendererId = 'barTargetLine'}) {
    config ??= new BarTargetLineRendererConfig<D>();
    return new BarTargetLineRenderer._internal(
        config: config, rendererId: rendererId);
  }

  BarTargetLineRenderer._internal(
      {BarTargetLineRendererConfig<D> config, String rendererId})
      : super(
            config: config,
            rendererId: rendererId,
            layoutPaintOrder: config.layoutPaintOrder);

  @override
  void configureSeries(List<MutableSeries<D>> seriesList) {
    seriesList.forEach((MutableSeries<D> series) {
      series.colorFn ??= (_) => _color;
      series.fillColorFn ??= (_) => _color;
    });
  }

  DatumDetails<D> addPositionToDetailsForSeriesDatum(
      DatumDetails<D> details, SeriesDatum<D> seriesDatum) {
    final series = details.series;

    final domainAxis = series.getAttr(domainAxisKey) as ImmutableAxis<D>;
    final measureAxis = series.getAttr(measureAxisKey) as ImmutableAxis<num>;

    final barGroupIndex = series.getAttr(barGroupIndexKey);
    final previousBarGroupWeight = series.getAttr(previousBarGroupWeightKey);
    final barGroupWeight = series.getAttr(barGroupWeightKey);
    final numBarGroups = series.getAttr(barGroupCountKey);

    final points = _getTargetLinePoints(
        details.domain,
        domainAxis,
        domainAxis.rangeBand.round(),
        details.measure,
        details.measureOffset,
        measureAxis,
        barGroupIndex,
        previousBarGroupWeight,
        barGroupWeight,
        numBarGroups);

    Point<double> chartPosition;

    if (renderingVertically) {
      chartPosition = new Point<double>(
          (points[0].x + (points[1].x - points[0].x) / 2).toDouble(),
          points[0].y.toDouble());
    } else {
      chartPosition = new Point<double>(points[0].x.toDouble(),
          (points[0].y + (points[1].y - points[0].y) / 2).toDouble());
    }

    return new DatumDetails.from(details, chartPosition: chartPosition);
  }

  @override
  _BarTargetLineRendererElement getBaseDetails(dynamic datum, int index) {
    final BarTargetLineRendererConfig<D> localConfig = config;
    return new _BarTargetLineRendererElement()
      ..roundEndCaps = localConfig.roundEndCaps;
  }

  /// Generates an [_AnimatedBarTargetLine] to represent the previous and
  /// current state of one bar target line on the chart.
  @override
  _AnimatedBarTargetLine<D> makeAnimatedBar(
      {String key,
      ImmutableSeries<D> series,
      dynamic datum,
      Color color,
      List<int> dashPattern,
      _BarTargetLineRendererElement details,
      D domainValue,
      ImmutableAxis<D> domainAxis,
      int domainWidth,
      num measureValue,
      num measureOffsetValue,
      ImmutableAxis<num> measureAxis,
      double measureAxisPosition,
      Color fillColor,
      FillPatternType fillPattern,
      int barGroupIndex,
      double previousBarGroupWeight,
      double barGroupWeight,
      int numBarGroups,
      double strokeWidthPx,
      bool measureIsNull,
      bool measureIsNegative}) {
    return new _AnimatedBarTargetLine(
        key: key, datum: datum, series: series, domainValue: domainValue)
      ..setNewTarget(makeBarRendererElement(
          color: color,
          details: details,
          dashPattern: dashPattern,
          domainValue: domainValue,
          domainAxis: domainAxis,
          domainWidth: domainWidth,
          measureValue: measureValue,
          measureOffsetValue: measureOffsetValue,
          measureAxisPosition: measureAxisPosition,
          measureAxis: measureAxis,
          fillColor: fillColor,
          fillPattern: fillPattern,
          strokeWidthPx: strokeWidthPx,
          barGroupIndex: barGroupIndex,
          previousBarGroupWeight: previousBarGroupWeight,
          barGroupWeight: barGroupWeight,
          numBarGroups: numBarGroups,
          measureIsNull: measureIsNull,
          measureIsNegative: measureIsNegative));
  }

  /// Generates a [_BarTargetLineRendererElement] to represent the rendering
  /// data for one bar target line on the chart.
  @override
  _BarTargetLineRendererElement makeBarRendererElement(
      {Color color,
      List<int> dashPattern,
      _BarTargetLineRendererElement details,
      D domainValue,
      ImmutableAxis<D> domainAxis,
      int domainWidth,
      num measureValue,
      num measureOffsetValue,
      ImmutableAxis<num> measureAxis,
      double measureAxisPosition,
      Color fillColor,
      FillPatternType fillPattern,
      double strokeWidthPx,
      int barGroupIndex,
      double previousBarGroupWeight,
      double barGroupWeight,
      int numBarGroups,
      bool measureIsNull,
      bool measureIsNegative}) {
    return new _BarTargetLineRendererElement()
      ..color = color
      ..dashPattern = dashPattern
      ..fillColor = fillColor
      ..fillPattern = fillPattern
      ..measureAxisPosition = measureAxisPosition
      ..roundEndCaps = details.roundEndCaps
      ..strokeWidthPx = strokeWidthPx
      ..measureIsNull = measureIsNull
      ..measureIsNegative = measureIsNegative
      ..points = _getTargetLinePoints(
          domainValue,
          domainAxis,
          domainWidth,
          measureValue,
          measureOffsetValue,
          measureAxis,
          barGroupIndex,
          previousBarGroupWeight,
          barGroupWeight,
          numBarGroups);
  }

  @override
  void paintBar(
    ChartCanvas canvas,
    double animationPercent,
    Iterable<_BarTargetLineRendererElement> barElements,
  ) {
    barElements.forEach((_BarTargetLineRendererElement bar) {
      // TODO: Combine common line attributes into
      // GraphicsFactory.lineStyle or similar.
      canvas.drawLine(
          clipBounds: drawBounds,
          points: bar.points,
          stroke: bar.color,
          roundEndCaps: bar.roundEndCaps,
          strokeWidthPx: bar.strokeWidthPx);
    });
  }

  /// Generates a set of points that describe a bar target line.
  List<Point<int>> _getTargetLinePoints(
      D domainValue,
      ImmutableAxis<D> domainAxis,
      int domainWidth,
      num measureValue,
      num measureOffsetValue,
      ImmutableAxis<num> measureAxis,
      int barGroupIndex,
      double previousBarGroupWeight,
      double barGroupWeight,
      int numBarGroups) {
    // If no weights were passed in, default to equal weight per bar.
    if (barGroupWeight == null) {
      barGroupWeight = 1 / numBarGroups;
      previousBarGroupWeight = barGroupIndex * barGroupWeight;
    }

    final BarTargetLineRendererConfig<D> localConfig = config;

    // Calculate how wide each bar target line should be within the group of
    // bar target lines. If we only have one series, or are stacked, then
    // barWidth should equal domainWidth.
    int spacingLoss = (_barGroupInnerPadding * (numBarGroups - 1));
    int barWidth = ((domainWidth - spacingLoss) * barGroupWeight).round();

    // Get the overdraw boundaries.
    var overDrawOuterPx = localConfig.overDrawOuterPx;
    var overDrawPx = localConfig.overDrawPx;

    int overDrawStartPx = (barGroupIndex == 0) && overDrawOuterPx != null
        ? overDrawOuterPx
        : overDrawPx;

    int overDrawEndPx =
        (barGroupIndex == numBarGroups - 1) && overDrawOuterPx != null
            ? overDrawOuterPx
            : overDrawPx;

    // Flip bar group index for calculating location on the domain axis if RTL.
    final adjustedBarGroupIndex =
        isRtl ? numBarGroups - barGroupIndex - 1 : barGroupIndex;

    // Calculate the start and end of the bar target line, taking into account
    // accumulated padding for grouped bars.
    num previousAverageWidth = adjustedBarGroupIndex > 0
        ? ((domainWidth - spacingLoss) *
                (previousBarGroupWeight / adjustedBarGroupIndex))
            .round()
        : 0;

    int domainStart = (domainAxis.getLocation(domainValue) -
            (domainWidth / 2) +
            (previousAverageWidth + _barGroupInnerPadding) *
                adjustedBarGroupIndex -
            overDrawStartPx)
        .round();

    int domainEnd = domainStart + barWidth + overDrawStartPx + overDrawEndPx;

    measureValue = measureValue != null ? measureValue : 0;

    // Calculate measure locations. Stacked bars should have their
    // offset calculated previously.
    int measureStart =
        measureAxis.getLocation(measureValue + measureOffsetValue).round();

    List<Point<int>> points;
    if (renderingVertically) {
      points = [
        new Point<int>(domainStart, measureStart),
        new Point<int>(domainEnd, measureStart)
      ];
    } else {
      points = [
        new Point<int>(measureStart, domainStart),
        new Point<int>(measureStart, domainEnd)
      ];
    }
    return points;
  }

  @override
  Rectangle<int> getBoundsForBar(_BarTargetLineRendererElement bar) {
    final points = bar.points;
    int top;
    int bottom;
    int left;
    int right;
    points.forEach((Point<int> p) {
      top = top != null ? min(top, p.y) : p.y;
      left = left != null ? min(left, p.x) : p.x;
      bottom = bottom != null ? max(bottom, p.y) : p.y;
      right = right != null ? max(right, p.x) : p.x;
    });
    return new Rectangle<int>(left, top, right - left, bottom - top);
  }
}

class _BarTargetLineRendererElement extends BaseBarRendererElement {
  List<Point<int>> points;
  bool roundEndCaps;

  _BarTargetLineRendererElement();

  _BarTargetLineRendererElement.clone(_BarTargetLineRendererElement other)
      : super.clone(other) {
    points = new List<Point<int>>.from(other.points);
    roundEndCaps = other.roundEndCaps;
  }

  @override
  void updateAnimationPercent(BaseBarRendererElement previous,
      BaseBarRendererElement target, double animationPercent) {
    final _BarTargetLineRendererElement localPrevious = previous;
    final _BarTargetLineRendererElement localTarget = target;

    final previousPoints = localPrevious.points;
    final targetPoints = localTarget.points;

    Point<int> lastPoint;

    int pointIndex;
    for (pointIndex = 0; pointIndex < targetPoints.length; pointIndex++) {
      var targetPoint = targetPoints[pointIndex];

      // If we have more points than the previous line, animate in the new point
      // by starting its measure position at the last known official point.
      Point<int> previousPoint;
      if (previousPoints.length - 1 >= pointIndex) {
        previousPoint = previousPoints[pointIndex];
        lastPoint = previousPoint;
      } else {
        previousPoint = new Point<int>(targetPoint.x, lastPoint.y);
      }

      var x = ((targetPoint.x - previousPoint.x) * animationPercent) +
          previousPoint.x;

      var y = ((targetPoint.y - previousPoint.y) * animationPercent) +
          previousPoint.y;

      if (points.length - 1 >= pointIndex) {
        points[pointIndex] = new Point<int>(x.round(), y.round());
      } else {
        points.add(new Point<int>(x.round(), y.round()));
      }
    }

    // Removing extra points that don't exist anymore.
    if (pointIndex < points.length) {
      points.removeRange(pointIndex, points.length);
    }

    strokeWidthPx = ((localTarget.strokeWidthPx - localPrevious.strokeWidthPx) *
            animationPercent) +
        localPrevious.strokeWidthPx;

    roundEndCaps = localTarget.roundEndCaps;

    super.updateAnimationPercent(previous, target, animationPercent);
  }
}

class _AnimatedBarTargetLine<D>
    extends BaseAnimatedBar<D, _BarTargetLineRendererElement> {
  _AnimatedBarTargetLine(
      {@required String key,
      @required dynamic datum,
      @required ImmutableSeries<D> series,
      @required D domainValue})
      : super(key: key, datum: datum, series: series, domainValue: domainValue);

  @override
  animateElementToMeasureAxisPosition(BaseBarRendererElement target) {
    final _BarTargetLineRendererElement localTarget = target;

    final newPoints = <Point<int>>[];
    for (var index = 0; index < localTarget.points.length; index++) {
      final targetPoint = localTarget.points[index];

      newPoints.add(new Point<int>(
          targetPoint.x, localTarget.measureAxisPosition.round()));
    }
    localTarget.points = newPoints;
  }

  @override
  _BarTargetLineRendererElement clone(_BarTargetLineRendererElement bar) =>
      new _BarTargetLineRendererElement.clone(bar);
}
