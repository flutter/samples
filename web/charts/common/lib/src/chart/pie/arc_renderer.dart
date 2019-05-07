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

import 'dart:collection' show LinkedHashMap;
import 'dart:math' show atan2, cos, max, sin, pi, Point, Rectangle;

import 'package:meta/meta.dart' show required;

import '../../common/color.dart' show Color;
import '../../common/style/style_factory.dart' show StyleFactory;
import '../../data/series.dart' show AttributeKey;
import '../common/base_chart.dart' show BaseChart;
import '../common/canvas_shapes.dart' show CanvasPieSlice, CanvasPie;
import '../common/chart_canvas.dart' show ChartCanvas, getAnimatedColor;
import '../common/datum_details.dart' show DatumDetails;
import '../common/processed_series.dart' show ImmutableSeries, MutableSeries;
import '../common/series_datum.dart' show SeriesDatum;
import '../common/series_renderer.dart' show BaseSeriesRenderer;
import 'arc_renderer_config.dart' show ArcRendererConfig;
import 'arc_renderer_decorator.dart' show ArcRendererDecorator;

const arcElementsKey =
    const AttributeKey<List<ArcRendererElement>>('ArcRenderer.elements');

class ArcRenderer<D> extends BaseSeriesRenderer<D> {
  // Constant used in the calculation of [centerContentBounds], calculated once
  // to save runtime cost.
  static final _cosPIOver4 = cos(pi / 4);

  final ArcRendererConfig<D> config;

  final List<ArcRendererDecorator> arcRendererDecorators;

  BaseChart<D> _chart;

  /// Store a map of series drawn on the chart, mapped by series name.
  ///
  /// [LinkedHashMap] is used to render the series on the canvas in the same
  /// order as the data was given to the chart.
  final _seriesArcMap = new LinkedHashMap<String, _AnimatedArcList<D>>();

  // Store a list of arcs that exist in the series data.
  //
  // This list will be used to remove any [_AnimatedArc] that were rendered in
  // previous draw cycles, but no longer have a corresponding datum in the new
  // data.
  final _currentKeys = <String>[];

  factory ArcRenderer({String rendererId, ArcRendererConfig config}) {
    return new ArcRenderer._internal(
        rendererId: rendererId ?? 'line',
        config: config ?? new ArcRendererConfig());
  }

  ArcRenderer._internal({String rendererId, this.config})
      : arcRendererDecorators = config?.arcRendererDecorators ?? [],
        super(
            rendererId: rendererId,
            layoutPaintOrder: config.layoutPaintOrder,
            symbolRenderer: config.symbolRenderer);

  @override
  void onAttach(BaseChart<D> chart) {
    super.onAttach(chart);
    _chart = chart;
  }

  @override
  void configureSeries(List<MutableSeries<D>> seriesList) {
    assignMissingColors(seriesList, emptyCategoryUsesSinglePalette: false);
  }

