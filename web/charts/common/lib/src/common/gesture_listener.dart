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

/// Listener to touch gestures.
///
/// [GestureListeners] can override only the gestures it is interested in.
///
/// Each gesture returns true if the event is consumed or false if it should
/// continue to alert other listeners.
class GestureListener {
  static final GestureCancelCallback defaultTapCancel = () {};
  static final GestureSinglePointCallback defaultTapTest = (_) => false;

  /// Called before all gestures (except onHover) as a preliminary test to
  /// see who is interested in an event.
  ///
  /// All listeners that return true will get the next gesture event.
  ///
  /// Any listener that returns false will only get the next gesture event if
  /// no one returned true.
  ///
  /// This is useful for figuring out who is claiming a gesture event.
  /// Example: SelectNearest returns true for onTapTest if the point is within
  /// the drawArea. SeriesLegend returns true for onTapTest if the point is
  /// within the legend. If the tap occurs in either of those places the
  /// corresponding listener. If the tap occurs outside of both targets, then
  /// both will be given the event so they can deselect everything in the
  /// selection model.
  ///
  /// Defaults to function that returns false allowing other listeners to preempt.
  final GestureSinglePointCallback onTapTest;

  /// Called if onTapTest was previously called, but listener is being preempted.
  final GestureCancelCallback onTapCancel;

  /// Called after the tap event has been going on for a period of time (500ms)
  /// without moving much (20px).
  /// The onTap or onDragStart gestures can still trigger after this gesture.
  final GestureSinglePointCallback onLongPress;

  /// Called on tap up if not dragging.
  final GestureSinglePointCallback onTap;

  /// Called when a mouse hovers over the chart. (No tap event).
  final GestureSinglePointCallback onHover;

  /// Called when the tap event has moved beyond a threshold indicating that
  /// the user is dragging.
  ///
  /// This will only be called once per drag gesture independent of how many
  /// touches are going on until the last touch is complete. onDragUpdate is
  /// called as touches move updating the scale as determined by the first
  /// two points. onDragEnd is called when the last touch event lifts and the
  /// velocity is calculated from the final movement.
  ///
  /// onDragStart, onDragUpdate, and onDragEnd are also called for mouse wheel
  /// with the scale and point updated given the WheelEvent (deltaY updates the
  /// scale, deltaX updates the event point/pans).
  ///
  /// TODO: Add a "discrete" flag that tells drag listeners whether
  /// they should be expecting a series of continuous updates, or one large
  /// update. This will mostly be used to control whether we animate the chart
  /// between onDragUpdate calls.
  ///
  /// TODO: Investigate low performance of chart rendering from
  /// flutter when animation is enabled and we pinch to zoom on the chart.
  final GestureDragStartCallback onDragStart;
  final GestureDragUpdateCallback onDragUpdate;
  final GestureDragEndCallback onDragEnd;

  GestureListener(
      {GestureSinglePointCallback onTapTest,
      GestureCancelCallback onTapCancel,
      this.onLongPress,
      this.onTap,
      this.onHover,
      this.onDragStart,
      this.onDragUpdate,
      this.onDragEnd})
      : this.onTapTest = onTapTest ?? defaultTapTest,
        this.onTapCancel = onTapCancel ?? defaultTapCancel;
}

typedef GestureCancelCallback();
typedef bool GestureSinglePointCallback(Point<double> localPosition);

typedef bool GestureDragStartCallback(Point<double> localPosition);
typedef GestureDragUpdateCallback(Point<double> localPosition, double scale);
typedef GestureDragEndCallback(
    Point<double> localPosition, double scale, double pixelsPerSec);
