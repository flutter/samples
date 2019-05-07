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

import 'tick.dart' show Tick;

class AxisTicks<D> extends Tick<D> implements Comparable<AxisTicks<D>> {
  /// This tick is being animated out.
  bool _markedForRemoval;

  /// This tick's current location.
  double _currentLocation;

  /// This tick's previous target location.
  double _previousLocation;

  /// This tick's current target location.
  double _targetLocation;

  /// This tick's current opacity.
  double _currentOpacity;

  /// This tick's previous opacity.
  double _previousOpacity;

  /// This tick's target opacity.
  double _targetOpacity;

  AxisTicks(Tick<D> tick)
      : super(
            value: tick.value,
            textElement: tick.textElement,
            locationPx: tick.locationPx,
            labelOffsetPx: tick.labelOffsetPx) {
    /// Set the initial target for a new animated tick.
    _markedForRemoval = false;
    _targetLocation = tick.locationPx;
  }

  bool get markedForRemoval => _markedForRemoval;

  /// Animate the tick in from [previousLocation].
  void animateInFrom(double previousLocation) {
    _markedForRemoval = false;
    _previousLocation = previousLocation;
    _previousOpacity = 0.0;
    _targetOpacity = 1.0;
  }

  /// Animate out this tick to [newLocation].
  void animateOut(double newLocation) {
    _markedForRemoval = true;
    _previousLocation = _currentLocation;
    _targetLocation = newLocation;
    _previousOpacity = _currentOpacity;
    _targetOpacity = 0.0;
  }

  /// Set new target for this tick to be [newLocation].
  void setNewTarget(double newLocation) {
    _markedForRemoval = false;
    _previousLocation = _currentLocation;
    _targetLocation = newLocation;
    _previousOpacity = _currentOpacity;
    _targetOpacity = 1.0;
  }

  /// Update tick's location and opacity based on animation percent.
  void setCurrentTick(double animationPercent) {
    if (animationPercent == 1.0) {
      _currentLocation = _targetLocation;
      _previousLocation = _targetLocation;
      _currentOpacity = markedForRemoval ? 0.0 : 1.0;
    } else if (_previousLocation == null) {
      _currentLocation = _targetLocation;
      _currentOpacity = 1.0;
    } else {
      _currentLocation =
          _lerpDouble(_previousLocation, _targetLocation, animationPercent);
      _currentOpacity =
          _lerpDouble(_previousOpacity, _targetOpacity, animationPercent);
    }

    locationPx = _currentLocation;
    textElement.opacity = _currentOpacity;
  }

  /// Linearly interpolate between two numbers.
  ///
  /// From lerpDouble in dart:ui which is Flutter only.
  double _lerpDouble(double a, double b, double t) {
    if (a == null && b == null) return null;
    a ??= 0.0;
    b ??= 0.0;
    return a + (b - a) * t;
  }

  int compareTo(AxisTicks<D> other) {
    return _targetLocation.compareTo(other._targetLocation);
  }
}
