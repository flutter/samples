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
        BaseChart,
        LayoutConfig,
        MarginSpec,
        Performance,
        RTLSpec,
        Series,
        SeriesRendererConfig,
        SelectionModelType,
        SelectionTrigger;
import 'behaviors/select_nearest.dart' show SelectNearest;
import 'package:meta/meta.dart' show immutable, required;
import 'behaviors/chart_behavior.dart'
    show ChartBehavior, ChartStateBehavior, GestureType;
import 'selection_model_config.dart' show SelectionModelConfig;
import 'package:flutter_web/material.dart' show StatefulWidget;
import 'base_chart_state.dart' show BaseChartState;
import 'user_managed_state.dart' show UserManagedState;

@immutable
abstract class BaseChart<D> extends StatefulWidget {
  /// Series list to draw.
  final List<common.Series<dynamic, D>> seriesList;

  /// Animation transitions.
  final bool animate;
  final Duration animationDuration;

  /// Used to configure the margin sizes around the drawArea that the axis and
  /// other things render into.
  final LayoutConfig layoutConfig;

  // Default renderer used to draw series data on the chart.
  final common.SeriesRendererConfig<D> defaultRenderer;

  /// Include the default interactions or not.
  final bool defaultInteractions;

  final List<ChartBehavior> behaviors;

  final List<SelectionModelConfig<D>> selectionModels;

  // List of custom series renderers used to draw series data on the chart.
  //
  // Series assigned a rendererIdKey will be drawn with the matching renderer in
  // this list. Series without a rendererIdKey will be drawn by the default
  // renderer.
  final List<common.SeriesRendererConfig<D>> customSeriesRenderers;

  /// The spec to use if RTL is enabled.
  final common.RTLSpec rtlSpec;

  /// Optional state that overrides internally kept state, such as selection.
  final UserManagedState<D> userManagedState;

  BaseChart(this.seriesList,
      {bool animate,
      Duration animationDuration,
      this.defaultRenderer,
      this.customSeriesRenderers,
      this.behaviors,
      this.selectionModels,
      this.rtlSpec,
      this.defaultInteractions = true,
      this.layoutConfig,
      this.userManagedState})
      : this.animate = animate ?? true,
        this.animationDuration =
            animationDuration ?? const Duration(milliseconds: 300);

  @override
  BaseChartState<D> createState() => new BaseChartState<D>();

  /// Creates and returns a [common.BaseChart].
  common.BaseChart<D> createCommonChart(BaseChartState<D> chartState);

  /// Updates the [common.BaseChart].
  void updateCommonChart(common.BaseChart chart, BaseChart<D> oldWidget,
      BaseChartState<D> chartState) {
    common.Performance.time('chartsUpdateRenderers');
    // Set default renderer if one was provided.
    if (defaultRenderer != null &&
        defaultRenderer != oldWidget?.defaultRenderer) {
      chart.defaultRenderer = defaultRenderer.build();
      chartState.markChartDirty();
    }

    // Add custom series renderers if any were provided.
    if (customSeriesRenderers != null) {
      // TODO: This logic does not remove old renderers and
      // shouldn't require the series configs to remain in the same order.
      for (var i = 0; i < customSeriesRenderers.length; i++) {
        if (oldWidget == null ||
            (oldWidget.customSeriesRenderers != null &&
                i > oldWidget.customSeriesRenderers.length) ||
            customSeriesRenderers[i] != oldWidget.customSeriesRenderers[i]) {
          chart.addSeriesRenderer(customSeriesRenderers[i].build());
          chartState.markChartDirty();
        }
      }
    }
    common.Performance.timeEnd('chartsUpdateRenderers');

    common.Performance.time('chartsUpdateBehaviors');
    _updateBehaviors(chart, chartState);
    common.Performance.timeEnd('chartsUpdateBehaviors');

    _updateSelectionModel(chart, chartState);

    chart.transition = animate ? animationDuration : Duration.zero;
  }

