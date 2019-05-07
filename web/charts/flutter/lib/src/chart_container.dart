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
        A11yNode,
        AxisDirection,
        BaseChart,
        ChartContext,
        DateTimeFactory,
        LocalDateTimeFactory,
        ProxyGestureListener,
        RTLSpec,
        SelectionModelType,
        Series,
        Performance;
import 'package:flutter_web/material.dart';
import 'package:flutter_web/rendering.dart';
import 'package:flutter_web/scheduler.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart' show required;
import 'chart_canvas.dart' show ChartCanvas;
import 'chart_state.dart' show ChartState;
import 'base_chart.dart' show BaseChart;
import 'graphics_factory.dart' show GraphicsFactory;
import 'time_series_chart.dart' show TimeSeriesChart;
import 'user_managed_state.dart' show UserManagedState;

/// Widget that inflates to a [CustomPaint] that implements common [ChartContext].
class ChartContainer<D> extends CustomPaint {
  final BaseChart<D> chartWidget;
  final BaseChart<D> oldChartWidget;
  final ChartState chartState;
  final double animationValue;
  final bool rtl;
  final common.RTLSpec rtlSpec;
  final UserManagedState<D> userManagedState;

  ChartContainer(
      {@required this.oldChartWidget,
      @required this.chartWidget,
      @required this.chartState,
      @required this.animationValue,
      @required this.rtl,
      @required this.rtlSpec,
      this.userManagedState});

  @override
  RenderCustomPaint createRenderObject(BuildContext context) {
    return new ChartContainerRenderObject<D>()..reconfigure(this, context);
  }

  @override
  void updateRenderObject(
      BuildContext context, ChartContainerRenderObject renderObject) {
    renderObject.reconfigure(this, context);
  }
}

