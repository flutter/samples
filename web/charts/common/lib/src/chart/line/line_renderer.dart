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
import 'dart:math' show Rectangle, Point;

import 'package:meta/meta.dart' show required, visibleForTesting;

import '../../common/color.dart' show Color;
import '../../common/math.dart' show clamp;
import '../../data/series.dart' show AttributeKey;
import '../cartesian/axis/axis.dart'
    show ImmutableAxis, OrdinalAxis, domainAxisKey, measureAxisKey;
import '../cartesian/cartesian_renderer.dart' show BaseCartesianRenderer;
import '../common/base_chart.dart' show BaseChart;
import '../common/chart_canvas.dart' show ChartCanvas, getAnimatedColor;
import '../common/datum_details.dart' show DatumDetails;
import '../common/processed_series.dart' show ImmutableSeries, MutableSeries;
import '../common/series_datum.dart' show SeriesDatum;
import '../scatter_plot/point_renderer.dart' show PointRenderer;
import '../scatter_plot/point_renderer_config.dart' show PointRendererConfig;
import 'line_renderer_config.dart' show LineRendererConfig;

const styleSegmentsKey = const AttributeKey<List<_LineRendererElement>>(
    'LineRenderer.styleSegments');

const lineStackIndexKey =
    const AttributeKey<int>('LineRenderer.lineStackIndex');

class LineRenderer<D> extends BaseCartesianRenderer<D> {
  // Configuration used to extend the clipping area to extend the draw bounds.
  static const drawBoundTopExtensionPx = 5;
  static const drawBoundBottomExtensionPx = 5;

  final LineRendererConfig config;

  PointRenderer _pointRenderer;

  BaseChart<D> _chart;

  /// True if any series has a measureUpperBoundFn and measureLowerBoundFn.
  ///
  /// Used to enable drawing confidence interval areas segments.
  bool _hasMeasureBounds;

  /// Store a map of series drawn on the chart, mapped by series name.
  ///
  /// [LinkedHashMap] is used to render the series on the canvas in the same
  /// order as the data was given to the chart.
  final _seriesLineMap = <String, List<_AnimatedElements<D>>>{};

  // Store a list of lines that exist in the series data.
  //
  // This list will be used to remove any [_AnimatedLine] that were rendered in
  // previous draw cycles, but no longer have a corresponding datum in the new
  // data.
  final _currentKeys = <String>[];

  factory LineRenderer({String rendererId, LineRendererConfig config}) {
    return new LineRenderer._internal(
        rendererId: rendererId ?? 'line',
        config: config ?? new LineRendererConfig());
  }

  LineRenderer._internal({String rendererId, this.config})
      : super(
            rendererId: rendererId,
            layoutPaintOrder: config.layoutPaintOrder,
            symbolRenderer: config.symbolRenderer) {
    _pointRenderer = new PointRenderer<D>(
        config: new PointRendererConfig<D>(radiusPx: this.config.radiusPx));
  }

  @override
  void layout(Rectangle<int> componentBounds, Rectangle<int> drawAreaBounds) {
    super.layout(componentBounds, drawAreaBounds);

    if (config.includePoints) {
      _pointRenderer.layout(componentBounds, drawAreaBounds);
    }
  }

  @override
  void configureSeries(List<MutableSeries<D>> seriesList) {
    assignMissingColors(seriesList, emptyCategoryUsesSinglePalette: false);

    seriesList.forEach((MutableSeries series) {
      // Add a default area color function which applies the configured
      // areaOpacity value to the datum's current color.
      series.areaColorFn ??= (int index) {
        final color = series.colorFn(index);

        return new Color(
            r: color.r,
            g: color.g,
            b: color.b,
            a: (color.a * config.areaOpacity).round());
      };
    });

    if (config.includePoints) {
      _pointRenderer.configureSeries(seriesList);
    }
  }

  @override
  void preprocessSeries(List<MutableSeries<D>> seriesList) {
    var stackIndex = 0;

    _hasMeasureBounds = seriesList.any((series) =>
        series.measureUpperBoundFn != null &&
        series.measureLowerBoundFn != null);

    seriesList.forEach((MutableSeries<D> series) {
      final colorFn = series.colorFn;
      final areaColorFn = series.areaColorFn;
      final domainFn = series.domainFn;
      final measureFn = series.measureFn;
      final strokeWidthPxFn = series.strokeWidthPxFn;

      series.dashPatternFn ??= (_) => config.dashPattern;
      final dashPatternFn = series.dashPatternFn;

      final styleSegments = <_LineRendererElement<D>>[];
      var styleSegmentsIndex = 0;

      final usedKeys = new Set<String>();

      // Configure style segments for each series.
      String previousSegmentKey;
      _LineRendererElement<D> currentDetails;

      for (var index = 0; index < series.data.length; index++) {
        final domain = domainFn(index);
        final measure = measureFn(index);

        if (domain == null || measure == null) {
          continue;
        }

        final color = colorFn(index);
        final areaColor = areaColorFn(index);
        final dashPattern = dashPatternFn(index);
        final strokeWidthPx = strokeWidthPxFn != null
            ? strokeWidthPxFn(index).toDouble()
            : config.strokeWidthPx;

        // Create a style key for this datum, and then compare it to the
        // previous datum.
        //
        // Compare strokeWidthPx to 2 decimals of precision. Any less and you
        // can't see any difference in the canvas anyways.
        final strokeWidthPxRounded = (strokeWidthPx * 100).round() / 100;
        var styleKey = '${series.id}__${styleSegmentsIndex}__${color}'
            '__${dashPattern}__${strokeWidthPxRounded}';

        if (styleKey != previousSegmentKey) {
          // If we have a repeated style segment, update the repeat index and
          // create a new key.
          // TODO: Paint repeated styles with multiple clip regions.
          if (usedKeys.isNotEmpty && usedKeys.contains(styleKey)) {
            styleSegmentsIndex++;

            styleKey = '${series.id}__${styleSegmentsIndex}__${color}'
                '__${dashPattern}__${strokeWidthPxRounded}';
          }

          // Make sure that the previous style segment extends to the current
          // domain value. This will ensure that the style of the line changes
          // right at the point of the datum that changes the style.
          if (currentDetails != null) {
            currentDetails.domainExtent.includePoint(domain);
          }

          // Create a new style segment.
          currentDetails = new _LineRendererElement<D>()
            ..color = color
            ..areaColor = areaColor
            ..dashPattern = dashPattern
            ..domainExtent = new _Range<D>(domain, domain)
            ..strokeWidthPx = strokeWidthPx
            ..styleKey = styleKey
            ..roundEndCaps = config.roundEndCaps;

          styleSegments.add(currentDetails);
          usedKeys.add(styleKey);

          previousSegmentKey = styleKey;
        } else {
          // Extend the range of the current segment to include the current
          // domain value.
          currentDetails.domainExtent.includePoint(domain);
        }
      }

      series.setAttr(styleSegmentsKey, styleSegments);
      series.setAttr(lineStackIndexKey, stackIndex);

      if (config.stacked) {
        stackIndex++;
      }
    });

    if (config.includePoints) {
      _pointRenderer.preprocessSeries(seriesList);
    }

    // If we are stacking, generate new stacking measure offset functions for
    // each series. Each datum should have a measure offset consisting of the
    // sum of the measure and measure offsets of each datum with the same domain
    // value in series below it in the stack. The first series will be treated
    // as the bottom of the stack.
    if (config.stacked && seriesList.isNotEmpty) {
      var curOffsets = _createInitialOffsetMap(seriesList[0]);
      var nextOffsets = <D, num>{};

      for (var i = 0; i < seriesList.length; i++) {
        final series = seriesList[i];
        final measureOffsetFn = _createStackedMeasureOffsetFunction(
            series, curOffsets, nextOffsets);

        if (i > 0) {
          series.measureOffsetFn = measureOffsetFn;
        }

        curOffsets = nextOffsets;
        nextOffsets = <D, num>{};
      }
    }
  }

