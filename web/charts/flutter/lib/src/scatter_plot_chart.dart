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
        NumericAxisSpec,
        PointRendererConfig,
        RTLSpec,
        ScatterPlotChart,
        SeriesRendererConfig,
        Series;
import 'behaviors/chart_behavior.dart' show ChartBehavior;
import 'base_chart.dart' show LayoutConfig;
import 'base_chart_state.dart' show BaseChartState;
import 'cartesian_chart.dart' show CartesianChart;
import 'selection_model_config.dart' show SelectionModelConfig;
import 'user_managed_state.dart' show UserManagedState;

class ScatterPlotChart extends CartesianChart<num> {
  ScatterPlotChart(
    List<common.Series> seriesList, {
    bool animate,
    Duration animationDuration,
    common.AxisSpec domainAxis,
    common.AxisSpec primaryMeasureAxis,
    common.AxisSpec secondaryMeasureAxis,
    LinkedHashMap<String, common.NumericAxisSpec> disjointMeasureAxes,
    common.PointRendererConfig<num> defaultRenderer,
    List<common.SeriesRendererConfig<num>> customSeriesRenderers,
    List<ChartBehavior> behaviors,
    List<SelectionModelConfig<num>> selectionModels,
    common.RTLSpec rtlSpec,
    LayoutConfig layoutConfig,
    bool defaultInteractions: true,
    bool flipVerticalAxis,
    UserManagedState<num> userManagedState,
  }) : super(
          seriesList,
          animate: animate,
          animationDuration: animationDuration,
          domainAxis: domainAxis,
          primaryMeasureAxis: primaryMeasureAxis,
          secondaryMeasureAxis: secondaryMeasureAxis,
          disjointMeasureAxes: disjointMeasureAxes,
          defaultRenderer: defaultRenderer,
          customSeriesRenderers: customSeriesRenderers,
          behaviors: behaviors,
          selectionModels: selectionModels,
          rtlSpec: rtlSpec,
          layoutConfig: layoutConfig,
          defaultInteractions: defaultInteractions,
          flipVerticalAxis: flipVerticalAxis,
          userManagedState: userManagedState,
        );

  @override
  common.ScatterPlotChart createCommonChart(BaseChartState chartState) {
    // Optionally create primary and secondary measure axes if the chart was
    // configured with them. If no axes were configured, then the chart will
    // use its default types (usually a numeric axis).
    return new common.ScatterPlotChart(
        layoutConfig: layoutConfig?.commonLayoutConfig,
        primaryMeasureAxis: primaryMeasureAxis?.createAxis(),
        secondaryMeasureAxis: secondaryMeasureAxis?.createAxis(),
        disjointMeasureAxes: createDisjointMeasureAxes());
  }
}
