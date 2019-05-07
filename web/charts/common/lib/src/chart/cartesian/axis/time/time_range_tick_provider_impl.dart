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

import 'package:meta/meta.dart' show required;

import '../../../../common/graphics_factory.dart' show GraphicsFactory;
import '../../../common/chart_context.dart' show ChartContext;
import '../axis.dart' show AxisOrientation;
import '../draw_strategy/tick_draw_strategy.dart' show TickDrawStrategy;
import '../tick.dart' show Tick;
import '../tick_formatter.dart' show TickFormatter;
import '../tick_provider.dart' show TickHint;
import 'date_time_extents.dart' show DateTimeExtents;
import 'date_time_scale.dart' show DateTimeScale;
import 'time_range_tick_provider.dart' show TimeRangeTickProvider;
import 'time_stepper.dart' show TimeStepper;

// Contains all the common code for the time range tick providers.
class TimeRangeTickProviderImpl extends TimeRangeTickProvider {
  final int requiredMinimumTicks;
  final TimeStepper timeStepper;

  TimeRangeTickProviderImpl(this.timeStepper, {this.requiredMinimumTicks = 3});

  @override
  bool providesSufficientTicksForRange(DateTimeExtents domainExtents) {
    final cnt = timeStepper.getStepCountBetween(domainExtents, 1);
    return cnt >= requiredMinimumTicks;
  }

  /// Find the closet step size, from provided step size, in milliseconds.
  @override
  int getClosestStepSize(int stepSize) {
    return timeStepper.typicalStepSizeMs *
        _getClosestIncrementFromStepSize(stepSize);
  }

  // Find the increment that is closest to the step size.
  int _getClosestIncrementFromStepSize(int stepSize) {
    int minDifference;
    int closestIncrement;

    for (int increment in timeStepper.allowedTickIncrements) {
      final difference =
          (stepSize - (timeStepper.typicalStepSizeMs * increment)).abs();
      if (minDifference == null || minDifference > difference) {
        minDifference = difference;
        closestIncrement = increment;
      }
    }

    return closestIncrement;
  }

  @override
  List<Tick<DateTime>> getTicks({
    @required ChartContext context,
    @required GraphicsFactory graphicsFactory,
    @required DateTimeScale scale,
    @required TickFormatter<DateTime> formatter,
    @required Map<DateTime, String> formatterValueCache,
    @required TickDrawStrategy tickDrawStrategy,
    @required AxisOrientation orientation,
    bool viewportExtensionEnabled = false,
    TickHint<DateTime> tickHint,
  }) {
    List<Tick<DateTime>> currentTicks;
    final tickValues = <DateTime>[];
    final timeStepIt = timeStepper.getSteps(scale.viewportDomain).iterator;

    // Try different tickIncrements and choose the first that has no collisions.
    // If none exist use the last one which should have the fewest ticks and
    // hope that the renderer will resolve collisions.
    //
    // If a tick hint was provided, use the tick hint to search for the closest
    // increment and use that.
    List<int> allowedTickIncrements;
    if (tickHint != null) {
      final stepSize = tickHint.end.difference(tickHint.start).inMilliseconds;
      allowedTickIncrements = [_getClosestIncrementFromStepSize(stepSize)];
    } else {
      allowedTickIncrements = timeStepper.allowedTickIncrements;
    }

    for (int i = 0; i < allowedTickIncrements.length; i++) {
      // Create tick values with a specified increment.
      final tickIncrement = allowedTickIncrements[i];
      tickValues.clear();
      timeStepIt.reset(tickIncrement);
      while (timeStepIt.moveNext()) {
        tickValues.add(timeStepIt.current);
      }

      // Create ticks
      currentTicks = createTicks(tickValues,
          context: context,
          graphicsFactory: graphicsFactory,
          scale: scale,
          formatter: formatter,
          formatterValueCache: formatterValueCache,
          tickDrawStrategy: tickDrawStrategy,
          stepSize: timeStepper.typicalStepSizeMs * tickIncrement);

      // Request collision check from draw strategy.
      final collisionReport =
          tickDrawStrategy.collides(currentTicks, orientation);

      if (!collisionReport.ticksCollide) {
        // Return the first non colliding ticks.
        return currentTicks;
      }
    }

    // If all ticks collide, return the last generated ticks.
    return currentTicks;
  }
}