  /// Creates the initial offsets for the series given the measureOffset values.
  Map<D, num> _createInitialOffsetMap(MutableSeries<D> series) {
    final domainFn = series.domainFn;
    final measureOffsetFn = series.measureOffsetFn;
    final initialOffsets = <D, num>{};

    for (var index = 0; index < series.data.length; index++) {
      initialOffsets[domainFn(index)] = measureOffsetFn(index);
    }

    return initialOffsets;
  }

  /// Function needed to create a closure preserving the previous series
  /// information. y0 for this series is just y + y0 for previous series as long
  /// as both y and y0 are not null. If they are null propagate up the
  /// missing/null data.
  Function _createStackedMeasureOffsetFunction(MutableSeries<D> series,
      Map<D, num> curOffsets, Map<D, num> nextOffsets) {
    final domainFn = series.domainFn;
    final measureFn = series.measureFn;

    for (var index = 0; index < series.data.length; index++) {
      final domainValue = domainFn(index);
      final measure = measureFn(index);
      final prevOffset = curOffsets[domainValue];

      if (measure != null && prevOffset != null) {
        nextOffsets[domainValue] = measure + prevOffset;
      }
    }

    return (int i) => curOffsets[domainFn(i)];
  }

  /// Merge the line map and the new series so that the new elements are mixed
  /// with the previous ones.
  ///
  /// This is to deal with the issue that every new series added after the fact
  /// would be be rendered on top of the old ones, no matter the order of the
  /// new series list.
  void _mergeIntoSeriesMap(List<ImmutableSeries<D>> seriesList) {
    List<MapEntry<String, List<_AnimatedElements<D>>>> newLineMap = [];

    seriesList.forEach((ImmutableSeries<D> series) {
      final key = series.id;

      // First, add all the series from the old map that have been removed from
      // the new seriesList in the same order they appear, stopping at the first
      // series that is still in the list. We need to maintain them in the same
      // order animate them out smoothly.
      bool checkNext = true;
      while (checkNext && _seriesLineMap.isNotEmpty) {
        final firstKey = _seriesLineMap.keys.first;
        if (!seriesList.any((s) => s.id == firstKey)) {
          newLineMap.add(MapEntry(firstKey, _seriesLineMap.remove(firstKey)));
          checkNext = true;
        } else {
          checkNext = false;
        }
      }

      // If it's a new key, we add it and move to the next one. If not, we
      // remove it from the current list and add it to the new one.
      if (!_seriesLineMap.containsKey(key)) {
        newLineMap.add(MapEntry(key, []));
      } else {
        newLineMap.add(MapEntry(key, _seriesLineMap.remove(key)));
      }
    });

    // Now whatever is left is stuff that has been removed. We still add it to
    // the end and removed them as the map is modified in place.
    newLineMap.addAll(_seriesLineMap.entries);
    _seriesLineMap.clear();

    _seriesLineMap.addEntries(newLineMap);
  }

