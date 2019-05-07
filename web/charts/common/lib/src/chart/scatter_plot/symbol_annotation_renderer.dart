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
import 'dart:math' show max, Rectangle;

import 'package:meta/meta.dart' show required;

import '../../common/graphics_factory.dart' show GraphicsFactory;
import '../cartesian/axis/axis.dart' show ImmutableAxis;
import '../cartesian/cartesian_chart.dart' show CartesianChart;
import '../common/base_chart.dart' show BaseChart;
import '../common/chart_canvas.dart' show ChartCanvas;
import '../common/processed_series.dart' show ImmutableSeries, MutableSeries;
import '../layout/layout_view.dart'
    show
        LayoutPosition,
        LayoutView,
        LayoutViewConfig,
        LayoutViewPaintOrder,
        LayoutViewPositionOrder,
        ViewMeasuredSizes;
import 'point_renderer.dart' show AnimatedPoint, DatumPoint, PointRenderer;
import 'symbol_annotation_renderer_config.dart'
    show SymbolAnnotationRendererConfig;

/// Series renderer which draws a row of symbols for each series below the
/// drawArea but above the bottom axis.
///
/// This renderer can draw point annotations and range annotations. Point
/// annotations are drawn at the location of the domain along the chart's domain
/// axis, in the row for its series. Range annotations are drawn as a range
/// shape between the domainLowerBound and domainUpperBound positions along the
/// chart's domain axis. Point annotations are drawn on top of range
/// annotations.
///
/// Limitations:
/// Does not handle horizontal bars.
class SymbolAnnotationRenderer<D> extends PointRenderer<D>
    implements LayoutView {
  Rectangle<int> _componentBounds;
  GraphicsFactory _graphicsFactory;

  CartesianChart<D> _chart;

  var _currentHeight = 0;

  final _seriesInfo = new LinkedHashMap<String, _SeriesInfo<D>>();

  SymbolAnnotationRenderer(
      {String rendererId, SymbolAnnotationRendererConfig config})
      : super(rendererId: rendererId ?? 'symbolAnnotation', config: config);

  //
  // Renderer methods
  //
  /// Symbol annotations do not use any measure axes, or draw anything in the
  /// main draw area associated with them.
  @override
  void configureMeasureAxes(List<MutableSeries<D>> seriesList) {}

  @override
  void preprocessSeries(List<MutableSeries<D>> seriesList) {
    var localConfig = (config as SymbolAnnotationRendererConfig);

    _seriesInfo.clear();

    double offset = 0.0;

    seriesList.forEach((MutableSeries<D> series) {
      final seriesKey = series.id;

      // Default to the configured radius if none was defined by the series.
      series.radiusPxFn ??= (_) => config.radiusPx;

      var maxRadius = 0.0;
      for (var index = 0; index < series.data.length; index++) {
        // Default to the configured radius if none was returned by the
        // accessor function.
        var radiusPx = series.radiusPxFn(index);
        radiusPx ??= config.radiusPx;

        maxRadius = max(maxRadius, radiusPx);
      }

      final rowInnerHeight = maxRadius * 2;

      final rowHeight = localConfig.verticalSymbolBottomPaddingPx +
          localConfig.verticalSymbolTopPaddingPx +
          rowInnerHeight;

      final symbolCenter = offset +
          localConfig.verticalSymbolTopPaddingPx +
          (rowInnerHeight / 2);

      series.measureFn = (int index) => 0;
      series.measureOffsetFn = (int index) => 0;

      // Override the key function to allow for range annotations that start at
      // the same point. This is a necessary hack because every annotation has a
      // measure value of 0, so the key generated in [PointRenderer] is not
      // unique enough.
      series.keyFn ??=
          (int index) => '${series.id}__${series.domainFn(index)}__'
              '${series.domainLowerBoundFn(index)}__'
              '${series.domainUpperBoundFn(index)}';

      _seriesInfo[seriesKey] = new _SeriesInfo<D>(
        rowHeight: rowHeight,
        rowStart: offset,
        symbolCenter: symbolCenter,
      );

      offset += rowHeight;
    });

    _currentHeight = offset.ceil();

    super.preprocessSeries(seriesList);
  }

  @override
  DatumPoint<D> getPoint(
      final datum,
      D domainValue,
      D domainLowerBoundValue,
      D domainUpperBoundValue,
      ImmutableSeries<D> series,
      ImmutableAxis<D> domainAxis,
      num measureValue,
      num measureLowerBoundValue,
      num measureUpperBoundValue,
      num measureOffsetValue,
      ImmutableAxis<num> measureAxis) {
    final domainPosition = domainAxis.getLocation(domainValue);

    final domainLowerBoundPosition = domainLowerBoundValue != null
        ? domainAxis.getLocation(domainLowerBoundValue)
        : null;

    final domainUpperBoundPosition = domainUpperBoundValue != null
        ? domainAxis.getLocation(domainUpperBoundValue)
        : null;

    final seriesKey = series.id;
    final seriesInfo = _seriesInfo[seriesKey];

    final measurePosition = _componentBounds.top + seriesInfo.symbolCenter;

    final measureLowerBoundPosition =
        domainLowerBoundPosition != null ? measurePosition : null;

    final measureUpperBoundPosition =
        domainUpperBoundPosition != null ? measurePosition : null;

    return new DatumPoint<D>(
        datum: datum,
        domain: domainValue,
        series: series,
        x: domainPosition,
        xLower: domainLowerBoundPosition,
        xUpper: domainUpperBoundPosition,
        y: measurePosition,
        yLower: measureLowerBoundPosition,
        yUpper: measureUpperBoundPosition);
  }

  @override
  void onAttach(BaseChart<D> chart) {
    if (!(chart is CartesianChart)) {
      throw new ArgumentError(
          'SymbolAnnotationRenderer can only be attached to a CartesianChart');
    }

    _chart = chart as CartesianChart;

    // Only vertical rendering is supported by this behavior.
    assert(_chart.vertical);

    super.onAttach(chart);
    _chart.addView(this);
  }

  @override
  void onDetach(BaseChart chart) {
    chart.removeView(this);
  }

  @override
  void paint(ChartCanvas canvas, double animationPercent) {
    super.paint(canvas, animationPercent);

    // Use the domain axis of the attached chart to render the separator lines
    // to keep the same overall style.
    if ((config as SymbolAnnotationRendererConfig).showSeparatorLines) {
      seriesPointMap.forEach((String key, List<AnimatedPoint<D>> points) {
        final seriesInfo = _seriesInfo[key];

        final y = componentBounds.top + seriesInfo.rowStart;

        final domainAxis = _chart.domainAxis;
        final bounds = new Rectangle<int>(
            componentBounds.left, y.round(), componentBounds.width, 0);
        domainAxis.tickDrawStrategy
            .drawAxisLine(canvas, domainAxis.axisOrientation, bounds);
      });
    }
  }

  @override
  GraphicsFactory get graphicsFactory => _graphicsFactory;

  @override
  set graphicsFactory(GraphicsFactory value) {
    _graphicsFactory = value;
  }

  //
  // Layout methods
  //

  @override
  LayoutViewConfig get layoutConfig {
    return new LayoutViewConfig(
        paintOrder: LayoutViewPaintOrder.point,
        position: LayoutPosition.Bottom,
        positionOrder: LayoutViewPositionOrder.symbolAnnotation);
  }

  @override
  ViewMeasuredSizes measure(int maxWidth, int maxHeight) {
    // The sizing of component is not flexible. It's height is always a multiple
    // of the number of series rendered, even if that ends up taking all of the
    // available margin space.
    return new ViewMeasuredSizes(
        preferredWidth: maxWidth, preferredHeight: _currentHeight);
  }

  @override
  void layout(Rectangle<int> componentBounds, Rectangle<int> drawAreaBounds) {
    _componentBounds = componentBounds;

    super.layout(componentBounds, drawAreaBounds);
  }

  @override
  Rectangle<int> get componentBounds => _componentBounds;
}

class _SeriesInfo<D> {
  double rowHeight;
  double rowStart;
  double symbolCenter;

  _SeriesInfo(
      {@required this.rowHeight,
      @required this.rowStart,
      @required this.symbolCenter});
}
