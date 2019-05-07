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

import 'package:charts_common/common.dart' as common
    show
        AxisSpec,
        NumericCartesianChart,
        OrdinalCartesianChart,
        RTLSpec,
        Series,
        SeriesRendererConfig;
import '../behaviors/chart_behavior.dart' show ChartBehavior;
import '../base_chart.dart' show LayoutConfig;
import '../base_chart_state.dart' show BaseChartState;
import '../cartesian_chart.dart' show CartesianChart;
import '../selection_model_config.dart' show SelectionModelConfig;

/// A numeric combo chart supports rendering each series of data with different
/// series renderers.
///
/// Note that if you have DateTime data, you should use [TimeSeriesChart]. We do
/// not expose a separate DateTimeComboChart because it would just be a copy of
/// that chart.
class NumericComboChart extends CartesianChart<num> {
  NumericComboChart(
    List<common.Series> seriesList, {
    bool animate,
    Duration animationDuration,
    common.AxisSpec domainAxis,
    common.AxisSpec primaryMeasureAxis,
    common.AxisSpec secondaryMeasureAxis,
    common.SeriesRendererConfig<num> defaultRenderer,
    List<common.SeriesRendererConfig<num>> customSeriesRenderers,
    List<ChartBehavior> behaviors,
    List<SelectionModelConfig<num>> selectionModels,
    common.RTLSpec rtlSpec,
    LayoutConfig layoutConfig,
    bool defaultInteractions: true,
  }) : super(
          seriesList,
          animate: animate,
          animationDuration: animationDuration,
          domainAxis: domainAxis,
          primaryMeasureAxis: primaryMeasureAxis,
          secondaryMeasureAxis: secondaryMeasureAxis,
          defaultRenderer: defaultRenderer,
          customSeriesRenderers: customSeriesRenderers,
          behaviors: behaviors,
          selectionModels: selectionModels,
          rtlSpec: rtlSpec,
          layoutConfig: layoutConfig,
          defaultInteractions: defaultInteractions,
        );

  @override
  common.NumericCartesianChart createCommonChart(BaseChartState chartState) {
    // Optionally create primary and secondary measure axes if the chart was
    // configured with them. If no axes were configured, then the chart will
    // use its default types (usually a numeric axis).
    return new common.NumericCartesianChart(
        layoutConfig: layoutConfig?.commonLayoutConfig,
        primaryMeasureAxis: primaryMeasureAxis?.createAxis(),
        secondaryMeasureAxis: secondaryMeasureAxis?.createAxis());
  }
}

/// An ordinal combo chart supports rendering each series of data with different
/// series renderers.
class OrdinalComboChart extends CartesianChart<String> {
  OrdinalComboChart(
    List<common.Series> seriesList, {
    bool animate,
    Duration animationDuration,
    common.AxisSpec domainAxis,
    common.AxisSpec primaryMeasureAxis,
    common.AxisSpec secondaryMeasureAxis,
    common.SeriesRendererConfig<String> defaultRenderer,
    List<common.SeriesRendererConfig<String>> customSeriesRenderers,
    List<ChartBehavior> behaviors,
    List<SelectionModelConfig<String>> selectionModels,
    common.RTLSpec rtlSpec,
    LayoutConfig layoutConfig,
    bool defaultInteractions: true,
  }) : super(
          seriesList,
          animate: animate,
          animationDuration: animationDuration,
          domainAxis: domainAxis,
          primaryMeasureAxis: primaryMeasureAxis,
          secondaryMeasureAxis: secondaryMeasureAxis,
          defaultRenderer: defaultRenderer,
          customSeriesRenderers: customSeriesRenderers,
          behaviors: behaviors,
          selectionModels: selectionModels,
          rtlSpec: rtlSpec,
          layoutConfig: layoutConfig,
          defaultInteractions: defaultInteractions,
        );

  @override
  common.OrdinalCartesianChart createCommonChart(BaseChartState chartState) {
    // Optionally create primary and secondary measure axes if the chart was
    // configured with them. If no axes were configured, then the chart will
    // use its default types (usually a numeric axis).
    return new common.OrdinalCartesianChart(
        layoutConfig: layoutConfig?.commonLayoutConfig,
        primaryMeasureAxis: primaryMeasureAxis?.createAxis(),
        secondaryMeasureAxis: secondaryMeasureAxis?.createAxis());
  }
}