  void update(List<ImmutableSeries<D>> seriesList, bool isAnimatingThisDraw) {
    _currentKeys.clear();

    // List of final points for the previous line in a stack.
    List<List<_DatumPoint<D>>> previousPointList = [];

    // List of initial points for the previous line in a stack, animated in from
    // the measure axis.
    List<List<_DatumPoint<D>>> previousInitialPointList = [];

    _mergeIntoSeriesMap(seriesList);

    seriesList.forEach((ImmutableSeries<D> series) {
      final domainAxis = series.getAttr(domainAxisKey) as ImmutableAxis<D>;
      final lineKey = series.id;
      final stackIndex = series.getAttr(lineStackIndexKey);

      previousPointList.add([]);
      previousInitialPointList.add([]);

      final elementsList = _seriesLineMap[lineKey];

      final styleSegments = series.getAttr(styleSegmentsKey);

      // Include the end points of the domain axis range in the first and last
      // style segments to avoid clipping everything when the domain range of
      // the data is very small. Doing this after [preProcess] handles invalid
      // data (e.g. null measure) at the ends of the series data.
      //
      // TODO: Handle ordinal axes by looking at the next domains.
      if (styleSegments.isNotEmpty && !(domainAxis is OrdinalAxis)) {
        final startPx = (isRtl ? drawBounds.right : drawBounds.left).toDouble();
        final endPx = (isRtl ? drawBounds.left : drawBounds.right).toDouble();

        final startDomain = domainAxis.getDomain(startPx);
        final endDomain = domainAxis.getDomain(endPx);

        styleSegments.first.domainExtent.includePoint(startDomain);
        styleSegments.last.domainExtent.includePoint(endDomain);
      }

      // Create a set of animated line and area elements for each style segment.
      //
      // If the series contains null measure values, then multiple animated line
      // and area objects will be created to represent the isolated sections of
      // the series.
      //
      // The full set of line and area elements will be rendered on the canvas
      // for each style segment, with a clip region added in the [paint] process
      // later to display only the relevant parts of data. This ensures that
      // styles that visually depend on the start location, such as dash
      // patterns, are not disrupted by other changes in style.
      styleSegments.forEach((_LineRendererElement styleSegment) {
        final styleKey = styleSegment.styleKey;

        // If we already have an AnimatingPoint for that index, use it.
        var animatingElements = elementsList.firstWhere(
            (_AnimatedElements elements) => elements.styleKey == styleKey,
            orElse: () => null);

        if (animatingElements != null) {
          previousInitialPointList[stackIndex] = animatingElements.allPoints;
        } else {
          // Create a new line and have it animate in from axis.
          final lineAndArea = _createLineAndAreaElements(
              series,
              styleSegment,
              stackIndex > 0 ? previousInitialPointList[stackIndex - 1] : null,
              true);
          final lineElementList = lineAndArea[0];
          final areaElementList = lineAndArea[1];
          final allPointList = lineAndArea[2];
          final boundsElementList = lineAndArea[3];

          // Create the line elements.
          final animatingLines = <_AnimatedLine<D>>[];

          for (var index = 0; index < lineElementList.length; index++) {
            animatingLines.add(new _AnimatedLine<D>(
                key: lineElementList[index].styleKey,
                overlaySeries: series.overlaySeries)
              ..setNewTarget(lineElementList[index]));
          }

          // Create the area elements.
          List<_AnimatedArea<D>> animatingAreas;
          if (config.includeArea) {
            animatingAreas = <_AnimatedArea<D>>[];

            for (var index = 0; index < areaElementList.length; index++) {
              animatingAreas.add(new _AnimatedArea<D>(
                  key: areaElementList[index].styleKey,
                  overlaySeries: series.overlaySeries)
                ..setNewTarget(areaElementList[index]));
            }
          }

          // Create the bound elements separately from area elements, because
          // it needs to be rendered on top of the area elements.
          List<_AnimatedArea<D>> animatingBounds;
          if (_hasMeasureBounds) {
            animatingBounds ??= <_AnimatedArea<D>>[];

            for (var index = 0; index < boundsElementList.length; index++) {
              animatingBounds.add(new _AnimatedArea<D>(
                  key: boundsElementList[index].styleKey,
                  overlaySeries: series.overlaySeries)
                ..setNewTarget(boundsElementList[index]));
            }
          }

          animatingElements = new _AnimatedElements<D>()
            ..styleKey = styleSegment.styleKey
            ..allPoints = allPointList
            ..lines = animatingLines
            ..areas = animatingAreas
            ..bounds = animatingBounds;

          elementsList.add(animatingElements);

          previousInitialPointList[stackIndex] = allPointList;
        }

        // Create a new line using the final point locations.
        final lineAndArea = _createLineAndAreaElements(series, styleSegment,
            stackIndex > 0 ? previousPointList[stackIndex - 1] : null, false);
        final lineElementList = lineAndArea[0];
        final areaElementList = lineAndArea[1];
        final allPointList = lineAndArea[2];
        final boundsElementList = lineAndArea[3];

        for (var index = 0; index < lineElementList.length; index++) {
          final lineElement = lineElementList[index];

          // Add a new animated line if we have more segments in this draw cycle
          // than we did in the previous chart draw cycle.
          // TODO: Nicer animations for incoming segments.
          if (index >= animatingElements.lines.length) {
            animatingElements.lines.add(new _AnimatedLine<D>(
                key: lineElement.styleKey,
                overlaySeries: series.overlaySeries));
          }
          animatingElements.lines[index].setNewTarget(lineElement);
        }

        if (config.includeArea) {
          for (var index = 0; index < areaElementList.length; index++) {
            final areaElement = areaElementList[index];

            // Add a new animated area if we have more segments in this draw
            // cycle than we did in the previous chart draw cycle.
            // TODO: Nicer animations for incoming segments.
            if (index >= animatingElements.areas.length) {
              animatingElements.areas.add(new _AnimatedArea<D>(
                  key: areaElement.styleKey,
                  overlaySeries: series.overlaySeries));
            }
            animatingElements.areas[index].setNewTarget(areaElement);
          }
        }

        if (_hasMeasureBounds) {
          for (var index = 0; index < boundsElementList.length; index++) {
            final boundElement = boundsElementList[index];

            // Add a new animated bound if we have more segments in this draw
            // cycle than we did in the previous chart draw cycle.
            // TODO: Nicer animations for incoming segments.
            if (index >= animatingElements.bounds.length) {
              animatingElements.bounds.add(new _AnimatedArea<D>(
                  key: boundElement.styleKey,
                  overlaySeries: series.overlaySeries));
            }
            animatingElements.bounds[index].setNewTarget(boundElement);
          }
        }

        animatingElements.allPoints = allPointList;

        // Save the line points for the current series so that we can use them
        // in the area skirt for the next stacked series.
        previousPointList[stackIndex] = allPointList;
      });
    });

    // Animate out lines that don't exist anymore.
    _seriesLineMap.forEach((String key, List<_AnimatedElements<D>> elements) {
      for (var element in elements) {
        if (element.lines != null) {
          for (var line in element.lines) {
            if (_currentKeys.contains(line.key) != true) {
              line.animateOut();
            }
          }
        }
        if (element.areas != null) {
          for (var area in element.areas) {
            if (_currentKeys.contains(area.key) != true) {
              area.animateOut();
            }
          }
        }
        if (element.bounds != null) {
          for (var bound in element.bounds) {
            if (_currentKeys.contains(bound.key) != true) {
              bound.animateOut();
            }
          }
        }
      }
    });

    if (config.includePoints) {
      _pointRenderer.update(seriesList, isAnimatingThisDraw);
    }
  }

