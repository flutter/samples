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

import 'dart:math' show Point;

import 'package:meta/meta.dart' show protected;

import '../../../../common/gesture_listener.dart' show GestureListener;
import '../../../cartesian/axis/axis.dart' show Axis;
import '../../../cartesian/cartesian_chart.dart' show CartesianChart;
import '../../base_chart.dart' show BaseChart;
import '../chart_behavior.dart' show ChartBehavior;
import 'panning_tick_provider.dart';

/// Adds domain axis panning support to a chart.
///
/// Panning is supported by clicking and dragging the mouse for web, or tapping
/// and dragging on the chart for mobile devices.
class PanBehavior<D> implements ChartBehavior<D> {
  /// Listens for drag gestures.
  GestureListener _listener;

  /// Wrapped domain tick provider for pan and zoom behavior.
  PanningTickProvider _domainAxisTickProvider;

  @protected
  PanningTickProvider get domainAxisTickProvider => _domainAxisTickProvider;

  @override
  String get role => 'Pan';

  /// The chart to which the behavior is attached.
  CartesianChart<D> _chart;

  @protected
  CartesianChart<D> get chart => _chart;

  /// Flag which is enabled to indicate that the user is "panning" the chart.
  bool _isPanning = false;

  @protected
  bool get isPanning => _isPanning;

  /// Last position of the mouse/tap that was used to adjust the scale translate
  /// factor.
  Point<double> _lastPosition;

  @protected
  Point<double> get lastPosition => _lastPosition;

  /// Optional callback that is invoked at the end of panning ([onPanEnd]).
  PanningCompletedCallback _panningCompletedCallback;

  set panningCompletedCallback(PanningCompletedCallback callback) {
    _panningCompletedCallback = callback;
  }

  PanBehavior() {
    _listener = new GestureListener(
        onTapTest: onTapTest,
        onDragStart: onDragStart,
        onDragUpdate: onDragUpdate,
        onDragEnd: onDragEnd);
  }

  /// Injects the behavior into a chart.
  @override
  attachTo(BaseChart<D> chart) {
    if (!(chart is CartesianChart)) {
      throw new ArgumentError(
          'PanBehavior can only be attached to a CartesianChart');
    }

    _chart = chart;
    _chart.addGestureListener(_listener);

    // Disable the autoViewport feature to enable panning.
    _chart.domainAxis?.autoViewport = false;

    // Wrap domain axis tick provider with the panning behavior one.
    _domainAxisTickProvider =
        new PanningTickProvider<D>(_chart.domainAxis.tickProvider);
    _chart.domainAxis.tickProvider = _domainAxisTickProvider;
  }

  /// Removes the behavior from a chart.
  @override
  removeFrom(BaseChart<D> chart) {
    if (!(chart is CartesianChart)) {
      throw new ArgumentError(
          'PanBehavior can only be attached to a CartesianChart');
    }

    _chart = chart;
    _chart.removeGestureListener(_listener);

    // Restore the default autoViewport state.
    _chart.domainAxis?.autoViewport = true;

    // Restore the original tick providers
    _chart.domainAxis.tickProvider = _domainAxisTickProvider.tickProvider;

    _chart = null;
  }

  @protected
  bool onTapTest(Point<double> localPosition) {
    if (_chart == null) {
      return false;
    }

    return _chart.withinDrawArea(localPosition);
  }

  @protected
  bool onDragStart(Point<double> localPosition) {
    if (_chart == null) {
      return false;
    }

    onPanStart();

    _lastPosition = localPosition;
    _isPanning = true;
    return true;
  }

  @protected
  bool onDragUpdate(Point<double> localPosition, double scale) {
    if (!_isPanning || _lastPosition == null || _chart == null) {
      return false;
    }

    // Pinch gestures should be handled by the [PanAndZoomBehavior].
    if (scale != 1.0) {
      _isPanning = false;
      return false;
    }

    // Update the domain axis's viewport translate to pan the chart.
    final domainAxis = _chart.domainAxis;

    if (domainAxis == null) {
      return false;
    }

    // This is set during onDragUpdate and NOT onDragStart because we don't yet
    // know during onDragStart whether pan/zoom behavior is panning or zooming.
    // During panning, domain tick provider set to generate ticks with locked
    // steps.
    _domainAxisTickProvider.mode = PanningTickProviderMode.stepSizeLocked;

    double domainScalingFactor = domainAxis.viewportScalingFactor;

    double domainChange =
        domainAxis.viewportTranslatePx + localPosition.x - _lastPosition.x;

    domainAxis.setViewportSettings(domainScalingFactor, domainChange,
        drawAreaWidth: chart.drawAreaBounds.width);

    _lastPosition = localPosition;

    _chart.redraw(skipAnimation: true, skipLayout: true);
    return true;
  }

  @protected
  bool onDragEnd(
      Point<double> localPosition, double scale, double pixelsPerSec) {
    onPanEnd();
    return true;
  }

  @protected
  void onPanStart() {
    // When panning starts, measure tick provider should not update ticks.
    // This is still needed because axis internally updates the tick location
    // after the tick provider generates the ticks. If we do not tell the axis
    // not to update the location of the measure axes, we get a jittery effect
    // as the measure axes location changes ever so slightly during pan/zoom.
    _chart.getMeasureAxis().lockAxis = true;
    _chart.getMeasureAxis(axisId: Axis.secondaryMeasureAxisId)?.lockAxis = true;
  }

  @protected
  void onPanEnd() {
    cancelPanning();

    // When panning stops, allow tick provider to update ticks, and then
    // request redraw.
    _domainAxisTickProvider.mode = PanningTickProviderMode.passThrough;
    _chart.getMeasureAxis().lockAxis = false;
    _chart.getMeasureAxis(axisId: Axis.secondaryMeasureAxisId)?.lockAxis =
        false;
    _chart.redraw();

    if (_panningCompletedCallback != null) {
      _panningCompletedCallback();
    }
  }

  /// Cancels the handling of any current panning event.
  void cancelPanning() {
    _isPanning = false;
  }
}

/// Callback for when panning is completed.
typedef void PanningCompletedCallback();