  @override
  void preprocessSeries(List<MutableSeries<D>> seriesList) {
    seriesList.forEach((MutableSeries<D> series) {
      var elements = <ArcRendererElement<D>>[];

      var domainFn = series.domainFn;
      var measureFn = series.measureFn;

      final seriesMeasureTotal = series.seriesMeasureTotal;

      // On the canvas, arc measurements are defined as angles from the positive
      // x axis. Start our first slice at the positive y axis instead.
      var startAngle = config.startAngle;
      var arcLength = config.arcLength;

      var totalAngle = 0.0;

      var measures = [];

      if (series.data.isEmpty) {
        // If the series has no data, generate an empty arc element that
        // occupies the entire chart.
        //
        // Use a tiny epsilon difference to ensure that the canvas renders a
        // "full" circle, in the correct direction.
        var angle = arcLength == 2 * pi ? arcLength * .999999 : arcLength;
        var endAngle = startAngle + angle;

        var details = new ArcRendererElement<D>();
        details.startAngle = startAngle;
        details.endAngle = endAngle;
        details.index = 0;
        details.key = 0;
        details.series = series;

        elements.add(details);
      } else {
        // Otherwise, generate an arc element per datum.
        for (var arcIndex = 0; arcIndex < series.data.length; arcIndex++) {
          var domain = domainFn(arcIndex);
          var measure = measureFn(arcIndex);
          measures.add(measure);
          if (measure == null) {
            continue;
          }

          final percentOfSeries = (measure / seriesMeasureTotal);
          var angle = arcLength * percentOfSeries;
          var endAngle = startAngle + angle;

          var details = new ArcRendererElement<D>();
          details.startAngle = startAngle;
          details.endAngle = endAngle;
          details.index = arcIndex;
          details.key = arcIndex;
          details.domain = domain;
          details.series = series;

          elements.add(details);

          // Update the starting angle for the next datum in the series.
          startAngle = endAngle;

          totalAngle = totalAngle + angle;
        }
      }

      series.setAttr(arcElementsKey, elements);
    });
  }

  void update(List<ImmutableSeries<D>> seriesList, bool isAnimatingThisDraw) {
    _currentKeys.clear();

    final bounds = _chart.drawAreaBounds;

    final center = new Point<double>(
        (bounds.left + bounds.width / 2).toDouble(),
        (bounds.top + bounds.height / 2).toDouble());

    final radius = bounds.height < bounds.width
        ? (bounds.height / 2).toDouble()
        : (bounds.width / 2).toDouble();

    if (config.arcRatio != null) {
      if (0 < config.arcRatio || config.arcRatio > 1) {
        throw new ArgumentError('arcRatio must be between 0 and 1');
      }
    }

    final innerRadius = _calculateInnerRadius(radius);

    seriesList.forEach((ImmutableSeries<D> series) {
      var colorFn = series.colorFn;
      var arcListKey = series.id;

      var arcList =
          _seriesArcMap.putIfAbsent(arcListKey, () => new _AnimatedArcList());

      var elementsList = series.getAttr(arcElementsKey);

      if (series.data.isEmpty) {
        // If the series is empty, set up the "no data" arc element. This should
        // occupy the entire chart, and use the chart style's no data color.
        final details = elementsList[0];

        var arcKey = '__no_data__';

        // If we already have an AnimatingArc for that index, use it.
        var animatingArc = arcList.arcs.firstWhere(
            (_AnimatedArc arc) => arc.key == arcKey,
            orElse: () => null);

        arcList.center = center;
        arcList.radius = radius;
        arcList.innerRadius = innerRadius;
        arcList.series = series;
        arcList.stroke = config.noDataColor;
        arcList.strokeWidthPx = 0.0;

        // If we don't have any existing arc element, create a new arc. Unlike
        // real arcs, we should not animate the no data state in from 0.
        if (animatingArc == null) {
          animatingArc = new _AnimatedArc<D>(arcKey, null, null);
          arcList.arcs.add(animatingArc);
        } else {
          animatingArc.datum = null;
          animatingArc.domain = null;
        }

        // Update the set of arcs that still exist in the series data.
        _currentKeys.add(arcKey);

        // Get the arcElement we are going to setup.
        // Optimization to prevent allocation in non-animating case.
        final arcElement = new ArcRendererElement<D>()
          ..color = config.noDataColor
          ..startAngle = details.startAngle
          ..endAngle = details.endAngle
          ..series = series;

        animatingArc.setNewTarget(arcElement);
      } else {
        var previousEndAngle = config.startAngle;

        for (var arcIndex = 0; arcIndex < series.data.length; arcIndex++) {
          final datum = series.data[arcIndex];
          final details = elementsList[arcIndex];
          D domainValue = details.domain;

          var arcKey = domainValue.toString();

          // If we already have an AnimatingArc for that index, use it.
          var animatingArc = arcList.arcs.firstWhere(
              (_AnimatedArc arc) => arc.key == arcKey,
              orElse: () => null);

          arcList.center = center;
          arcList.radius = radius;
          arcList.innerRadius = innerRadius;
          arcList.series = series;
          arcList.stroke = config.stroke;
          arcList.strokeWidthPx = config.strokeWidthPx;

          // If we don't have any existing arc element, create a new arc and
          // have it animate in from the position of the previous arc's end
          // angle. If there were no previous arcs, then animate everything in
          // from 0.
          if (animatingArc == null) {
            animatingArc = new _AnimatedArc<D>(arcKey, datum, domainValue)
              ..setNewTarget(new ArcRendererElement<D>()
                ..color = colorFn(arcIndex)
                ..startAngle = previousEndAngle
                ..endAngle = previousEndAngle
                ..index = arcIndex
                ..series = series);

            arcList.arcs.add(animatingArc);
          } else {
            animatingArc.datum = datum;

            previousEndAngle = animatingArc.previousArcEndAngle ?? 0.0;
          }

          animatingArc.domain = domainValue;

          // Update the set of arcs that still exist in the series data.
          _currentKeys.add(arcKey);

          // Get the arcElement we are going to setup.
          // Optimization to prevent allocation in non-animating case.
          final arcElement = new ArcRendererElement<D>()
            ..color = colorFn(arcIndex)
            ..startAngle = details.startAngle
            ..endAngle = details.endAngle
            ..index = arcIndex
            ..series = series;

          animatingArc.setNewTarget(arcElement);
        }
      }
    });

    // Animate out arcs that don't exist anymore.
    _seriesArcMap.forEach((String key, _AnimatedArcList<D> arcList) {
      for (var arcIndex = 0; arcIndex < arcList.arcs.length; arcIndex++) {
        final arc = arcList.arcs[arcIndex];
        final arcStartAngle = arc.previousArcStartAngle;

        if (_currentKeys.contains(arc.key) != true) {
          // Default to animating out to the top of the chart, clockwise, if
          // there are no arcs that start past this arc.
          var targetArcAngle = (2 * pi) + config.startAngle;

          // Find the nearest start angle of the next arc that still exists in
          // the data.
          for (_AnimatedArc nextArc
              in arcList.arcs.where((arc) => _currentKeys.contains(arc.key))) {
            final nextArcStartAngle = nextArc.newTargetArcStartAngle;

            if (arcStartAngle < nextArcStartAngle &&
                nextArcStartAngle < targetArcAngle) {
              targetArcAngle = nextArcStartAngle;
            }
          }

          arc.animateOut(targetArcAngle);
        }
      }
    });
  }

