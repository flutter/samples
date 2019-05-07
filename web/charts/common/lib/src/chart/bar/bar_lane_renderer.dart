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

import '../../data/series.dart' show AttributeKey;
import '../cartesian/axis/axis.dart'
    show ImmutableAxis, domainAxisKey, measureAxisKey;
import '../cartesian/cartesian_chart.dart' show CartesianChart;
import '../common/chart_canvas.dart' show ChartCanvas;
import '../common/processed_series.dart' show ImmutableSeries, MutableSeries;
import 'bar_lane_renderer_config.dart' show BarLaneRendererConfig;
import 'bar_renderer.dart' show AnimatedBar, BarRenderer, BarRendererElement;
import 'bar_renderer_decorator.dart' show BarRendererDecorator;
import 'base_bar_renderer.dart'
    show
        barGroupCountKey,
        barGroupIndexKey,
        barGroupWeightKey,
        previousBarGroupWeightKey,
        stackKeyKey;
import 'base_bar_renderer_element.dart' show BaseBarRendererElement;

/// Key for storing a list of all domain values that exist in the series data.
///
/// In grouped stacked mode, this list will contain a combination of domain
/// value and series category.
const domainValuesKey = const AttributeKey<Set>('BarLaneRenderer.domainValues');

/// Renders series data as a series of bars with lanes.
///
/// Every stack of bars will have a swim lane rendered underneath the series
/// data, in a gray color by default. The swim lane occupies the same width as
/// the bar elements, and will be completely covered up if the bar stack happens
/// to take up the entire measure domain range.
///
/// If every bar that shares a domain value has a null measure value, then the
/// swim lanes may optionally be merged together into one wide lane that covers
/// the full domain range band width.
class BarLaneRenderer<D> extends BarRenderer<D> {
  final BarRendererDecorator barRendererDecorator;

  /// Store a map of domain+barGroupIndex+category index to bar lanes in a
  /// stack.
  ///
  /// This map is used to render all the bars in a stack together, to account
  /// for rendering effects that need to take the full stack into account (e.g.
  /// corner rounding).
  ///
  /// [LinkedHashMap] is used to render the bars on the canvas in the same order
  /// as the data was given to the chart. For the case where both grouping and
  /// stacking are disabled, this means that bars for data later in the series
  /// will be drawn "on top of" bars earlier in the series.
  final _barLaneStackMap = new LinkedHashMap<String, List<AnimatedBar<D>>>();

  /// Store a map of flags to track whether all measure values for a given
  /// domain value are null, for every series on the chart.
  final _allMeasuresForDomainNullMap = new LinkedHashMap<D, bool>();

  factory BarLaneRenderer({BarLaneRendererConfig config, String rendererId}) {
    rendererId ??= 'bar';
    config ??= new BarLaneRendererConfig();
    return new BarLaneRenderer._internal(
        config: config, rendererId: rendererId);
  }

  BarLaneRenderer._internal({BarLaneRendererConfig config, String rendererId})
      : barRendererDecorator = config.barRendererDecorator,
        super.internal(config: config, rendererId: rendererId);

  @override
  void preprocessSeries(List<MutableSeries<D>> seriesList) {
    super.preprocessSeries(seriesList);

    _allMeasuresForDomainNullMap.clear();

    seriesList.forEach((MutableSeries<D> series) {
      final domainFn = series.domainFn;
      final measureFn = series.rawMeasureFn;

      final domainValues = new Set<D>();

      for (var barIndex = 0; barIndex < series.data.length; barIndex++) {
        final domain = domainFn(barIndex);
        final measure = measureFn(barIndex);

        domainValues.add(domain);

        // Update the "all measure null" tracking for bars that have the
        // current domain value.
        if ((config as BarLaneRendererConfig).mergeEmptyLanes) {
          final allNull = _allMeasuresForDomainNullMap[domain];
          final isNull = measure == null;

          _allMeasuresForDomainNullMap[domain] =
              allNull != null ? allNull && isNull : isNull;
        }
      }

      series.setAttr(domainValuesKey, domainValues);
    });
  }