  /// Creates a tuple of lists of [_LineRendererElement]s,
  /// [_AreaRendererElement]s, [_DatumPoint]s for a given style segment of a
  /// series.
  ///
  /// The first element in the returned array is a list of line elements, broken
  /// apart by null data.
  ///
  /// The second element in the returned array is a list of area elements,
  /// broken apart by null data.
  ///
  /// The third element in the returned array is a list of all of the points for
  /// the entire series. This is intended to be used as the [previousPointList]
  /// for the next series.
  ///
  /// [series] the series that this line represents.
  ///
  /// [styleSegment] represents the rendering style for a subset of the series
  /// data, bounded by its domainExtent.
  ///
  /// [previousPointList] contains the points for the line below this series in
  /// the stack, if stacking is enabled. It forms the bottom edges for the area
  /// skirt.
  ///
  /// [initializeFromZero] controls whether we generate elements with measure
  /// values of 0, or using series data. This should be true when calculating
  /// point positions to animate in from the measure axis.
  List _createLineAndAreaElements(
      ImmutableSeries<D> series,
      _LineRendererElement styleSegment,
      List<_DatumPoint<D>> previousPointList,
      bool initializeFromZero) {
    final measureAxis = series.getAttr(measureAxisKey) as ImmutableAxis<num>;

    final color = styleSegment.color;
    final areaColor = styleSegment.areaColor;
    final dashPattern = styleSegment.dashPattern;
    final domainExtent = styleSegment.domainExtent;
    final strokeWidthPx = styleSegment.strokeWidthPx;
    final styleKey = styleSegment.styleKey;
    final roundEndCaps = styleSegment.roundEndCaps;

    // Get a list of all positioned points for this series.
    final pointList = _createPointListForSeries(series, initializeFromZero);

    // Break pointList up into sets of line and area segments, divided by null
    // measure values in the series data.
    final segmentsList = _createLineAndAreaSegmentsForSeries(
        pointList, previousPointList, series, initializeFromZero);
    final lineSegments = segmentsList[0];
    final areaSegments = segmentsList[1];
    final boundsSegment = segmentsList[2];

    _currentKeys.add(styleKey);

    final positionExtent = _createPositionExtent(series, styleSegment);

    // Get the line elements we are going to to set up.
    final lineElements = <_LineRendererElement<D>>[];
    for (var index = 0; index < lineSegments.length; index++) {
      final linePointList = lineSegments[index];

      // Update the set of areas that still exist in the series data.
      final lineStyleKey = '${styleKey}__line__${index}';
      _currentKeys.add(lineStyleKey);

      lineElements.add(new _LineRendererElement<D>()
        ..points = linePointList
        ..color = color
        ..areaColor = areaColor
        ..dashPattern = dashPattern
        ..domainExtent = domainExtent
        ..measureAxisPosition = measureAxis.getLocation(0.0)
        ..positionExtent = positionExtent
        ..strokeWidthPx = strokeWidthPx
        ..styleKey = lineStyleKey
        ..roundEndCaps = roundEndCaps);
    }

    // Get the area elements we are going to set up.
    final areaElements = <_AreaRendererElement<D>>[];
    if (config.includeArea) {
      for (var index = 0; index < areaSegments.length; index++) {
        final areaPointList = areaSegments[index];

        // Update the set of areas that still exist in the series data.
        final areaStyleKey = '${styleKey}__area_${index}';
        _currentKeys.add(areaStyleKey);

        areaElements.add(new _AreaRendererElement<D>()
          ..points = areaPointList
          ..color = color
          ..areaColor = areaColor
          ..domainExtent = domainExtent
          ..measureAxisPosition = measureAxis.getLocation(0.0)
          ..positionExtent = positionExtent
          ..styleKey = areaStyleKey);
      }
    }

    // Create the bounds element
    final boundsElements = <_AreaRendererElement<D>>[];
    if (_hasMeasureBounds) {
      // Update the set of bounds that still exist in the series data.
      for (var index = 0; index < boundsSegment.length; index++) {
        final boundsPointList = boundsSegment[index];

        final boundsStyleKey = '${styleKey}__bounds_${index}';
        _currentKeys.add(boundsStyleKey);

        boundsElements.add(new _AreaRendererElement<D>()
          ..points = boundsPointList
          ..color = color
          ..areaColor = areaColor
          ..domainExtent = domainExtent
          ..measureAxisPosition = measureAxis.getLocation(0.0)
          ..positionExtent = positionExtent
          ..styleKey = boundsStyleKey);
      }
    }

    return [lineElements, areaElements, pointList, boundsElements];
  }

  /// Builds a list of data points for the entire series.
  ///
  /// [series] the series that this line represents.
  ///
  /// [initializeFromZero] controls whether we generate elements with measure
  /// values of 0, or using series data. This should be true when calculating
  /// point positions to animate in from the measure axis.
  List<_DatumPoint<D>> _createPointListForSeries(
      ImmutableSeries<D> series, bool initializeFromZero) {
    final domainAxis = series.getAttr(domainAxisKey) as ImmutableAxis<D>;
    final domainFn = series.domainFn;
    final measureAxis = series.getAttr(measureAxisKey) as ImmutableAxis<num>;
    final measureFn = series.measureFn;
    final measureOffsetFn = series.measureOffsetFn;

    final pointList = <_DatumPoint<D>>[];

    // Generate [_DatumPoints]s for the series data.
    for (var index = 0; index < series.data.length; index++) {
      final datum = series.data[index];

      // TODO: Animate from the nearest lines in the stack.
      var measure = measureFn(index);
      if (measure != null && initializeFromZero) {
        measure = 0.0;
      }

      var measureOffset = measureOffsetFn(index);
      if (measureOffset != null && initializeFromZero) {
        measureOffset = 0.0;
      }

      pointList.add(_getPoint(datum, domainFn(index), series, domainAxis,
          measure, measureOffset, measureAxis,
          index: index));
    }

    return pointList;
  }

  /// Builds a list of line and area segments for a series.
  ///
  /// This method returns a list of two elements. The first is a list of line
  /// segments, and the second is a list of area segments. Both sets of segments
  /// are broken up by null measure values in the series data.
  ///
  /// [pointList] list of all points in the line.
  ///
  /// [previousPointList] list of all points in the line below this one in the
  /// stack.
  ///
  /// [series] the series that this line represents.
  List _createLineAndAreaSegmentsForSeries(
      List<_DatumPoint<D>> pointList,
      List<_DatumPoint<D>> previousPointList,
      ImmutableSeries<D> series,
      bool initializeFromZero) {
    final lineSegments = <List<_DatumPoint<D>>>[];
    final areaSegments = <List<_DatumPoint<D>>>[];
    final boundsSegments = <List<_DatumPoint<D>>>[];

    int startPointIndex;
    int endPointIndex;

    // Only build bound segments for this series if it has bounds functions.
    final seriesHasMeasureBounds = series.measureUpperBoundFn != null &&
        series.measureLowerBoundFn != null;

    for (var index = 0; index < pointList.length; index++) {
      final point = pointList[index];

      if (point.y == null) {
        if (startPointIndex == null) {
          continue;
        }

        lineSegments
            .add(_createLineSegment(startPointIndex, endPointIndex, pointList));

        // Isolated data points are handled by the line painter. Do not add an
        // area segment for them.
        if (startPointIndex != endPointIndex) {
          if (config.includeArea) {
            areaSegments.add(_createAreaSegment(startPointIndex, endPointIndex,
                pointList, previousPointList, series, initializeFromZero));
          }
          if (seriesHasMeasureBounds) {
            boundsSegments.add(_createBoundsSegment(
                pointList.sublist(startPointIndex, endPointIndex + 1),
                series,
                initializeFromZero));
          }
        }

        startPointIndex = null;
        endPointIndex = null;
        continue;
      }

      startPointIndex ??= index;
      endPointIndex = index;
    }

    // Create an area point list for the final segment. This will be the only
    // segment if no null measure values were found in the series.
    if (startPointIndex != null && endPointIndex != null) {
      lineSegments
          .add(_createLineSegment(startPointIndex, endPointIndex, pointList));

      // Isolated data points are handled by the line painter. Do not add an
      // area segment for them.
      if (startPointIndex != endPointIndex) {
        if (config.includeArea) {
          areaSegments.add(_createAreaSegment(startPointIndex, endPointIndex,
              pointList, previousPointList, series, initializeFromZero));
        }

        if (seriesHasMeasureBounds) {
          boundsSegments.add(_createBoundsSegment(
              pointList.sublist(startPointIndex, endPointIndex + 1),
              series,
              initializeFromZero));
        }
      }
    }

    return [lineSegments, areaSegments, boundsSegments];
  }