  void paint(ChartCanvas canvas, double animationPercent) {
    // Clean up the arcs that no longer exist.
    if (animationPercent == 1.0) {
      final keysToRemove = <String>[];

      _seriesArcMap.forEach((String key, _AnimatedArcList<D> arcList) {
        arcList.arcs.removeWhere((_AnimatedArc<D> arc) => arc.animatingOut);

        if (arcList.arcs.isEmpty) {
          keysToRemove.add(key);
        }
      });

      keysToRemove.forEach(_seriesArcMap.remove);
    }

    _seriesArcMap.forEach((String key, _AnimatedArcList<D> arcList) {
      final circleSectors = <CanvasPieSlice>[];
      final arcElementsList = new ArcRendererElementList<D>()
        ..arcs = <ArcRendererElement<D>>[]
        ..center = arcList.center
        ..innerRadius = arcList.innerRadius
        ..radius = arcList.radius
        ..startAngle = config.startAngle
        ..stroke = arcList.stroke
        ..strokeWidthPx = arcList.strokeWidthPx;

      arcList.arcs
          .map<ArcRendererElement<D>>((_AnimatedArc<D> animatingArc) =>
              animatingArc.getCurrentArc(animationPercent))
          .forEach((ArcRendererElement arc) {
        circleSectors.add(
            new CanvasPieSlice(arc.startAngle, arc.endAngle, fill: arc.color));

        arcElementsList.arcs.add(arc);
      });

      // Decorate the arcs with decorators that should appear below the main
      // series data.
      arcRendererDecorators
          .where((ArcRendererDecorator decorator) => !decorator.renderAbove)
          .forEach((ArcRendererDecorator decorator) {
        decorator.decorate(arcElementsList, canvas, graphicsFactory,
            drawBounds: drawBounds,
            animationPercent: animationPercent,
            rtl: isRtl);
      });

      // Draw the arcs.
      canvas.drawPie(new CanvasPie(
          circleSectors, arcList.center, arcList.radius, arcList.innerRadius,
          stroke: arcList.stroke, strokeWidthPx: arcList.strokeWidthPx));

      // Decorate the arcs with decorators that should appear above the main
      // series data. This is the typical place for labels.
      arcRendererDecorators
          .where((ArcRendererDecorator decorator) => decorator.renderAbove)
          .forEach((ArcRendererDecorator decorator) {
        decorator.decorate(arcElementsList, canvas, graphicsFactory,
            drawBounds: drawBounds,
            animationPercent: animationPercent,
            rtl: isRtl);
      });
    });
  }

