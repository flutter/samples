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
import 'package:meta/meta.dart' show immutable, protected;

import 'package:charts_common/common.dart' as common
    show
        AxisSpec,
        BaseChart,
        CartesianChart,
        NumericAxis,
        NumericAxisSpec,
        RTLSpec,
        Series,
        SeriesRendererConfig;
import 'base_chart_state.dart' show BaseChartState;
import 'behaviors/chart_behavior.dart' show ChartBehavior;
import 'base_chart.dart' show BaseChart, LayoutConfig;
import 'selection_model_config.dart' show SelectionModelConfig;
import 'user_managed_state.dart' show UserManagedState;

@immutable
abstract class CartesianChart<D> extends BaseChart<D> {
  final common.AxisSpec domainAxis;
  final common.AxisSpec primaryMeasureAxis;
  final common.AxisSpec secondaryMeasureAxis;
  final LinkedHashMap<String, common.NumericAxisSpec> disjointMeasureAxes;
  final bool flipVerticalAxis;

  CartesianChart(
    List<common.Series<dynamic, D>> seriesList, {
    bool animate,
    Duration animationDuration,
    this.domainAxis,
    this.primaryMeasureAxis,
    this.secondaryMeasureAxis,
    this.disjointMeasureAxes,
    common.SeriesRendererConfig<D> defaultRenderer,
    List<common.SeriesRendererConfig<D>> customSeriesRenderers,
    List<ChartBehavior> behaviors,
    List<SelectionModelConfig<D>> selectionModels,
    common.RTLSpec rtlSpec,
    bool defaultInteractions: true,
    LayoutConfig layoutConfig,
    UserManagedState userManagedState,
    this.flipVerticalAxis,
  }) : super(
          seriesList,
          animate: animate,
          animationDuration: animationDuration,
          defaultRenderer: defaultRenderer,
          customSeriesRenderers: customSeriesRenderers,
          behaviors: behaviors,
          selectionModels: selectionModels,
          rtlSpec: rtlSpec,
          defaultInteractions: defaultInteractions,
          layoutConfig: layoutConfig,
          userManagedState: userManagedState,
        );

  @override
  void updateCommonChart(common.BaseChart baseChart, BaseChart oldWidget,
      BaseChartState chartState) {
    super.updateCommonChart(baseChart, oldWidget, chartState);

    final prev = oldWidget as CartesianChart;
    final chart = baseChart as common.CartesianChart;

    if (flipVerticalAxis != null) {
      chart.flipVerticalAxisOutput = flipVerticalAxis;
    }

    if (domainAxis != null && domainAxis != prev?.domainAxis) {
      chart.domainAxisSpec = domainAxis;
      chartState.markChartDirty();
    }

    if (primaryMeasureAxis != null &&
        primaryMeasureAxis != prev?.primaryMeasureAxis) {
      chart.primaryMeasureAxisSpec = primaryMeasureAxis;
      chartState.markChartDirty();
    }

    if (secondaryMeasureAxis != null &&
        secondaryMeasureAxis != prev?.secondaryMeasureAxis) {
      chart.secondaryMeasureAxisSpec = secondaryMeasureAxis;
      chartState.markChartDirty();
    }

    if (disjointMeasureAxes != null &&
        disjointMeasureAxes != prev?.disjointMeasureAxes) {
      chart.disjointMeasureAxisSpecs = disjointMeasureAxes;
      chartState.markChartDirty();
    }
  }

  @protected
  LinkedHashMap<String, common.NumericAxis> createDisjointMeasureAxes() {
    if (disjointMeasureAxes != null) {
      final disjointAxes = new LinkedHashMap<String, common.NumericAxis>();

      disjointMeasureAxes
          .forEach((String axisId, common.NumericAxisSpec axisSpec) {
        disjointAxes[axisId] = axisSpec.createAxis();
      });

      return disjointAxes;
    } else {
      return null;
    }
  }
}