  /// Builds a list of data points for a line segment.
  ///
  /// For a line, this is effectively just a sub list of [pointList].
  ///
  /// [start] index of the first point in the segment.
  ///
  /// [end] index of the last point in the segment.
  ///
  /// [pointList] list of all points in the line.
  List<_DatumPoint<D>> _createLineSegment(
          int start, int end, List<_DatumPoint<D>> pointList) =>
      pointList.sublist(start, end + 1);

  /// Builds a list of data points for an area segment.
  ///
  /// The list of points will include a baseline at the domain axis if there was
  /// no previous line in the stack. Otherwise, the bottom of the shape will
  /// consist of the points from the previous series that line up with the
  /// current series.
  ///
  /// [start] index of the first point in the segment.
  ///
  /// [end] index of the last point in the segment.
  ///
  /// [pointList] list of all points in the line.
  ///
  /// [previousPointList] list of all points in the line below this one in the
  /// stack.
  ///
  /// [series] the series that this line represents.
  List<_DatumPoint<D>> _createAreaSegment(
      int start,
      int end,
      List<_DatumPoint<D>> pointList,
      List<_DatumPoint<D>> previousPointList,
      ImmutableSeries<D> series,
      bool initializeFromZero) {
    final domainAxis = series.getAttr(domainAxisKey) as ImmutableAxis<D>;
    final domainFn = series.domainFn;
    final measureAxis = series.getAttr(measureAxisKey) as ImmutableAxis<num>;

    final areaPointList = <_DatumPoint<D>>[];

    if (!config.stacked || previousPointList == null) {
      // Start area segments at the bottom of a stack by adding a bottom line
      // segment along the measure axis.
      areaPointList.add(_getPoint(
          null, domainFn(end), series, domainAxis, 0.0, 0.0, measureAxis));

      areaPointList.add(_getPoint(
          null, domainFn(start), series, domainAxis, 0.0, 0.0, measureAxis));
    } else {
      // Start subsequent area segments in a stack by adding the previous
      // points in reverse order, so that we can get a properly closed
      // polygon.
      areaPointList.addAll(previousPointList.sublist(start, end + 1).reversed);
    }

    areaPointList.addAll(pointList.sublist(start, end + 1));

    return areaPointList;
  }

  List<_DatumPoint<D>> _createBoundsSegment(List<_DatumPoint<D>> pointList,
      ImmutableSeries<D> series, bool initializeFromZero) {
    final measureAxis = series.getAttr(measureAxisKey) as ImmutableAxis<num>;
    final areaPointList = <_DatumPoint<D>>[];

    // Add all points for upper bounds.
    areaPointList.addAll(pointList.map((datumPoint) => new _DatumPoint.from(
        datumPoint,
        datumPoint.x,
        initializeFromZero
            ? datumPoint.y
            : measureAxis.getLocation(
                series.measureUpperBoundFn(datumPoint.index) +
                    series.measureOffsetFn(datumPoint.index)))));

    // Add all points for lower bounds, in reverse order.
    areaPointList.addAll(pointList.reversed.map((datumPoint) =>
        new _DatumPoint.from(
            datumPoint,
            datumPoint.x,
            initializeFromZero
                ? datumPoint.y
                : measureAxis.getLocation(
                    series.measureLowerBoundFn(datumPoint.index) +
                        series.measureOffsetFn(datumPoint.index)))));

    return areaPointList;
  }

  /// Converts the domain value extent for the series into axis positions,
  /// clamped to the edges of the draw area.
  ///
  /// [series] the series that this line represents.
  ///
  /// [details] represents the element details for a line segment.
  _Range<num> _createPositionExtent(
      ImmutableSeries<D> series, _LineRendererElement details) {
    final domainAxis = series.getAttr(domainAxisKey) as ImmutableAxis<D>;

    // Convert the domain extent into axis positions.
    // Clamp start position to the beginning of the draw area if it is outside
    // the domain viewport range.
    final startPosition = domainAxis.getLocation(details.domainExtent.start) ??
        drawBounds.left.toDouble();

    // Clamp end position to the end of the draw area if it is outside the
    // domain viewport range.
    final endPosition = domainAxis.getLocation(details.domainExtent.end) ??
        drawBounds.right.toDouble();

    return new _Range<num>(startPosition, endPosition);
  }

  @override
  void onAttach(BaseChart<D> chart) {
    super.onAttach(chart);
    // We only need the chart.context.isRtl setting, but context is not yet
    // available when the default renderer is attached to the chart on chart
    // creation time, since chart onInit is called after the chart is created.
    _chart = chart;
  }

  void paint(ChartCanvas canvas, double animationPercent) {
    // Clean up the lines that no longer exist.
    if (animationPercent == 1.0) {
      final keysToRemove = <String>[];

      _seriesLineMap.forEach((String key, List<_AnimatedElements<D>> elements) {
        elements.removeWhere(
            (_AnimatedElements<D> element) => element.animatingOut);

        if (elements.isEmpty) {
          keysToRemove.add(key);
        }
      });

      keysToRemove.forEach(_seriesLineMap.remove);
    }

    _seriesLineMap.forEach((String key, List<_AnimatedElements<D>> elements) {
      if (config.includeArea) {
        elements
            .map<List<_AnimatedArea<D>>>(
                (_AnimatedElements<D> animatingElement) =>
                    animatingElement.areas)
            .expand<_AnimatedArea<D>>((List<_AnimatedArea<D>> areas) => areas)
            .map<_AreaRendererElement<D>>((_AnimatedArea<D> animatingArea) =>
                animatingArea?.getCurrentArea(animationPercent))
            .forEach((_AreaRendererElement area) {
          if (area != null) {
            canvas.drawPolygon(
                clipBounds: _getClipBoundsForExtent(area.positionExtent),
                fill: area.areaColor != null ? area.areaColor : area.color,
                points: area.points);
          }
        });
      }

      if (_hasMeasureBounds) {
        elements
            .map<List<_AnimatedArea<D>>>(
                (_AnimatedElements<D> animatingElement) =>
                    animatingElement.bounds)
            .expand<_AnimatedArea<D>>((List<_AnimatedArea<D>> bounds) => bounds)
            .map<_AreaRendererElement<D>>((_AnimatedArea<D> animatingBounds) =>
                animatingBounds?.getCurrentArea(animationPercent))
            .forEach((_AreaRendererElement bound) {
          if (bound != null) {
            canvas.drawPolygon(
                clipBounds: _getClipBoundsForExtent(bound.positionExtent),
                fill: bound.areaColor != null ? bound.areaColor : bound.color,
                points: bound.points);
          }
        });
      }

      if (config.includeLine) {
        elements
            .map<List<_AnimatedLine<D>>>(
                (_AnimatedElements<D> animatingElement) =>
                    animatingElement.lines)
            .expand<_AnimatedLine<D>>((List<_AnimatedLine<D>> lines) => lines)
            .map<_LineRendererElement<D>>((_AnimatedLine<D> animatingLine) =>
                animatingLine?.getCurrentLine(animationPercent))
            .forEach((_LineRendererElement line) {
          if (line != null) {
            canvas.drawLine(
                clipBounds: _getClipBoundsForExtent(line.positionExtent),
                dashPattern: line.dashPattern,
                points: line.points,
                stroke: line.color,
                strokeWidthPx: line.strokeWidthPx,
                roundEndCaps: line.roundEndCaps);
          }
        });
      }
    });

    if (config.includePoints) {
      _pointRenderer.paint(canvas, animationPercent);
    }
  }

