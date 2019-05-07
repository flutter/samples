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

import 'dart:math';

import 'package:meta/meta.dart' show required;

import '../../../common/chart_canvas.dart' show ChartCanvas;
import '../../../layout/layout_view.dart' show ViewMeasuredSizes;
import '../axis.dart' show AxisOrientation;
import '../collision_report.dart' show CollisionReport;
import '../tick.dart' show Tick;

/// Strategy for drawing ticks and checking for collisions.
abstract class TickDrawStrategy<D> {
  /// Decorate the existing list of ticks.
  ///
  /// This can be used to further modify ticks after they have been generated
  /// with location data and formatted labels.
  void decorateTicks(List<Tick<D>> ticks);

  /// Returns a [CollisionReport] indicating if there are any collisions.
  CollisionReport collides(List<Tick<D>> ticks, AxisOrientation orientation);

  /// Returns measurement of ticks drawn vertically.
  ViewMeasuredSizes measureVerticallyDrawnTicks(
      List<Tick<D>> ticks, int maxWidth, int maxHeight);

  /// Returns measurement of ticks drawn horizontally.
  ViewMeasuredSizes measureHorizontallyDrawnTicks(
      List<Tick<D>> ticks, int maxWidth, int maxHeight);

  /// Draws tick onto [ChartCanvas].
  ///
  /// [orientation] the orientation of the axis that this [tick] belongs to.
  /// [axisBounds] the bounds of the axis.
  /// [drawAreaBounds] the bounds of the chart draw area adjacent to the axis.
  void draw(ChartCanvas canvas, Tick<D> tick,
      {@required AxisOrientation orientation,
      @required Rectangle<int> axisBounds,
      @required Rectangle<int> drawAreaBounds,
      @required bool isFirst,
      @required bool isLast});

  void drawAxisLine(ChartCanvas canvas, AxisOrientation orientation,
      Rectangle<int> axisBounds);
}
