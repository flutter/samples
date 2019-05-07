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

import 'package:flutter_web_ui/ui.dart' show TextDirection;
import 'package:flutter_web/material.dart'
    show
        AnimationController,
        BuildContext,
        State,
        TickerProviderStateMixin,
        Widget;
import 'package:charts_common/common.dart' as common;
import 'package:flutter_web/widgets.dart'
    show Directionality, LayoutId, CustomMultiChildLayout;
import 'behaviors/chart_behavior.dart'
    show BuildableBehavior, ChartBehavior, ChartStateBehavior;
import 'base_chart.dart' show BaseChart;
import 'chart_container.dart' show ChartContainer;
import 'chart_state.dart' show ChartState;
import 'chart_gesture_detector.dart' show ChartGestureDetector;
import 'widget_layout_delegate.dart';

class BaseChartState<D> extends State<BaseChart<D>>
    with TickerProviderStateMixin
    implements ChartState {
  // Animation
  AnimationController _animationController;
  double _animationValue = 0.0;

  Widget _oldWidget;

  ChartGestureDetector _chartGestureDetector;

  bool _configurationChanged = false;

  final autoBehaviorWidgets = <ChartBehavior>[];
  final addedBehaviorWidgets = <ChartBehavior>[];
  final addedCommonBehaviorsByRole = <String, common.ChartBehavior>{};

  final addedSelectionChangedListenersByType =
      <common.SelectionModelType, common.SelectionModelListener<D>>{};
  final addedSelectionUpdatedListenersByType =
      <common.SelectionModelType, common.SelectionModelListener<D>>{};

  final _behaviorAnimationControllers =
      <ChartStateBehavior, AnimationController>{};

  static const chartContainerLayoutID = 'chartContainer';

  @override
  void initState() {
    super.initState();
    _animationController = new AnimationController(vsync: this)
      ..addListener(_animationTick);
  }

  @override
  void requestRebuild() {
    setState(() {});
  }

  @override
  void markChartDirty() {
    _configurationChanged = true;
  }

  @override
  void resetChartDirtyFlag() {
    _configurationChanged = false;
  }

  @override
  bool get chartIsDirty => _configurationChanged;

  /// Builds the common chart canvas widget.
  Widget _buildChartContainer() {
    final chartContainer = new ChartContainer<D>(
      oldChartWidget: _oldWidget,
      chartWidget: widget,
      chartState: this,
      animationValue: _animationValue,
      rtl: Directionality.of(context) == TextDirection.rtl,
      rtlSpec: widget.rtlSpec,
      userManagedState: widget.userManagedState,
    );
    _oldWidget = widget;

    final desiredGestures = widget.getDesiredGestures(this);
    if (desiredGestures.isNotEmpty) {
      _chartGestureDetector ??= new ChartGestureDetector();
      return _chartGestureDetector.makeWidget(
          context, chartContainer, desiredGestures);
    } else {
      return chartContainer;
    }
  }

  @override
  Widget build(BuildContext context) {
    final chartWidgets = <LayoutId>[];
    final idAndBehaviorMap = <String, BuildableBehavior>{};

    // Add the common chart canvas widget.
    chartWidgets.add(new LayoutId(
        id: chartContainerLayoutID, child: _buildChartContainer()));

    // Add widget for each behavior that can build widgets
    addedCommonBehaviorsByRole.forEach((id, behavior) {
      if (behavior is BuildableBehavior) {
        assert(id != chartContainerLayoutID);

        final buildableBehavior = behavior as BuildableBehavior;
        idAndBehaviorMap[id] = buildableBehavior;

        final widget = buildableBehavior.build(context);
        chartWidgets.add(new LayoutId(id: id, child: widget));
      }
    });

    final isRTL = Directionality.of(context) == TextDirection.rtl;

    return new CustomMultiChildLayout(
        delegate: new WidgetLayoutDelegate(
            chartContainerLayoutID, idAndBehaviorMap, isRTL),
        children: chartWidgets);
  }

  @override
  void dispose() {
    _animationController.dispose();
    _behaviorAnimationControllers
        .forEach((_, controller) => controller?.dispose());
    _behaviorAnimationControllers.clear();
    super.dispose();
  }

  @override
  void setAnimation(Duration transition) {
    _playAnimation(transition);
  }

  void _playAnimation(Duration duration) {
    _animationController.duration = duration;
    _animationController.forward(from: (duration == Duration.zero) ? 1.0 : 0.0);
    _animationValue = _animationController.value;
  }

  void _animationTick() {
    setState(() {
      _animationValue = _animationController.value;
    });
  }

  /// Get animation controller to be used by [behavior].
  AnimationController getAnimationController(ChartStateBehavior behavior) {
    _behaviorAnimationControllers[behavior] ??=
        new AnimationController(vsync: this);

    return _behaviorAnimationControllers[behavior];
  }

  /// Dispose of animation controller used by [behavior].
  void disposeAnimationController(ChartStateBehavior behavior) {
    final controller = _behaviorAnimationControllers.remove(behavior);
    controller?.dispose();
  }
}