  /// Builds a clip region bounding box within the component [drawBounds] for a
  /// given domain range [extent].
  Rectangle<num> _getClipBoundsForExtent(_Range<num> extent) {
    // In RTL mode, the domain range extent has start on the right side of the
    // chart. Adjust the calculated positions to define a regular left-anchored
    // [Rectangle]. Clamp both ends to be within the draw area.
    final left = isRtl
        ? clamp(extent.end, drawBounds.left, drawBounds.right)
        : clamp(extent.start, drawBounds.left, drawBounds.right);

    final right = isRtl
        ? clamp((extent.start), drawBounds.left, drawBounds.right)
        : clamp((extent.end), drawBounds.left, drawBounds.right);

    return new Rectangle<num>(
        left,
        drawBounds.top - drawBoundTopExtensionPx,
        right - left,
        drawBounds.height +
            drawBoundTopExtensionPx +
            drawBoundBottomExtensionPx);
  }

  bool get isRtl => _chart?.context?.isRtl ?? false;

  _DatumPoint<D> _getPoint(
      dynamic datum,
      D domainValue,
      ImmutableSeries<D> series,
      ImmutableAxis<D> domainAxis,
      num measureValue,
      num measureOffsetValue,
      ImmutableAxis<num> measureAxis,
      {int index}) {
    final domainPosition = domainAxis.getLocation(domainValue);

    final measurePosition = measureValue != null && measureOffsetValue != null
        ? measureAxis.getLocation(measureValue + measureOffsetValue)
        : null;

    return new _DatumPoint<D>(
        datum: datum,
        domain: domainValue,
        series: series,
        x: domainPosition,
        y: measurePosition,
        index: index);
  }

  @override
  List<DatumDetails<D>> getNearestDatumDetailPerSeries(
      Point<double> chartPoint, bool byDomain, Rectangle<int> boundsOverride) {
    final nearest = <DatumDetails<D>>[];

    // Was it even in the component bounds?
    if (!isPointWithinBounds(chartPoint, boundsOverride)) {
      return nearest;
    }

    _seriesLineMap.values.forEach((List<_AnimatedElements<D>> seriesSegments) {
      _DatumPoint<D> nearestPoint;
      double nearestDomainDistance = 10000.0;
      double nearestMeasureDistance = 10000.0;
      double nearestRelativeDistance = 10000.0;

      seriesSegments.forEach((_AnimatedElements<D> segment) {
        if (segment.overlaySeries) {
          return;
        }

        segment.allPoints.forEach((Point p) {
          // Don't look at points not in the drawArea.
          if (p.x < componentBounds.left || p.x > componentBounds.right) {
            return;
          }

          final domainDistance = (p.x - chartPoint.x).abs();

          double measureDistance;
          double relativeDistance;

          if (p.y != null) {
            measureDistance = (p.y - chartPoint.y).abs();
            relativeDistance = chartPoint.distanceTo(p);
          } else {
            // Null measures have no real position, so make them the farthest
            // away by real distance.
            measureDistance = double.infinity;
            relativeDistance = byDomain ? domainDistance : double.infinity;
          }

          if (byDomain) {
            if ((domainDistance < nearestDomainDistance) ||
                ((domainDistance == nearestDomainDistance &&
                    measureDistance < nearestMeasureDistance))) {
              nearestPoint = p;
              nearestDomainDistance = domainDistance;
              nearestMeasureDistance = measureDistance;
              nearestRelativeDistance = relativeDistance;
            }
          } else {
            if (relativeDistance < nearestRelativeDistance) {
              nearestPoint = p;
              nearestDomainDistance = domainDistance;
              nearestMeasureDistance = measureDistance;
              nearestRelativeDistance = relativeDistance;
            }
          }
        });
      });

      // Found a point, add it to the list.
      if (nearestPoint != null) {
        nearest.add(new DatumDetails<D>(
            chartPosition: new Point<double>(nearestPoint.x, nearestPoint.y),
            datum: nearestPoint.datum,
            domain: nearestPoint.domain,
            series: nearestPoint.series,
            domainDistance: nearestDomainDistance,
            measureDistance: nearestMeasureDistance,
            relativeDistance: nearestRelativeDistance));
      }
    });

    // Note: the details are already sorted by domain & measure distance in
    // base chart.

    return nearest;
  }

  DatumDetails<D> addPositionToDetailsForSeriesDatum(
      DatumDetails<D> details, SeriesDatum<D> seriesDatum) {
    final series = details.series;

    final domainAxis = series.getAttr(domainAxisKey) as ImmutableAxis<D>;
    final measureAxis = series.getAttr(measureAxisKey) as ImmutableAxis<num>;

    final point = _getPoint(seriesDatum.datum, details.domain, series,
        domainAxis, details.measure, details.measureOffset, measureAxis);
    final chartPosition = new Point<double>(point.x, point.y);

    return new DatumDetails.from(details, chartPosition: chartPosition);
  }
}

class _DatumPoint<D> extends Point<double> {
  final dynamic datum;
  final D domain;
  final ImmutableSeries<D> series;
  final int index;

  _DatumPoint(
      {this.datum, this.domain, this.series, this.index, double x, double y})
      : super(x, y);