/// [RenderCustomPaint] that implements common [ChartContext].
class ChartContainerRenderObject<D> extends RenderCustomPaint
    implements common.ChartContext {
  common.BaseChart<D> _chart;
  List<common.Series<dynamic, D>> _seriesList;
  ChartState _chartState;
  bool _chartContainerIsRtl = false;
  common.RTLSpec _rtlSpec;
  common.DateTimeFactory _dateTimeFactory;
  bool _exploreMode = false;
  List<common.A11yNode> _a11yNodes;

  final Logger _log = new Logger('charts_flutter.charts_container');

  /// Keeps the last time the configuration was changed and chart draw on the
  /// common chart is called.
  ///
  /// An assert uses this value to check if the configuration changes more
  /// frequently than a threshold. This is to notify developers of something
  /// wrong in the configuration of their charts if it keeps changes (usually
  /// due to equality checks not being implemented and when a new object is
  /// created inside a new chart widget, a change is detected even if nothing
  /// has changed).
  DateTime _lastConfigurationChangeTime;

  /// The minimum time required before the next configuration change.
  static const configurationChangeThresholdMs = 500;

  void reconfigure(ChartContainer config, BuildContext context) {
    _chartState = config.chartState;

    _dateTimeFactory = (config.chartWidget is TimeSeriesChart)
        ? (config.chartWidget as TimeSeriesChart).dateTimeFactory
        : null;
    _dateTimeFactory ??= new common.LocalDateTimeFactory();

    if (_chart == null) {
      common.Performance.time('chartsCreate');
      _chart = config.chartWidget.createCommonChart(_chartState);
      _chart.init(this, new GraphicsFactory(context));
      common.Performance.timeEnd('chartsCreate');
    }
    common.Performance.time('chartsConfig');
    config.chartWidget
        .updateCommonChart(_chart, config.oldChartWidget, _chartState);

    _rtlSpec = config.rtlSpec ?? const common.RTLSpec();
    _chartContainerIsRtl = config.rtl ?? false;

    common.Performance.timeEnd('chartsConfig');

    // If the configuration is changed more frequently than the threshold,
    // log the occurrence and reset the configurationChanged flag to false
    // to skip calling chart draw and avoid getting into an infinite rebuild
    // cycle.
    //
    // One common cause for the configuration changing on every chart build
    // is because a behavior is detected to have changed when it has not.
    // A common case is when a setting is passed to a behavior is an object
    // and doesn't override the equality checks.
    if (_chartState.chartIsDirty) {
      final currentTime = DateTime.now();
      final lastConfigurationBelowThreshold = _lastConfigurationChangeTime !=
              null &&
          currentTime.difference(_lastConfigurationChangeTime).inMilliseconds <
              configurationChangeThresholdMs;

      _lastConfigurationChangeTime = currentTime;

      if (lastConfigurationBelowThreshold) {
        _chartState.resetChartDirtyFlag();
        _log.warning(
            'Chart configuration is changing more frequent than threshold'
            ' of $configurationChangeThresholdMs. Check if your behavior, axis,'
            ' or renderer config is missing equality checks that may be causing'
            ' configuration to be detected as changed. ');
      }
    }

    if (_chartState.chartIsDirty) {
      _chart.configurationChanged();
    }

    // If series list changes or other configuration changed that triggered the
    // _chartState.configurationChanged flag to be set (such as axis, behavior,
    // and renderer changes). Otherwise, the chart only requests repainting and
    // does not reprocess the series.
    //
    // Series list is considered "changed" based on the instance.
    if (_seriesList != config.chartWidget.seriesList ||
        _chartState.chartIsDirty) {
      _chartState.resetChartDirtyFlag();
      _seriesList = config.chartWidget.seriesList;

      // Clear out the a11y nodes generated.
      _a11yNodes = null;

      common.Performance.time('chartsDraw');
      _chart.draw(_seriesList);
      common.Performance.timeEnd('chartsDraw');

      // This is needed because when a series changes we need to reset flutter's
      // animation value from 1.0 back to 0.0.
      _chart.animationPercent = 0.0;
      markNeedsLayout();
    } else {
      _chart.animationPercent = config.animationValue;
      markNeedsPaint();
    }

    _updateUserManagedState(config.userManagedState);

    // Set the painter used for calling common chart for paint.
    // This painter is also used to generate semantic nodes for a11y.
    _setNewPainter();
  }

  /// If user managed state is set, check each setting to see if it is different
  /// than internal chart state and only update if different.
  _updateUserManagedState(UserManagedState<D> newState) {
    if (newState == null) {
      return;
    }

    // Only override the selection model if it is different than the existing
    // selection model so update listeners are not unnecessarily triggered.
    for (common.SelectionModelType type in newState.selectionModels.keys) {
      final model = _chart.getSelectionModel(type);

      final userModel =
          newState.selectionModels[type].getModel(_chart.currentSeriesList);

      if (model != userModel) {
        model.updateSelection(
            userModel.selectedDatum, userModel.selectedSeries);
      }
    }
  }

  @override
  void performLayout() {
    common.Performance.time('chartsLayout');
    _chart.measure(constraints.maxWidth.toInt(), constraints.maxHeight.toInt());
    _chart.layout(constraints.maxWidth.toInt(), constraints.maxHeight.toInt());
    common.Performance.timeEnd('chartsLayout');
    size = constraints.biggest;

    // Check if the gestures registered in gesture registry matches what the
    // common chart is listening to.
    // TODO: Still need a test for this for sanity sake.
//    assert(_desiredGestures
//        .difference(_chart.gestureProxy.listenedGestures)
//        .isEmpty);
  }

  @override
  void markNeedsLayout() {
    super.markNeedsLayout();
    if (parent != null) {
      markParentNeedsLayout();
    }
  }

  @override
  bool hitTestSelf(Offset position) => true;

  @override
  void requestRedraw() {}

  @override
  void requestAnimation(Duration transition) {
    void startAnimationController(_) {
      _chartState.setAnimation(transition);
    }

    // Sometimes chart behaviors try to draw the chart outside of a Flutter draw
    // cycle. Schedule a frame manually to handle these cases.
    if (!SchedulerBinding.instance.hasScheduledFrame) {
      SchedulerBinding.instance.scheduleFrame();
    }

    SchedulerBinding.instance.addPostFrameCallback(startAnimationController);
  }

  /// Request Flutter to rebuild the widget/container of chart.
  ///
  /// This is different than requesting redraw and paint because those only
  /// affect the chart widget. This is for requesting rebuild of the Flutter
  /// widget that contains the chart widget. This is necessary for supporting
  /// Flutter widgets that are layout with the chart.
  ///
  /// Example is legends, a legend widget can be layout on top of the chart
  /// widget or along the sides of the chart. Requesting a rebuild allows
  /// the legend to layout and redraw itself.
  void requestRebuild() {
    void doRebuild(_) {
      _chartState.requestRebuild();
    }

    // Flutter does not allow requesting rebuild during the build cycle, this
    // schedules rebuild request to happen after the current build cycle.
    // This is needed to request rebuild after the legend has been added in the
    // post process phase of the chart, which happens during the chart widget's
    // build cycle.
    SchedulerBinding.instance.addPostFrameCallback(doRebuild);
  }

  /// When Flutter's markNeedsLayout is called, layout and paint are both
  /// called. If animations are off, Flutter's paint call after layout will
  /// paint the chart. If animations are on, Flutter's paint is called with the
  /// initial animation value and then the animation controller is started after
  /// this first build cycle.
  @override
  void requestPaint() {
    markNeedsPaint();
  }

  @override
  double get pixelsPerDp => 1.0;

  @override
  bool get chartContainerIsRtl => _chartContainerIsRtl;

  @override
  common.RTLSpec get rtlSpec => _rtlSpec;

  @override
  bool get isRtl =>
      _chartContainerIsRtl &&
      _rtlSpec?.axisDirection == common.AxisDirection.reversed;

  @override
  bool get isTappable => _chart.isTappable;

  @override
  common.DateTimeFactory get dateTimeFactory => _dateTimeFactory;

  /// Gets the chart's gesture listener.
  common.ProxyGestureListener get gestureProxy => _chart.gestureProxy;

  TextDirection get textDirection =>
      _chartContainerIsRtl ? TextDirection.rtl : TextDirection.ltr;

  @override
  void enableA11yExploreMode(List<common.A11yNode> nodes,
      {String announcement}) {
    _a11yNodes = nodes;
    _exploreMode = true;
    _setNewPainter();
    requestRebuild();
    if (announcement != null) {
      SemanticsService.announce(announcement, textDirection);
    }
  }

  @override
  void disableA11yExploreMode({String announcement}) {
    _a11yNodes = [];
    _exploreMode = false;
    _setNewPainter();
    requestRebuild();
    if (announcement != null) {
      SemanticsService.announce(announcement, textDirection);
    }
  }

  void _setNewPainter() {
    painter = new ChartContainerCustomPaint(
        oldPainter: painter,
        chart: _chart,
        exploreMode: _exploreMode,
        a11yNodes: _a11yNodes,
        textDirection: textDirection);
  }
}

