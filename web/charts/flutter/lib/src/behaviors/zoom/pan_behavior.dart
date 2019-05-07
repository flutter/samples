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

import 'dart:math' show max, pow, Point;
import 'package:flutter_web_ui/ui.dart' hide Point;

import 'package:flutter_web/widgets.dart' show AnimationController;

import 'package:charts_common/common.dart' as common
    show BaseChart, ChartBehavior, PanBehavior, PanningCompletedCallback;
import 'package:meta/meta.dart' show immutable;

import '../../base_chart_state.dart' show BaseChartState;
import '../chart_behavior.dart'
    show ChartBehavior, ChartStateBehavior, GestureType;

@immutable
class PanBehavior extends ChartBehavior<common.PanBehavior> {
  final _desiredGestures = new Set<GestureType>.from([
    GestureType.onDrag,
  ]);

  /// Optional callback that is called when panning is completed.
  ///
  /// When flinging this callback is called after the fling is completed.
  /// This is because panning is only completed when the flinging stops.
  final common.PanningCompletedCallback panningCompletedCallback;

  PanBehavior({this.panningCompletedCallback});

  Set<GestureType> get desiredGestures => _desiredGestures;

  @override
  common.PanBehavior<D> createCommonBehavior<D>() {
    return new FlutterPanBehavior<D>()
      ..panningCompletedCallback = panningCompletedCallback;
  }

  @override
  void updateCommonBehavior(common.ChartBehavior commonBehavior) {}

  @override
  String get role => 'Pan';

  bool operator ==(Object other) {
    return other is PanBehavior &&
        other.panningCompletedCallback == panningCompletedCallback;
  }

  int get hashCode {
    return panningCompletedCallback.hashCode;
  }
}

/// Class extending [common.PanBehavior] with fling gesture support.
class FlutterPanBehavior<D> = common.PanBehavior<D>
    with FlutterPanBehaviorMixin;

/// Mixin that adds fling gesture support to [common.PanBehavior] or subclasses
/// thereof.
mixin FlutterPanBehaviorMixin<D> on common.PanBehavior<D>
    implements ChartStateBehavior {
  BaseChartState _chartState;

  set chartState(BaseChartState chartState) {
    assert(chartState != null);

    _chartState = chartState;
    _flingAnimator = _chartState.getAnimationController(this);
    _flingAnimator?.addListener(_onFlingTick);
  }

  AnimationController _flingAnimator;

  double _flingAnimationInitialTranslatePx;
  double _flingAnimationTargetTranslatePx;

  bool _isFlinging = false;

  static const flingDistanceMultiplier = 0.15;
  static const flingDeceleratorFactor = 1.0;
  static const flingDurationMultiplier = 0.15;
  static const minimumFlingVelocity = 300.0;

  @override
  removeFrom(common.BaseChart<D> chart) {
    stopFlingAnimation();
    _chartState.disposeAnimationController(this);
    _flingAnimator = null;
    super.removeFrom(chart);
  }

  @override
  bool onTapTest(Point<double> chartPoint) {
    super.onTapTest(chartPoint);

    stopFlingAnimation();

    return true;
  }

  @override
  bool onDragEnd(
      Point<double> localPosition, double scale, double pixelsPerSec) {
    if (isPanning) {
      // Ignore slow drag gestures to avoid jitter.
      if (pixelsPerSec.abs() < minimumFlingVelocity) {
        onPanEnd();
        return true;
      }

      _startFling(pixelsPerSec);
    }

    return super.onDragEnd(localPosition, scale, pixelsPerSec);
  }

  /// Starts a 'fling' in the direction and speed given by [pixelsPerSec].
  void _startFling(double pixelsPerSec) {
    final domainAxis = chart.domainAxis;

    _flingAnimationInitialTranslatePx = domainAxis.viewportTranslatePx;
    _flingAnimationTargetTranslatePx = _flingAnimationInitialTranslatePx +
        pixelsPerSec * flingDistanceMultiplier;

    final flingDuration = new Duration(
        milliseconds:
            max(200, (pixelsPerSec * flingDurationMultiplier).abs().round()));

    _flingAnimator
      ..duration = flingDuration
      ..forward(from: 0.0);
    _isFlinging = true;
  }

  /// Decelerates a fling event.
  double _decelerate(double value) => flingDeceleratorFactor == 1.0
      ? 1.0 - (1.0 - value) * (1.0 - value)
      : 1.0 - pow(1.0 - value, 2 * flingDeceleratorFactor);

  /// Updates the chart axis state on each tick of the [AnimationController].
  void _onFlingTick() {
    if (!_isFlinging) {
      return;
    }

    final percent = _flingAnimator.value;
    final deceleratedPercent = _decelerate(percent);
    final translation = lerpDouble(_flingAnimationInitialTranslatePx,
        _flingAnimationTargetTranslatePx, deceleratedPercent);

    final domainAxis = chart.domainAxis;

    domainAxis.setViewportSettings(
        domainAxis.viewportScalingFactor, translation,
        drawAreaWidth: chart.drawAreaBounds.width);

    if (percent >= 1.0) {
      stopFlingAnimation();
      onPanEnd();
      chart.redraw();
    } else {
      chart.redraw(skipAnimation: true, skipLayout: true);
    }
  }

  /// Stops any current fling animations that may be executing.
  void stopFlingAnimation() {
    if (_isFlinging) {
      _isFlinging = false;
      _flingAnimator?.stop();
    }
  }
}