  factory _DatumPoint.from(_DatumPoint<D> other, [double x, double y]) {
    return new _DatumPoint<D>(
        datum: other.datum,
        domain: other.domain,
        series: other.series,
        index: other.index,
        x: x ?? other.x,
        y: y ?? other.y);
  }
}

/// Rendering information for the line portion of a series.
class _LineRendererElement<D> {
  List<_DatumPoint<D>> points;
  Color color;
  Color areaColor;
  List<int> dashPattern;
  _Range<D> domainExtent;
  double measureAxisPosition;
  _Range<num> positionExtent;
  double strokeWidthPx;
  String styleKey;
  bool roundEndCaps;

  _LineRendererElement<D> clone() {
    return new _LineRendererElement<D>()
      ..points = new List<_DatumPoint<D>>.from(points)
      ..color = color != null ? new Color.fromOther(color: color) : null
      ..areaColor =
          areaColor != null ? new Color.fromOther(color: areaColor) : null
      ..dashPattern =
          dashPattern != null ? new List<int>.from(dashPattern) : null
      ..domainExtent = domainExtent
      ..measureAxisPosition = measureAxisPosition
      ..positionExtent = positionExtent
      ..strokeWidthPx = strokeWidthPx
      ..styleKey = styleKey
      ..roundEndCaps = roundEndCaps;
  }

  void updateAnimationPercent(_LineRendererElement previous,
      _LineRendererElement target, double animationPercent) {
    Point lastPoint;

    int pointIndex;
    for (pointIndex = 0; pointIndex < target.points.length; pointIndex++) {
      final targetPoint = target.points[pointIndex];

      // If we have more points than the previous line, animate in the new point
      // by starting its measure position at the last known official point.
      // TODO: Can this be done in setNewTarget instead?
      _DatumPoint<D> previousPoint;
      if (previous.points.length - 1 >= pointIndex) {
        previousPoint = previous.points[pointIndex];
        lastPoint = previousPoint;
      } else {
        previousPoint =
            new _DatumPoint<D>.from(targetPoint, targetPoint.x, lastPoint.y);
      }

      final x = ((targetPoint.x - previousPoint.x) * animationPercent) +
          previousPoint.x;

      double y;
      if (targetPoint.y != null && previousPoint.y != null) {
        y = ((targetPoint.y - previousPoint.y) * animationPercent) +
            previousPoint.y;
      } else if (targetPoint.y != null) {
        y = targetPoint.y;
      } else {
        y = null;
      }

      if (points.length - 1 >= pointIndex) {
        points[pointIndex] = new _DatumPoint<D>.from(targetPoint, x, y);
      } else {
        points.add(new _DatumPoint<D>.from(targetPoint, x, y));
      }
    }

    // Removing extra points that don't exist anymore.
    if (pointIndex < points.length) {
      points.removeRange(pointIndex, points.length);
    }

    color = getAnimatedColor(previous.color, target.color, animationPercent);

    if (areaColor != null) {
      areaColor = getAnimatedColor(
          previous.areaColor, target.areaColor, animationPercent);
    }

    strokeWidthPx =
        (((target.strokeWidthPx - previous.strokeWidthPx) * animationPercent) +
            previous.strokeWidthPx);
  }
}

/// Animates the line element of a series between different states.
class _AnimatedLine<D> {
  final String key;
  final bool overlaySeries;

  _LineRendererElement<D> _previousLine;
  _LineRendererElement<D> _targetLine;
  _LineRendererElement<D> _currentLine;

  // Flag indicating whether this line is being animated out of the chart.
  bool animatingOut = false;

  _AnimatedLine({@required this.key, @required this.overlaySeries});

  /// Animates a line that was removed from the series out of the view.
  ///
  /// This should be called in place of "setNewTarget" for lines that represent
  /// data that has been removed from the series.
  ///
  /// Animates the height of the line down to the measure axis position
  /// (position of 0).
  void animateOut() {
    var newTarget = _currentLine.clone();

    // Set the target measure value to the axis position for all points.
    // TODO: Animate to the nearest lines in the stack.
    var newPoints = <_DatumPoint<D>>[];
    for (var index = 0; index < newTarget.points.length; index++) {
      var targetPoint = newTarget.points[index];

      newPoints.add(new _DatumPoint<D>.from(targetPoint, targetPoint.x,
          newTarget.measureAxisPosition.roundToDouble()));
    }

    newTarget.points = newPoints;

    // Animate the stroke width to 0 so that we don't get a lingering line after
    // animation is done.
    newTarget.strokeWidthPx = 0.0;

    setNewTarget(newTarget);
    animatingOut = true;
  }

  void setNewTarget(_LineRendererElement<D> newTarget) {
    animatingOut = false;
    _currentLine ??= newTarget.clone();
    _previousLine = _currentLine.clone();
    _targetLine = newTarget;
  }

  _LineRendererElement<D> getCurrentLine(double animationPercent) {
    if (animationPercent == 1.0 || _previousLine == null) {
      _currentLine = _targetLine;
      _previousLine = _targetLine;
      return _currentLine;
    }

    _currentLine.updateAnimationPercent(
        _previousLine, _targetLine, animationPercent);

    return _currentLine;
  }

  /// Returns the [points] of the current target element, without updating
  /// animation state.
  List<_DatumPoint<D>> get currentPoints => _currentLine?.points;
}

/// Rendering information for the area skirt portion of a series.
class _AreaRendererElement<D> {
  List<_DatumPoint<D>> points;
  Color color;
  Color areaColor;
  _Range<D> domainExtent;
  double measureAxisPosition;
  _Range<num> positionExtent;
  String styleKey;

  _AreaRendererElement<D> clone() {
    return new _AreaRendererElement<D>()
      ..points = new List<_DatumPoint<D>>.from(points)
      ..color = color != null ? new Color.fromOther(color: color) : null
      ..areaColor =
          areaColor != null ? new Color.fromOther(color: areaColor) : null
      ..domainExtent = domainExtent
      ..measureAxisPosition = measureAxisPosition
      ..positionExtent = positionExtent
      ..styleKey = styleKey;
  }