class ChartContainerCustomPaint extends CustomPainter {
  final common.BaseChart chart;
  final bool exploreMode;
  final List<common.A11yNode> a11yNodes;
  final TextDirection textDirection;

  factory ChartContainerCustomPaint(
      {ChartContainerCustomPaint oldPainter,
      common.BaseChart chart,
      bool exploreMode,
      List<common.A11yNode> a11yNodes,
      TextDirection textDirection}) {
    if (oldPainter != null &&
        oldPainter.exploreMode == exploreMode &&
        oldPainter.a11yNodes == a11yNodes &&
        oldPainter.textDirection == textDirection) {
      return oldPainter;
    } else {
      return new ChartContainerCustomPaint._internal(
          chart: chart,
          exploreMode: exploreMode ?? false,
          a11yNodes: a11yNodes ?? <common.A11yNode>[],
          textDirection: textDirection ?? TextDirection.ltr);
    }
  }

  ChartContainerCustomPaint._internal(
      {this.chart, this.exploreMode, this.a11yNodes, this.textDirection});

  @override
  void paint(Canvas canvas, Size size) {
    common.Performance.time('chartsPaint');
    final chartsCanvas = new ChartCanvas(canvas, chart.graphicsFactory);
    chart.paint(chartsCanvas);
    common.Performance.timeEnd('chartsPaint');
  }

  /// Common chart requests rebuild that handle repaint requests.
  @override
  bool shouldRepaint(ChartContainerCustomPaint oldPainter) => false;

  /// Rebuild semantics when explore mode is toggled semantic properties change.
  @override
  bool shouldRebuildSemantics(ChartContainerCustomPaint oldDelegate) {
    return exploreMode != oldDelegate.exploreMode ||
        a11yNodes != oldDelegate.a11yNodes ||
        textDirection != textDirection;
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder => _buildSemantics;

  List<CustomPainterSemantics> _buildSemantics(Size size) {
    final nodes = <CustomPainterSemantics>[];

    for (common.A11yNode node in a11yNodes) {
      final rect = new Rect.fromLTWH(
          node.boundingBox.left.toDouble(),
          node.boundingBox.top.toDouble(),
          node.boundingBox.width.toDouble(),
          node.boundingBox.height.toDouble());
      nodes.add(new CustomPainterSemantics(
          rect: rect,
          properties: new SemanticsProperties(
              value: node.label,
              textDirection: textDirection,
              onDidGainAccessibilityFocus: node.onFocus)));
    }

    return nodes;
  }
}