  @override
  void update(List<ImmutableSeries<D>> seriesList, bool isAnimatingThisDraw) {
    super.update(seriesList, isAnimatingThisDraw);

    // Add gray bars to render under every bar stack.
    seriesList.forEach((ImmutableSeries<D> series) {
      Set<D> domainValues = series.getAttr(domainValuesKey) as Set<D>;

      final domainAxis = series.getAttr(domainAxisKey) as ImmutableAxis<D>;
      final measureAxis = series.getAttr(measureAxisKey) as ImmutableAxis<num>;
      final seriesStackKey = series.getAttr(stackKeyKey);
      final barGroupCount = series.getAttr(barGroupCountKey);
      final barGroupIndex = series.getAttr(barGroupIndexKey);
      final previousBarGroupWeight = series.getAttr(previousBarGroupWeightKey);
      final barGroupWeight = series.getAttr(barGroupWeightKey);
      final measureAxisPosition = measureAxis.getLocation(0.0);
      final maxMeasureValue = _getMaxMeasureValue(measureAxis);

      // Create a fake series for [BarLabelDecorator] to use when looking up the
      // index of each datum.
      final laneSeries = new MutableSeries<D>.clone(seriesList[0]);
      laneSeries.data = [];

      // Don't render any labels on the swim lanes.
      laneSeries.labelAccessorFn = (int index) => '';

      var laneSeriesIndex = 0;
      domainValues.forEach((D domainValue) {
        // Skip adding any background bars if they will be covered up by the
        // domain-spanning null bar.
        if (_allMeasuresForDomainNullMap[domainValue] == true) {
          return;
        }

        // Add a fake datum to the series for [BarLabelDecorator].
        final datum = {'index': laneSeriesIndex};
        laneSeries.data.add(datum);

        // Each bar should be stored in barStackMap in a structure that mirrors
        // the visual rendering of the bars. Thus, they should be grouped by
        // domain value, series category (by way of the stack keys that were
        // generated for each series in the preprocess step), and bar group
        // index to account for all combinations of grouping and stacking.
        final barStackMapKey = domainValue.toString() +
            '__' +
            seriesStackKey +
            '__' +
            barGroupIndex.toString();

        final barKey = barStackMapKey + '0';

        final barStackList = _barLaneStackMap.putIfAbsent(
            barStackMapKey, () => <AnimatedBar<D>>[]);

        // If we already have an AnimatingBar for that index, use it.
        var animatingBar = barStackList.firstWhere(
            (AnimatedBar bar) => bar.key == barKey,
            orElse: () => null);

        // If we don't have any existing bar element, create a new bar and have
        // it animate in from the domain axis.
        if (animatingBar == null) {
          animatingBar = makeAnimatedBar(
              key: barKey,
              series: laneSeries,
              datum: datum,
              barGroupIndex: barGroupIndex,
              previousBarGroupWeight: previousBarGroupWeight,
              barGroupWeight: barGroupWeight,
              color: (config as BarLaneRendererConfig).backgroundBarColor,
              details: new BarRendererElement<D>(),
              domainValue: domainValue,
              domainAxis: domainAxis,
              domainWidth: domainAxis.rangeBand.round(),
              fillColor: (config as BarLaneRendererConfig).backgroundBarColor,
              measureValue: maxMeasureValue,
              measureOffsetValue: 0.0,
              measureAxisPosition: measureAxisPosition,
              measureAxis: measureAxis,
              numBarGroups: barGroupCount,
              strokeWidthPx: config.strokeWidthPx,
              measureIsNull: false,
              measureIsNegative: false);

          barStackList.add(animatingBar);
        } else {
          animatingBar
            ..datum = datum
            ..series = laneSeries
            ..domainValue = domainValue;
        }

        // Get the barElement we are going to setup.
        // Optimization to prevent allocation in non-animating case.
        BaseBarRendererElement barElement = makeBarRendererElement(
            barGroupIndex: barGroupIndex,
            previousBarGroupWeight: previousBarGroupWeight,
            barGroupWeight: barGroupWeight,
            color: (config as BarLaneRendererConfig).backgroundBarColor,
            details: new BarRendererElement<D>(),
            domainValue: domainValue,
            domainAxis: domainAxis,
            domainWidth: domainAxis.rangeBand.round(),
            fillColor: (config as BarLaneRendererConfig).backgroundBarColor,
            measureValue: maxMeasureValue,
            measureOffsetValue: 0.0,
            measureAxisPosition: measureAxisPosition,
            measureAxis: measureAxis,
            numBarGroups: barGroupCount,
            strokeWidthPx: config.strokeWidthPx,
            measureIsNull: false,
            measureIsNegative: false);

        animatingBar.setNewTarget(barElement);

        laneSeriesIndex++;
      });
    });

    // Add domain-spanning bars to render when every measure value for every
    // datum of a given domain is null.
    if ((config as BarLaneRendererConfig).mergeEmptyLanes) {
      // Use the axes from the first series.
      final domainAxis =
          seriesList[0].getAttr(domainAxisKey) as ImmutableAxis<D>;
      final measureAxis =
          seriesList[0].getAttr(measureAxisKey) as ImmutableAxis<num>;

      final measureAxisPosition = measureAxis.getLocation(0.0);
      final maxMeasureValue = _getMaxMeasureValue(measureAxis);

      final barGroupIndex = 0;
      final previousBarGroupWeight = 0.0;
      final barGroupWeight = 1.0;
      final barGroupCount = 1;

      // Create a fake series for [BarLabelDecorator] to use when looking up the
      // index of each datum. We don't care about any other series values for
      // the merged lanes, so just clone the first series.
      final mergedSeries = new MutableSeries<D>.clone(seriesList[0]);
      mergedSeries.data = [];

      // Add a label accessor that returns the empty lane label.
      mergedSeries.labelAccessorFn =
          (int index) => (config as BarLaneRendererConfig).emptyLaneLabel;

      var mergedSeriesIndex = 0;
      _allMeasuresForDomainNullMap.forEach((D domainValue, bool allNull) {
        if (allNull) {
          // Add a fake datum to the series for [BarLabelDecorator].
          final datum = {'index': mergedSeriesIndex};
          mergedSeries.data.add(datum);

          final barStackMapKey = domainValue.toString() + '__allNull__';

          final barKey = barStackMapKey + '0';

          final barStackList = _barLaneStackMap.putIfAbsent(
              barStackMapKey, () => <AnimatedBar<D>>[]);

          // If we already have an AnimatingBar for that index, use it.
          var animatingBar = barStackList.firstWhere(
              (AnimatedBar bar) => bar.key == barKey,
              orElse: () => null);

          // If we don't have any existing bar element, create a new bar and have
          // it animate in from the domain axis.
          if (animatingBar == null) {
            animatingBar = makeAnimatedBar(
                key: barKey,
                series: mergedSeries,
                datum: datum,
                barGroupIndex: barGroupIndex,
                previousBarGroupWeight: previousBarGroupWeight,
                barGroupWeight: barGroupWeight,
                color: (config as BarLaneRendererConfig).backgroundBarColor,
                details: new BarRendererElement<D>(),
                domainValue: domainValue,
                domainAxis: domainAxis,
                domainWidth: domainAxis.rangeBand.round(),
                fillColor: (config as BarLaneRendererConfig).backgroundBarColor,
                measureValue: maxMeasureValue,
                measureOffsetValue: 0.0,
                measureAxisPosition: measureAxisPosition,
                measureAxis: measureAxis,
                numBarGroups: barGroupCount,
                strokeWidthPx: config.strokeWidthPx,
                measureIsNull: false,
                measureIsNegative: false);

            barStackList.add(animatingBar);
          } else {
            animatingBar
              ..datum = datum
              ..series = mergedSeries
              ..domainValue = domainValue;
          }

          // Get the barElement we are going to setup.
          // Optimization to prevent allocation in non-animating case.
          BaseBarRendererElement barElement = makeBarRendererElement(
              barGroupIndex: barGroupIndex,
              previousBarGroupWeight: previousBarGroupWeight,
              barGroupWeight: barGroupWeight,
              color: (config as BarLaneRendererConfig).backgroundBarColor,
              details: new BarRendererElement<D>(),
              domainValue: domainValue,
              domainAxis: domainAxis,
              domainWidth: domainAxis.rangeBand.round(),
              fillColor: (config as BarLaneRendererConfig).backgroundBarColor,
              measureValue: maxMeasureValue,
              measureOffsetValue: 0.0,
              measureAxisPosition: measureAxisPosition,
              measureAxis: measureAxis,
              numBarGroups: barGroupCount,
              strokeWidthPx: config.strokeWidthPx,
              measureIsNull: false,
              measureIsNegative: false);

          animatingBar.setNewTarget(barElement);

          mergedSeriesIndex++;
        }
      });
    }
  }

  /// Gets the maximum measure value that will fit in the draw area.
  num _getMaxMeasureValue(ImmutableAxis<num> measureAxis) {
    final pos = (chart as CartesianChart).vertical
        ? chart.drawAreaBounds.top
        : isRtl ? chart.drawAreaBounds.left : chart.drawAreaBounds.right;

    return measureAxis.getDomain(pos.toDouble());
  }

  /// Paints the current bar data on the canvas.
  @override
  void paint(ChartCanvas canvas, double animationPercent) {
    _barLaneStackMap.forEach((String stackKey, List<AnimatedBar<D>> barStack) {
      // Turn this into a list so that the getCurrentBar isn't called more than
      // once for each animationPercent if the barElements are iterated more
      // than once.
      List<BarRendererElement<D>> barElements = barStack
          .map((AnimatedBar<D> animatingBar) =>
              animatingBar.getCurrentBar(animationPercent))
          .toList();

      paintBar(canvas, animationPercent, barElements);
    });

    super.paint(canvas, animationPercent);
  }
}
