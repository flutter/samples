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

import '../../common/date_time_factory.dart';
import '../../common/rtl_spec.dart' show RTLSpec;
import '../common/behavior/a11y/a11y_node.dart' show A11yNode;

abstract class ChartContext {
  /// Flag indicating whether or not the chart's container was configured in
  /// right to left mode.
  ///
  /// This should be set when the chart is created (or if its container ever
  /// gets configured to the other direction setting).
  ///
  /// Any chart component that needs to know whether the chart axes should be
  /// rendered right to left should read [isRtl].
  bool get chartContainerIsRtl;

  /// Configures the behavior of the chart when [chartContainerIsRtl] is true.
  RTLSpec get rtlSpec;

  /// Gets whether or not the chart axes should be rendered in right to left
  /// mode.
  ///
  /// This will only be true if the container for the chart component was
  /// configured with the rtl direction setting ([chartContainerIsRtl] == true), and the chart's
  /// [RTLSpec] is set to reverse the axis direction in rtl mode.
  bool get isRtl;

  /// Whether or not the chart will respond to tap events.
  ///
  /// This will generally be true if there is a behavior attached to the chart
  /// that does something with tap events, such as "click to select data."
  bool get isTappable;

  double get pixelsPerDp;

  DateTimeFactory get dateTimeFactory;

  void requestRedraw();

  void requestAnimation(Duration transition);

  void requestPaint();

  void enableA11yExploreMode(List<A11yNode> nodes, {String announcement});

  void disableA11yExploreMode({String announcement});
}
