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
import '../../base_chart.dart' show BaseChart, LifecycleListener;
import '../chart_behavior.dart' show ChartBehavior;

/// Adds initial hint behavior for [CartesianChart].
///
/// This behavior animates to the final viewport from an initial translate and
/// or scale factor.
abstract class InitialHintBehavior<D> implements ChartBehavior<D> {
  /// Listens for drag gestures.
  GestureListener _listener;

  /// Chart lifecycle listener to setup hint animation.
  LifecycleListener<D> _lifecycleListener;

  @override
  String get role => 'InitialHint';

  /// The chart to which the behavior is attached.
  CartesianChart<D> _chart;

  @protected
  CartesianChart<D> get chart => _chart;

  Duration _hintDuration = new Duration(milliseconds: 3000);

  /// The amount of time to animate to the desired viewport.
  ///
  /// If no duration is passed in, the default of 3000 ms is used.
  @protected
  Duration get hintDuration => _hintDuration;

  set hintDuration(Duration duration) {
    _hintDuration = duration;
  }

  double _maxHintTranslate = 0.0;

  // TODO: Translation animation only works for ordinal axis.
  /// The maximum amount ordinal values to shift the viewport for the the hint
  /// animation.
  ///
  /// Positive numbers shift the viewport to the right and negative to the left.
  /// The default is no translation.
  @protected
  double get maxHintTranslate => _maxHintTranslate;

  set maxHintTranslate(double maxHintTranslate) {
    _maxHintTranslate = maxHintTranslate;
  }

  double _maxHintScaleFactor;

  /// The amount the domain axis will be scaled for the start of the hint.
  ///
  /// A value of 1.0 means the viewport is completely zoomed out (all domains
  /// are in the viewport). If a value is provided, it cannot be less than 1.0.
  ///
  /// By default maxHintScaleFactor is not set.
  @protected
  double get maxHintScaleFactor => _maxHintScaleFactor;

  set maxHintScaleFactor(double maxHintScaleFactor) {
    assert(maxHintScaleFactor != null && maxHintScaleFactor >= 1.0);

    _maxHintScaleFactor = maxHintScaleFactor;
  }

  /// Flag to indicate that hint animation controller has already been set up.
  ///
  /// This is to ensure that the hint is only set up on the first draw.
  bool _hintSetupCompleted = false;

  /// Flag to indicate that the first call to axis configured is completed.
  ///
  /// This is to ensure that the initial and target viewport translate and scale
  /// factor is only calculated on the first axis configuration.
  bool _firstAxisConfigured = false;

  double _initialViewportTranslatePx;
  double _initialViewportScalingFactor;
  double _targetViewportTranslatePx;
  double _targetViewportScalingFactor;

  InitialHintBehavior() {
    _listener = new GestureListener(onTapTest: onTapTest);

    _lifecycleListener = new LifecycleListener<D>(
        onAxisConfigured: _onAxisConfigured,
        onAnimationComplete: _onAnimationComplete);
  }

  @override
  attachTo(BaseChart<D> chart) {
    if (!(chart is CartesianChart)) {
      throw new ArgumentError(
          'InitialHintBehavior can only be attached to a CartesianChart');
    }

    _chart = chart;

    _chart.addGestureListener(_listener);
    _chart.addLifecycleListener(_lifecycleListener);
  }

  @override
  removeFrom(BaseChart<D> chart) {
    if (!(chart is CartesianChart)) {
      throw new ArgumentError(
          'InitialHintBehavior can only be removed from a CartesianChart');
    }

    stopHintAnimation();

    _chart = chart;
    _chart.removeGestureListener(_listener);
    _chart.removeLifecycleListener(_lifecycleListener);

    _chart = null;
  }

  @protected
  bool onTapTest(Point<double> localPosition) {
    if (_chart == null) {
      return false;
    }

    // If the user taps the chart, stop the hint animation immediately.
    stopHintAnimation();

    return _chart.withinDrawArea(localPosition);
  }

