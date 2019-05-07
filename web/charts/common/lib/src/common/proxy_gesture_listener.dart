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

import 'gesture_listener.dart' show GestureListener;

/// Listens to all gestures and proxies to child listeners.
class ProxyGestureListener {
  final _listeners = <GestureListener>[];
  var _activeListeners = <GestureListener>[];

  void add(GestureListener listener) {
    _listeners.add(listener);
    _activeListeners.clear();
  }

  void remove(GestureListener listener) {
    _listeners.remove(listener);
    _activeListeners.clear();
  }

  bool onTapTest(Point<double> localPosition) {
    _activeListeners.clear();
    return _populateActiveListeners(localPosition);
  }

  bool onLongPress(Point<double> localPosition) {
    // Walk through listeners stopping at the first handled listener.
    final claimingListener = _activeListeners.firstWhere(
        (GestureListener listener) =>
            listener.onLongPress != null && listener.onLongPress(localPosition),
        orElse: () => null);

    // If someone claims the long press, then cancel everyone else.
    if (claimingListener != null) {
      _activeListeners =
          _cancel(all: _activeListeners, keep: [claimingListener]);
      return true;
    }
    return false;
  }

  bool onTap(Point<double> localPosition) {
    // Walk through listeners stopping at the first handled listener.
    final claimingListener = _activeListeners.firstWhere(
        (GestureListener listener) =>
            listener.onTap != null && listener.onTap(localPosition),
        orElse: () => null);

    // If someone claims the tap, then cancel everyone else.
    // This should hopefully be rare, like for drilling.
    if (claimingListener != null) {
      _activeListeners =
          _cancel(all: _activeListeners, keep: [claimingListener]);
      return true;
    }
    return false;
  }

  bool onHover(Point<double> localPosition) {
    // Cancel any previously active long lived gestures.
    _activeListeners = <GestureListener>[];

    // Walk through listeners stopping at the first handled listener.
    return _listeners.any((GestureListener listener) =>
        listener.onHover != null && listener.onHover(localPosition));
  }

  bool onDragStart(Point<double> localPosition) {
    // In Flutter, a tap test may not be triggered because a tap down event
    // may not be registered if the the drag gesture happens without any pause.
    if (_activeListeners.isEmpty) {
      _populateActiveListeners(localPosition);
    }

    // Walk through listeners stopping at the first handled listener.
    final claimingListener = _activeListeners.firstWhere(
        (GestureListener listener) =>
            listener.onDragStart != null && listener.onDragStart(localPosition),
        orElse: () => null);

    if (claimingListener != null) {
      _activeListeners =
          _cancel(all: _activeListeners, keep: [claimingListener]);
      return true;
    }
    return false;
  }

  bool onDragUpdate(Point<double> localPosition, double scale) {
    return _activeListeners.any((GestureListener listener) =>
        listener.onDragUpdate != null &&
        listener.onDragUpdate(localPosition, scale));
  }

  bool onDragEnd(
      Point<double> localPosition, double scale, double pixelsPerSecond) {
    return _activeListeners.any((GestureListener listener) =>
        listener.onDragEnd != null &&
        listener.onDragEnd(localPosition, scale, pixelsPerSecond));
  }

  List<GestureListener> _cancel(
      {List<GestureListener> all, List<GestureListener> keep}) {
    all.forEach((GestureListener listener) {
      if (!keep.contains(listener)) {
        listener.onTapCancel();
      }
    });
    return keep;
  }

  bool _populateActiveListeners(Point<double> localPosition) {
    var localListeners = new List<GestureListener>.from(_listeners);

    var previouslyClaimed = false;
    localListeners.forEach((GestureListener listener) {
      var claimed = listener.onTapTest(localPosition);
      if (claimed && !previouslyClaimed) {
        // Cancel any already added non-claiming listeners now that someone is
        // claiming it.
        _activeListeners = _cancel(all: _activeListeners, keep: [listener]);
        previouslyClaimed = true;
      } else if (claimed || !previouslyClaimed) {
        _activeListeners.add(listener);
      }
    });

    return previouslyClaimed;
  }
}
