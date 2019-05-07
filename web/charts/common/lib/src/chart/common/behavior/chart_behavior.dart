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

import '../base_chart.dart';

/// Interface for adding behavior to a chart.
///
/// For example pan and zoom are implemented via behavior strategies.
abstract class ChartBehavior<D> {
  String get role;

  /// Injects the behavior into a chart.
  void attachTo(BaseChart<D> chart);

  /// Removes the behavior from a chart.
  void removeFrom(BaseChart<D> chart);
}

/// Position of a component within the chart layout.
///
/// Outside positions are [top], [bottom], [start], and [end].
///
/// [top] component positioned at the top, with the chart positioned below the
/// component and height reduced by the height of the component.
/// [bottom] component positioned below the chart, and the chart's height is
/// reduced by the height of the component.
/// [start] component is positioned at the left of the chart (or the right if
/// RTL), the chart's width is reduced by the width of the component.
/// [end] component is positioned at the right of the chart (or the left if
/// RTL), the chart's width is reduced by the width of the component.
/// [inside] component is layered on top of the chart.
enum BehaviorPosition {
  top,
  bottom,
  start,
  end,
  inside,
}

/// Justification for components positioned outside [BehaviorPosition].
enum OutsideJustification {
  startDrawArea,
  start,
  middleDrawArea,
  middle,
  endDrawArea,
  end,
}

/// Justification for components positioned [BehaviorPosition.inside].
enum InsideJustification {
  topStart,
  topEnd,
}