  void updateAnimationPercent(_AreaRendererElement previous,
      _AreaRendererElement target, double animationPercent) {
    Point lastPoint;

    int pointIndex;
    for (pointIndex = 0; pointIndex < target.points.length; pointIndex++) {
      var targetPoint = target.points[pointIndex];

      // If we have more points than the previous line, animate in the new point
      // by starting its measure position at the last known official point.
      // TODO: Can this be done in setNewTarget instead?
      _DatumPoint<D> previousPoint;
      if (previous.points.length - 1 >= pointIndex) {
        previousPoint = previous.points[pointIndex];
        lastPoint = previousPoint;
      } else {
        previousPoint =
            new _DatumPoint<D>.from(targetPoint, targetPoint.x, lastPoint.y);
      }

      final x = ((targetPoint.x - previousPoint.x) * animationPercent) +
          previousPoint.x;

      double y;
      if (targetPoint.y != null && previousPoint.y != null) {
        y = ((targetPoint.y - previousPoint.y) * animationPercent) +
            previousPoint.y;
      } else if (targetPoint.y != null) {
        y = targetPoint.y;
      } else {
        y = null;
      }

      if (points.length - 1 >= pointIndex) {
        points[pointIndex] = new _DatumPoint<D>.from(targetPoint, x, y);
      } else {
        points.add(new _DatumPoint<D>.from(targetPoint, x, y));
      }
    }

    // Removing extra points that don't exist anymore.
    if (pointIndex < points.length) {
      points.removeRange(pointIndex, points.length);
    }

    color = getAnimatedColor(previous.color, target.color, animationPercent);

    if (areaColor != null) {
      areaColor = getAnimatedColor(
          previous.areaColor, target.areaColor, animationPercent);
    }
  }
}

/// Animates the area element of a series between different states.
class _AnimatedArea<D> {
  final String key;
  final bool overlaySeries;

  _AreaRendererElement<D> _previousArea;
  _AreaRendererElement<D> _targetArea;
  _AreaRendererElement<D> _currentArea;

  // Flag indicating whether this line is being animated out of the chart.
  bool animatingOut = false;

  _AnimatedArea({@required this.key, @required this.overlaySeries});

  /// Animates a line that was removed from the series out of the view.
  ///
  /// This should be called in place of "setNewTarget" for lines that represent
  /// data that has been removed from the series.
  ///
  /// Animates the height of the line down to the measure axis position
  /// (position of 0).
  void animateOut() {
    var newTarget = _currentArea.clone();

    // Set the target measure value to the axis position for all points.
    // TODO: Animate to the nearest areas in the stack.
    var newPoints = <_DatumPoint<D>>[];
    for (var index = 0; index < newTarget.points.length; index++) {
      var targetPoint = newTarget.points[index];

      newPoints.add(new _DatumPoint<D>.from(targetPoint, targetPoint.x,
          newTarget.measureAxisPosition.roundToDouble()));
    }

    newTarget.points = newPoints;

    setNewTarget(newTarget);
    animatingOut = true;
  }

  void setNewTarget(_AreaRendererElement<D> newTarget) {
    animatingOut = false;
    _currentArea ??= newTarget.clone();
    _previousArea = _currentArea.clone();
    _targetArea = newTarget;
  }

  _AreaRendererElement<D> getCurrentArea(double animationPercent) {
    if (animationPercent == 1.0 || _previousArea == null) {
      _currentArea = _targetArea;
      _previousArea = _targetArea;
      return _currentArea;
    }

    _currentArea.updateAnimationPercent(
        _previousArea, _targetArea, animationPercent);

    return _currentArea;
  }
}

class _AnimatedElements<D> {
  List<_DatumPoint<D>> allPoints;
  List<_AnimatedArea<D>> areas;
  List<_AnimatedLine<D>> lines;
  List<_AnimatedArea<D>> bounds;
  String styleKey;

  bool get animatingOut {
    var areasAnimatingOut = true;
    if (areas != null) {
      for (_AnimatedArea area in areas) {
        areasAnimatingOut = areasAnimatingOut && area.animatingOut;
      }
    }

    var linesAnimatingOut = true;
    if (lines != null) {
      for (_AnimatedLine line in lines) {
        linesAnimatingOut = linesAnimatingOut && line.animatingOut;
      }
    }

    var boundsAnimatingOut = true;
    if (bounds != null) {
      for (_AnimatedArea bound in bounds) {
        boundsAnimatingOut = boundsAnimatingOut && bound.animatingOut;
      }
    }

    return areasAnimatingOut && linesAnimatingOut && boundsAnimatingOut;
  }

  bool get overlaySeries {
    var areasOverlaySeries = true;
    if (areas != null) {
      for (_AnimatedArea area in areas) {
        areasOverlaySeries = areasOverlaySeries && area.overlaySeries;
      }
    }

    var linesOverlaySeries = true;
    if (lines != null) {
      for (_AnimatedLine line in lines) {
        linesOverlaySeries = linesOverlaySeries && line.overlaySeries;
      }
    }

    var boundsOverlaySeries = true;
    if (bounds != null) {
      for (_AnimatedArea bound in bounds) {
        boundsOverlaySeries = boundsOverlaySeries && bound.overlaySeries;
      }
    }

    return areasOverlaySeries && linesOverlaySeries && boundsOverlaySeries;
  }
}

/// Describes a numeric range with a start and end value.
///
/// [start] must always be less than [end].
class _Range<D> {
  D _start;
  D _end;

  _Range(D start, D end) {
    _start = start;
    _end = end;
  }

  /// Gets the start of the range.
  D get start => _start;

  /// Gets the end of the range.
  D get end => _end;

  /// Extends the range to include [value].
  void includePoint(D value) {
    if (value == null) {
      return;
    } else if (value is num || value is double || value is int) {
      _includePointAsNum(value);
    } else if (value is DateTime) {
      _includePointAsDateTime(value);
    } else if (value is String) {
      _includePointAsString(value);
    } else {
      throw ('Unsupported object type for LineRenderer domain value: '
          '${value.runtimeType}');
    }
  }

  /// Extends the range to include value by casting as numbers.
  void _includePointAsNum(D value) {
    if ((value as num) < (_start as num)) {
      _start = value;
    } else if ((value as num) > (_end as num)) {
      _end = value;
    }
  }

  /// Extends the range to include value by casting as DateTime objects.
  void _includePointAsDateTime(D value) {
    if ((value as DateTime).isBefore(_start as DateTime)) {
      _start = value;
    } else if ((value as DateTime).isAfter(_end as DateTime)) {
      _end = value;
    }
  }

  /// Extends the range to include value by casting as String objects.
  ///
  /// In this case, we assume that the data is ordered in the same order as the
  /// axis.
  void _includePointAsString(D value) {
    _end = value;
  }
}

@visibleForTesting
class LineRendererTester<D> {
  final LineRenderer<D> renderer;

  LineRendererTester(this.renderer);

  Iterable<String> get seriesKeys => renderer._seriesLineMap.keys;

  void setSeriesKeys(List<String> keys) {
    renderer._seriesLineMap.addEntries(keys.map((key) => MapEntry(key, [])));
  }

  void merge(List<ImmutableSeries<D>> series) {
    renderer._mergeIntoSeriesMap(series);
  }
}