  /// Calculate the animation's initial and target viewport and scale factor
  /// and shift the viewport to the start.
  void _onAxisConfigured() {
    if (_firstAxisConfigured == false) {
      _firstAxisConfigured = true;

      final domainAxis = chart.domainAxis;

      // TODO: Translation animation only works for axis with a
      // rangeband type that returns a non zero step size. If two rows have
      // the same domain value, step size could also equal 0.
      assert(domainAxis.stepSize != 0.0);

      // Save the target viewport and scale factor from axis, because the
      // viewport can be set by the user using AxisSpec.
      _targetViewportTranslatePx = domainAxis.viewportTranslatePx;
      _targetViewportScalingFactor = domainAxis.viewportScalingFactor;

      // Calculate the amount to translate from the target viewport.
      final translateAmount = domainAxis.stepSize * maxHintTranslate;

      _initialViewportTranslatePx =
          _targetViewportTranslatePx - translateAmount;

      _initialViewportScalingFactor =
          maxHintScaleFactor ?? _targetViewportScalingFactor;

      domainAxis.setViewportSettings(
          _initialViewportScalingFactor, _initialViewportTranslatePx);
      chart.redraw(skipAnimation: true, skipLayout: false);
    }
  }

  /// Start the hint animation, only start the animation on the very first draw.
  void _onAnimationComplete() {
    if (_hintSetupCompleted == false) {
      _hintSetupCompleted = true;

      startHintAnimation();
    }
  }

  /// Setup and start the hint animation.
  ///
  /// Animation controller to be handled by the native platform.
  @protected
  void startHintAnimation() {
    // When panning starts, measure tick provider should not update ticks.
    // This is still needed because axis internally updates the tick location
    // after the tick provider generates the ticks. If we do not tell the axis
    // not to update the location of the measure axes, the measure axis will
    // change during the hint animation and make values jump back and forth.
    _chart.getMeasureAxis().lockAxis = true;
    _chart.getMeasureAxis(axisId: Axis.secondaryMeasureAxisId)?.lockAxis = true;
  }

  /// Stop hint animation
  @protected
  void stopHintAnimation() {
    // When panning is completed, unlock the measure axis.
    _chart.getMeasureAxis().lockAxis = false;
    _chart.getMeasureAxis(axisId: Axis.secondaryMeasureAxisId)?.lockAxis =
        false;
  }

  /// Animation hint percent, to be returned by the native platform.
  @protected
  double get hintAnimationPercent;

  /// Shift domain viewport on hint animation ticks.
  @protected
  void onHintTick() {
    final percent = hintAnimationPercent;

    final scaleFactor = _lerpDouble(
        _initialViewportScalingFactor, _targetViewportScalingFactor, percent);

    double translatePx = _lerpDouble(
        _initialViewportTranslatePx, _targetViewportTranslatePx, percent);

    // If there is a scale factor animation, need to scale the translatePx so
    // the animation appears to be zooming in on the viewport when there is no
    // [maxHintTranslate] provided.
    //
    // If there is a translate hint, the animation will still first zoom in
    // and then translate the [maxHintTranslate] amount.
    if (_initialViewportScalingFactor != _targetViewportScalingFactor) {
      translatePx = translatePx * percent;
    }

    final domainAxis = chart.domainAxis;
    domainAxis.setViewportSettings(scaleFactor, translatePx,
        drawAreaWidth: chart.drawAreaBounds.width);

    if (percent >= 1.0) {
      stopHintAnimation();
      chart.redraw();
    } else {
      chart.redraw(skipAnimation: true, skipLayout: true);
    }
  }

  /// Linear interpolation for doubles.
  double _lerpDouble(double a, double b, double t) {
    if (a == null && b == null) return null;
    a ??= 0.0;
    b ??= 0.0;
    return a + (b - a) * t;
  }
}
