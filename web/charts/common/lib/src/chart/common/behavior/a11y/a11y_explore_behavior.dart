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

import '../../../../common/gesture_listener.dart' show GestureListener;
import '../../base_chart.dart' show BaseChart;
import '../chart_behavior.dart' show ChartBehavior;
import 'a11y_node.dart' show A11yNode;

/// The gesture to use for triggering explore mode.
enum ExploreModeTrigger {
  pressHold,
  tap,
}

/// Chart behavior for adding A11y information.
abstract class A11yExploreBehavior<D> implements ChartBehavior<D> {
  /// The gesture that activates explore mode. Defaults to long press.
  ///
  /// Turning on explore mode asks this [A11yExploreBehavior] to generate nodes within
  /// this chart.
  final ExploreModeTrigger exploreModeTrigger;

  /// Minimum width of the bounding box for the a11y focus.
  ///
  /// Must be 1 or higher because invisible semantic nodes should not be added.
  final double minimumWidth;

  /// Optionally notify the OS when explore mode is enabled.
  final String exploreModeEnabledAnnouncement;

  /// Optionally notify the OS when explore mode is disabled.
  final String exploreModeDisabledAnnouncement;

  BaseChart<D> _chart;
  GestureListener _listener;
  bool _exploreModeOn = false;

  A11yExploreBehavior({
    this.exploreModeTrigger = ExploreModeTrigger.pressHold,
    double minimumWidth,
    this.exploreModeEnabledAnnouncement,
    this.exploreModeDisabledAnnouncement,
  }) : minimumWidth = minimumWidth ?? 1.0 {
    assert(this.minimumWidth >= 1.0);

    switch (exploreModeTrigger) {
      case ExploreModeTrigger.pressHold:
        _listener = new GestureListener(onLongPress: _toggleExploreMode);
        break;
      case ExploreModeTrigger.tap:
        _listener = new GestureListener(onTap: _toggleExploreMode);
        break;
    }
  }

  bool _toggleExploreMode(_) {
    if (_exploreModeOn) {
      _exploreModeOn = false;
      // Ask native platform to turn off explore mode.
      _chart.context.disableA11yExploreMode(
          announcement: exploreModeDisabledAnnouncement);
    } else {
      _exploreModeOn = true;
      // Ask native platform to turn on explore mode.
      _chart.context.enableA11yExploreMode(createA11yNodes(),
          announcement: exploreModeEnabledAnnouncement);
    }

    return true;
  }

  /// Returns a list of A11yNodes for this chart.
  List<A11yNode> createA11yNodes();

  @override
  void attachTo(BaseChart<D> chart) {
    _chart = chart;
    chart.addGestureListener(_listener);
  }

  @override
  void removeFrom(BaseChart<D> chart) {
    chart.removeGestureListener(_listener);
  }
}
