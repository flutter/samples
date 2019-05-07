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

import 'package:charts_common/common.dart' as common
    show
        AxisSpec,
        BarChart,
        BarGroupingType,
        BarRendererConfig,
        BarRendererDecorator,
        NumericAxisSpec,
        RTLSpec,
        Series,
        SeriesRendererConfig;
import 'behaviors/domain_highlighter.dart' show DomainHighlighter;
import 'behaviors/chart_behavior.dart' show ChartBehavior;
import 'package:meta/meta.dart' show immutable;
import 'base_chart.dart' show LayoutConfig;
import 'base_chart_state.dart' show BaseChartState;
import 'cartesian_chart.dart' show CartesianChart;
import 'selection_model_config.dart' show SelectionModelConfig;
import 'user_managed_state.dart' show UserManagedState;

@immutable
class BarChart extends CartesianChart<String> {
  final bool vertical;
  final common.BarRendererDecorator barRendererDecorator;

  BarChart(
    List<common.Series<dynamic, String>> seriesList, {
    bool animate,
    Duration animationDuration,
    common.AxisSpec domainAxis,
    common.AxisSpec primaryMeasureAxis,
    common.AxisSpec secondaryMeasureAxis,
    LinkedHashMap<String, common.NumericAxisSpec> disjointMeasureAxes,
    common.BarGroupingType barGroupingType,
    common.BarRendererConfig<String> defaultRenderer,
    List<common.SeriesRendererConfig<String>> customSeriesRenderers,
    List<ChartBehavior> behaviors,
    List<SelectionModelConfig<String>> selectionModels,
    common.RTLSpec rtlSpec,
    this.vertical: true,
    bool defaultInteractions: true,
    LayoutConfig layoutConfig,
    UserManagedState<String> userManagedState,
    this.barRendererDecorator,
    bool flipVerticalAxis,
  }) : super(
          seriesList,
          animate: animate,
          animationDuration: animationDuration,
          domainAxis: domainAxis,
          primaryMeasureAxis: primaryMeasureAxis,
          secondaryMeasureAxis: secondaryMeasureAxis,
          disjointMeasureAxes: disjointMeasureAxes,
          defaultRenderer: defaultRenderer ??
              new common.BarRendererConfig<String>(
                  groupingType: barGroupingType,
                  barRendererDecorator: barRendererDecorator),
          customSeriesRenderers: customSeriesRenderers,
          behaviors: behaviors,
          selectionModels: selectionModels,
          rtlSpec: rtlSpec,
          defaultInteractions: defaultInteractions,
          layoutConfig: layoutConfig,
          userManagedState: userManagedState,
          flipVerticalAxis: flipVerticalAxis,
        );

  @override
  common.BarChart createCommonChart(BaseChartState chartState) {
    // Optionally create primary and secondary measure axes if the chart was
    // configured with them. If no axes were configured, then the chart will
    // use its default types (usually a numeric axis).
    return new common.BarChart(
        vertical: vertical,
        layoutConfig: layoutConfig?.commonLayoutConfig,
        primaryMeasureAxis: primaryMeasureAxis?.createAxis(),
        secondaryMeasureAxis: secondaryMeasureAxis?.createAxis(),
        disjointMeasureAxes: createDisjointMeasureAxes());
  }

  @override
  void addDefaultInteractions(List<ChartBehavior> behaviors) {
    super.addDefaultInteractions(behaviors);

    behaviors.add(new DomainHighlighter());
  }
}