  bool get isRtl => _chart?.context?.isRtl ?? false;

  /// Gets a bounding box for the largest center content card that can fit
  /// inside the hole of the chart.
  ///
  /// If the inner radius of the arcs is smaller than
  /// [ArcRendererConfig.minHoleWidthForCenterContent], this will return a
  /// rectangle of 0 width and height to indicate that no card can fit inside
  /// the chart.
  Rectangle<int> get centerContentBounds {
    // Grab the first arcList from the animated set.
    var arcList = _seriesArcMap.isNotEmpty ? _seriesArcMap.values.first : null;

    // No card should be visible if the hole in the chart is too small.
    if (arcList == null ||
        arcList.innerRadius < config.minHoleWidthForCenterContent) {
      // Return default bounds of 0 size.
      final bounds = _chart.drawAreaBounds;
      return new Rectangle<int>((bounds.left + bounds.width / 2).round(),
          (bounds.top + bounds.height / 2).round(), 0, 0);
    }

    // Fix the height and width of the center content div to the maximum box
    // size that will fit within the pie's inner radius.
    final width = (_cosPIOver4 * arcList.innerRadius).floor();

    return new Rectangle<int>((arcList.center.x - width).round(),
        (arcList.center.y - width).round(), width * 2, width * 2);
  }

  /// Returns an expanded [DatumDetails] object that contains location data.
  DatumDetails<D> getExpandedDatumDetails(SeriesDatum<D> seriesDatum) {
    final series = seriesDatum.series;
    final datum = seriesDatum.datum;
    final datumIndex = seriesDatum.index;

    final domain = series.domainFn(datumIndex);
    final measure = series.measureFn(datumIndex);
    final color = series.colorFn(datumIndex);

    final chartPosition = _getChartPosition(series.id, domain.toString());

    return new DatumDetails(
        datum: datum,
        domain: domain,
        measure: measure,
        series: series,
        color: color,
        chartPosition: chartPosition);
  }

  /// Returns the chart position for a given datum by series ID and domain
  /// value.
  ///
  /// [seriesId] the series ID.
  ///
  /// [key] the key in the current animated arc list.
  Point<double> _getChartPosition(String seriesId, String key) {
    Point<double> chartPosition;

    final arcList = _seriesArcMap[seriesId];

    if (arcList == null) {
      return chartPosition;
    }

    for (_AnimatedArc<D> arc in arcList.arcs) {
      if (arc.key == key) {
        // Now that we have found the matching arc, calculate the center point
        // halfway between the inner and outer radius, and the start and end
        // angles.
        final centerAngle = arc.currentArcStartAngle +
            (arc.currentArcEndAngle - arc.currentArcStartAngle) / 2;

        final centerPointRadius =
            arcList.innerRadius + (arcList.radius - arcList.innerRadius) / 2;

        chartPosition = new Point<double>(
            centerPointRadius * cos(centerAngle) + arcList.center.x,
            centerPointRadius * sin(centerAngle) + arcList.center.y);

        break;
      }
    }

    return chartPosition;
  }

