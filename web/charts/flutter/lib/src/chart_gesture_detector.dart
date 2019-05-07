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

import 'dart:async' show Timer;
import 'dart:math' show Point;
import 'package:flutter_web/material.dart'
    show
        BuildContext,
        GestureDetector,
        ScaleEndDetails,
        ScaleStartDetails,
        ScaleUpdateDetails,
        TapDownDetails,
        TapUpDetails;

import 'behaviors/chart_behavior.dart' show GestureType;
import 'chart_container.dart' show ChartContainer, ChartContainerRenderObject;
import 'util.dart' show getChartContainerRenderObject;

// From https://docs.flutter.io/flutter/gestures/kLongPressTimeout-constant.html
const Duration _kLongPressTimeout = const Duration(milliseconds: 500);

class ChartGestureDetector {
  bool _listeningForLongPress;

  bool _isDragging = false;

  Timer _longPressTimer;
  Point<double> _lastTapPoint;
  double _lastScale;

  _ContainerResolver _containerResolver;

  makeWidget(BuildContext context, ChartContainer chartContainer,
      Set<GestureType> desiredGestures) {
    _containerResolver =
        () => getChartContainerRenderObject(context.findRenderObject());

    final wantTapDown = desiredGestures.isNotEmpty;
    final wantTap = desiredGestures.contains(GestureType.onTap);
    final wantDrag = desiredGestures.contains(GestureType.onDrag);

    // LongPress is special, we'd like to be able to trigger long press before
    // Drag/Press to trigger tooltips then explore with them. This means we
    // can't rely on gesture detection since it will block out the scale
    // gestures.
    _listeningForLongPress = desiredGestures.contains(GestureType.onLongPress);

    return new GestureDetector(
      child: chartContainer,
      onTapDown: wantTapDown ? onTapDown : null,
      onTapUp: wantTap ? onTapUp : null,
      onScaleStart: wantDrag ? onScaleStart : null,
      onScaleUpdate: wantDrag ? onScaleUpdate : null,
      onScaleEnd: wantDrag ? onScaleEnd : null,
    );
  }

  void onTapDown(TapDownDetails d) {
    final container = _containerResolver();
    final localPosition = container.globalToLocal(d.globalPosition);
    _lastTapPoint = new Point(localPosition.dx, localPosition.dy);
    container.gestureProxy.onTapTest(_lastTapPoint);

    // Kick off a timer to see if this is a LongPress.
    if (_listeningForLongPress) {
      _longPressTimer = new Timer(_kLongPressTimeout, () {
        onLongPress();
        _longPressTimer = null;
      });
    }
  }

  void onTapUp(TapUpDetails d) {
    _longPressTimer?.cancel();

    final container = _containerResolver();
    final localPosition = container.globalToLocal(d.globalPosition);
    _lastTapPoint = new Point(localPosition.dx, localPosition.dy);
    container.gestureProxy.onTap(_lastTapPoint);
  }

  void onLongPress() {
    final container = _containerResolver();
    container.gestureProxy.onLongPress(_lastTapPoint);
  }

  void onScaleStart(ScaleStartDetails d) {
    _longPressTimer?.cancel();

    final container = _containerResolver();
    final localPosition = container.globalToLocal(d.focalPoint);
    _lastTapPoint = new Point(localPosition.dx, localPosition.dy);

    _isDragging = container.gestureProxy.onDragStart(_lastTapPoint);
  }

  void onScaleUpdate(ScaleUpdateDetails d) {
    if (!_isDragging) {
      return;
    }

    final container = _containerResolver();
    final localPosition = container.globalToLocal(d.focalPoint);
    _lastTapPoint = new Point(localPosition.dx, localPosition.dy);
    _lastScale = d.scale;

    container.gestureProxy.onDragUpdate(_lastTapPoint, d.scale);
  }

  void onScaleEnd(ScaleEndDetails d) {
    if (!_isDragging) {
      return;
    }

    final container = _containerResolver();

    container.gestureProxy
        .onDragEnd(_lastTapPoint, _lastScale, d.velocity.pixelsPerSecond.dx);
  }
}

// Exposed for testing.
typedef ChartContainerRenderObject _ContainerResolver();