  void _updateBehaviors(common.BaseChart chart, BaseChartState chartState) {
    final behaviorList = behaviors != null
        ? new List<ChartBehavior>.from(behaviors)
        : <ChartBehavior>[];

    // Insert automatic behaviors to the front of the behavior list.
    if (defaultInteractions) {
      if (chartState.autoBehaviorWidgets.isEmpty) {
        addDefaultInteractions(chartState.autoBehaviorWidgets);
      }

      // Add default interaction behaviors to the front of the list if they
      // don't conflict with user behaviors by role.
      chartState.autoBehaviorWidgets.reversed
          .where(_notACustomBehavior)
          .forEach((ChartBehavior behavior) {
        behaviorList.insert(0, behavior);
      });
    }

    // Remove any behaviors from the chart that are not in the incoming list.
    // Walk in reverse order they were added.
    // Also, remove any persisting behaviors from incoming list.
    for (int i = chartState.addedBehaviorWidgets.length - 1; i >= 0; i--) {
      final addedBehavior = chartState.addedBehaviorWidgets[i];
      if (!behaviorList.remove(addedBehavior)) {
        final role = addedBehavior.role;
        chartState.addedBehaviorWidgets.remove(addedBehavior);
        chartState.addedCommonBehaviorsByRole.remove(role);
        chart.removeBehavior(chartState.addedCommonBehaviorsByRole[role]);
        chartState.markChartDirty();
      }
    }

    // Add any remaining/new behaviors.
    behaviorList.forEach((ChartBehavior behaviorWidget) {
      final commonBehavior = chart
          .createBehavior(<D>() => behaviorWidget.createCommonBehavior<D>());

      // Assign the chart state to any behavior that needs it.
      if (commonBehavior is ChartStateBehavior) {
        (commonBehavior as ChartStateBehavior).chartState = chartState;
      }

      chart.addBehavior(commonBehavior);
      chartState.addedBehaviorWidgets.add(behaviorWidget);
      chartState.addedCommonBehaviorsByRole[behaviorWidget.role] =
          commonBehavior;
      chartState.markChartDirty();
    });
  }

  /// Create the list of default interaction behaviors.
  void addDefaultInteractions(List<ChartBehavior> behaviors) {
    // Update selection model
    behaviors.add(new SelectNearest(
        eventTrigger: common.SelectionTrigger.tap,
        selectionModelType: common.SelectionModelType.info,
        expandToDomain: true,
        selectClosestSeries: true));
  }

  bool _notACustomBehavior(ChartBehavior behavior) {
    return this.behaviors == null ||
        !this.behaviors.any(
            (ChartBehavior userBehavior) => userBehavior.role == behavior.role);
  }

  void _updateSelectionModel(
      common.BaseChart<D> chart, BaseChartState<D> chartState) {
    final prevTypes = new List<common.SelectionModelType>.from(
        chartState.addedSelectionChangedListenersByType.keys);

    // Update any listeners for each type.
    selectionModels?.forEach((SelectionModelConfig<D> model) {
      final selectionModel = chart.getSelectionModel(model.type);

      final prevChangedListener =
          chartState.addedSelectionChangedListenersByType[model.type];
      if (!identical(model.changedListener, prevChangedListener)) {
        selectionModel.removeSelectionChangedListener(prevChangedListener);
        selectionModel.addSelectionChangedListener(model.changedListener);
        chartState.addedSelectionChangedListenersByType[model.type] =
            model.changedListener;
      }

      final prevUpdatedListener =
          chartState.addedSelectionUpdatedListenersByType[model.type];
      if (!identical(model.updatedListener, prevUpdatedListener)) {
        selectionModel.removeSelectionUpdatedListener(prevUpdatedListener);
        selectionModel.addSelectionUpdatedListener(model.updatedListener);
        chartState.addedSelectionUpdatedListenersByType[model.type] =
            model.updatedListener;
      }

      prevTypes.remove(model.type);
    });

    // Remove any lingering listeners.
    prevTypes.forEach((common.SelectionModelType type) {
      chart.getSelectionModel(type)
        ..removeSelectionChangedListener(
            chartState.addedSelectionChangedListenersByType[type])
        ..removeSelectionUpdatedListener(
            chartState.addedSelectionUpdatedListenersByType[type]);
    });
  }

  /// Gets distinct set of gestures this chart will subscribe to.
  ///
  /// This is needed to allow setup of the [GestureDetector] widget with only
  /// gestures we need to listen to and it must wrap [ChartContainer] widget.
  /// Gestures are then setup to be proxied in [common.BaseChart] and that is
  /// held by [ChartContainerRenderObject].
  Set<GestureType> getDesiredGestures(BaseChartState chartState) {
    final types = new Set<GestureType>();
    behaviors?.forEach((ChartBehavior behavior) {
      types.addAll(behavior.desiredGestures);
    });

    if (defaultInteractions && chartState.autoBehaviorWidgets.isEmpty) {
      addDefaultInteractions(chartState.autoBehaviorWidgets);
    }

    chartState.autoBehaviorWidgets.forEach((ChartBehavior behavior) {
      types.addAll(behavior.desiredGestures);
    });
    return types;
  }
}

@immutable
class LayoutConfig {
  final common.MarginSpec leftMarginSpec;
  final common.MarginSpec topMarginSpec;
  final common.MarginSpec rightMarginSpec;
  final common.MarginSpec bottomMarginSpec;

  LayoutConfig({
    @required this.leftMarginSpec,
    @required this.topMarginSpec,
    @required this.rightMarginSpec,
    @required this.bottomMarginSpec,
  });

  common.LayoutConfig get commonLayoutConfig => new common.LayoutConfig(
      leftSpec: leftMarginSpec,
      topSpec: topMarginSpec,
      rightSpec: rightMarginSpec,
      bottomSpec: bottomMarginSpec);
}