  @override
  List<DatumDetails<D>> getNearestDatumDetailPerSeries(
      Point<double> chartPoint, bool byDomain, Rectangle<int> boundsOverride) {
    final nearest = <DatumDetails<D>>[];

    // Was it even in the component bounds?
    if (!isPointWithinBounds(chartPoint, boundsOverride)) {
      return nearest;
    }

    _seriesArcMap.forEach((String key, _AnimatedArcList<D> arcList) {
      if (arcList.series.overlaySeries) {
        return;
      }

      final center = arcList.center;
      final innerRadius = arcList.innerRadius;
      final radius = arcList.radius;

      final distance = center.distanceTo(chartPoint);

      // Calculate the angle of [chartPoint] from the center of the arcs.
      var chartPointAngle =
          atan2(chartPoint.y - center.y, chartPoint.x - center.x);

      // atan2 returns NaN if we are at the exact center of the circle.
      if (chartPointAngle.isNaN) {
        chartPointAngle = config.startAngle;
      }

      // atan2 returns an angle in the range -PI..PI, from the positive x-axis.
      // Our arcs start at the positive y-axis, in the range -PI/2..3PI/2. Thus,
      // if angle is in the -x, +y section of the circle, we need to adjust the
      // angle into our range.
      if (chartPointAngle < config.startAngle && chartPointAngle < 0) {
        chartPointAngle = 2 * pi + chartPointAngle;
      }

      arcList.arcs.forEach((_AnimatedArc<D> arc) {
        if (innerRadius <= distance && distance <= radius) {
          if (arc.currentArcStartAngle <= chartPointAngle &&
              chartPointAngle <= arc.currentArcEndAngle) {
            nearest.add(new DatumDetails<D>(
              series: arcList.series,
              datum: arc.datum,
              domain: arc.domain,
              domainDistance: 0.0,
              measureDistance: 0.0,
            ));
          }
        }
      });
    });

    return nearest;
  }

  @override
  DatumDetails<D> addPositionToDetailsForSeriesDatum(
      DatumDetails<D> details, SeriesDatum<D> seriesDatum) {
    final chartPosition =
        _getChartPosition(details.series.id, details.domain.toString());

    return new DatumDetails.from(details, chartPosition: chartPosition);
  }

  /// Assigns colors to series that are missing their colorFn.
  @override
  assignMissingColors(Iterable<MutableSeries> seriesList,
      {@required bool emptyCategoryUsesSinglePalette}) {
    int maxMissing = 0;

    seriesList.forEach((MutableSeries series) {
      if (series.colorFn == null) {
        maxMissing = max(maxMissing, series.data.length);
      }
    });

    if (maxMissing > 0) {
      final colorPalettes = StyleFactory.style.getOrderedPalettes(1);
      final colorPalette = colorPalettes[0].makeShades(maxMissing);

      seriesList.forEach((MutableSeries series) {
        series.colorFn ??= (index) => colorPalette[index];
      });
    }
  }

  /// Calculates the size of the inner pie radius given the outer radius.
  double _calculateInnerRadius(double radius) {
    // arcRatio trumps arcWidth. If neither is defined, then inner radius is 0.
    if (config.arcRatio != null) {
      return max(radius - radius * config.arcRatio, 0.0).toDouble();
    } else if (config.arcWidth != null) {
      return max(radius - config.arcWidth, 0.0).toDouble();
    } else {
      return 0.0;
    }
  }
}

class ArcRendererElementList<D> {
  List<ArcRendererElement<D>> arcs;
  Point<double> center;
  double innerRadius;
  double radius;
  double startAngle;

  /// Color of separator lines between arcs.
  Color stroke;

  /// Stroke width of separator lines between arcs.
  double strokeWidthPx;
}

class ArcRendererElement<D> {
  double startAngle;
  double endAngle;
  Color color;
  int index;
  num key;
  D domain;
  ImmutableSeries<D> series;

  ArcRendererElement<D> clone() {
    return new ArcRendererElement<D>()
      ..startAngle = startAngle
      ..endAngle = endAngle
      ..color = new Color.fromOther(color: color)
      ..index = index
      ..key = key
      ..series = series;
  }

  void updateAnimationPercent(ArcRendererElement previous,
      ArcRendererElement target, double animationPercent) {
    startAngle =
        ((target.startAngle - previous.startAngle) * animationPercent) +
            previous.startAngle;

    endAngle = ((target.endAngle - previous.endAngle) * animationPercent) +
        previous.endAngle;

    color = getAnimatedColor(previous.color, target.color, animationPercent);
  }
}

class _AnimatedArcList<D> {
  final arcs = <_AnimatedArc<D>>[];
  Point<double> center;
  double innerRadius;
  double radius;
  ImmutableSeries<D> series;

  /// Color of separator lines between arcs.
  Color stroke;

  /// Stroke width of separator lines between arcs.
  double strokeWidthPx;
}

class _AnimatedArc<D> {
  final String key;
  dynamic datum;
  D domain;

  ArcRendererElement<D> _previousArc;
  ArcRendererElement<D> _targetArc;
  ArcRendererElement<D> _currentArc;

  // Flag indicating whether this arc is being animated out of the chart.
  bool animatingOut = false;

  _AnimatedArc(this.key, this.datum, this.domain);

  /// Animates a arc that was removed from the series out of the view.
  ///
  /// This should be called in place of "setNewTarget" for arcs that represent
  /// data that has been removed from the series.
  ///
  /// Animates the angle of the arc to [endAngle], in radians.
  void animateOut(endAngle) {
    var newTarget = _currentArc.clone();

    // Animate the arc out by setting the angles to 0.
    newTarget.startAngle = endAngle;
    newTarget.endAngle = endAngle;

    setNewTarget(newTarget);
    animatingOut = true;
  }

  void setNewTarget(ArcRendererElement<D> newTarget) {
    animatingOut = false;
    _currentArc ??= newTarget.clone();
    _previousArc = _currentArc.clone();
    _targetArc = newTarget;
  }

  ArcRendererElement<D> getCurrentArc(double animationPercent) {
    if (animationPercent == 1.0 || _previousArc == null) {
      _currentArc = _targetArc;
      _previousArc = _targetArc;
      return _currentArc;
    }

    _currentArc.updateAnimationPercent(
        _previousArc, _targetArc, animationPercent);

    return _currentArc;
  }

  /// Returns the [startAngle] of the new target element, without updating
  /// animation state.
  double get newTargetArcStartAngle {
    return _targetArc != null ? _targetArc.startAngle : null;
  }

  /// Returns the [endAngle] of the new target element, without updating
  /// animation state.
  double get currentArcEndAngle {
    return _currentArc != null ? _currentArc.endAngle : null;
  }

  /// Returns the [startAngle] of the currently rendered element, without
  /// updating animation state.
  double get currentArcStartAngle {
    return _currentArc != null ? _currentArc.startAngle : null;
  }

  /// Returns the [endAngle] of the new target element, without updating
  /// animation state.
  double get previousArcEndAngle {
    return _previousArc != null ? _previousArc.endAngle : null;
  }

  /// Returns the [startAngle] of the previously rendered element, without
  /// updating animation state.
  double get previousArcStartAngle {
    return _previousArc != null ? _previousArc.startAngle : null;
  }
}
