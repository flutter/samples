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

import 'dart:math' show log, log10e, max, min, pow;

import 'package:meta/meta.dart' show required;

import '../../../common/graphics_factory.dart' show GraphicsFactory;
import '../../common/chart_context.dart' show ChartContext;
import '../../common/unitconverter/identity_converter.dart'
    show IdentityConverter;
import '../../common/unitconverter/unit_converter.dart' show UnitConverter;
import 'axis.dart' show AxisOrientation;
import 'draw_strategy/tick_draw_strategy.dart' show TickDrawStrategy;
import 'numeric_extents.dart' show NumericExtents;
import 'numeric_scale.dart' show NumericScale;
import 'tick.dart' show Tick;
import 'tick_formatter.dart' show TickFormatter;
import 'tick_provider.dart' show BaseTickProvider, TickHint;

/// Tick provider that allows you to specify how many ticks to present while
/// also choosing tick values that appear "nice" or "rounded" to the user.  By
/// default it will try to guess an appropriate number of ticks given the size
/// of the range available, but the min and max tick counts can be set by
/// calling setTickCounts().
///
/// You can control whether the axis is bound to zero (default) or follows the
/// data by calling setZeroBound().
///
/// This provider will choose "nice" ticks with the following priority order.
/// * Ticks do not collide with each other.
/// * Alternate rendering is not used to avoid collisions.
/// * Provide the least amount of domain range covering all data points (while
/// still selecting "nice" ticks values.
class NumericTickProvider extends BaseTickProvider<num> {
  /// Used to determine the automatic tick count calculation.
  static const MIN_DIPS_BETWEEN_TICKS = 25;

  /// Potential steps available to the baseTen value of the data.
  static const DEFAULT_STEPS = const [
    0.01,
    0.02,
    0.025,
    0.03,
    0.04,
    0.05,
    0.06,
    0.07,
    0.08,
    0.09,
    0.1,
    0.2,
    0.25,
    0.3,
    0.4,
    0.5,
    0.6,
    0.7,
    0.8,
    0.9,
    1.0,
    2.0,
    2.50,
    3.0,
    4.0,
    5.0,
    6.0,
    7.0,
    8.0,
    9.0
  ];

  // Settings

  /// Sets whether the the tick provider should always include a zero tick.
  ///
  /// If set the data range may be extended to include zero.
  ///
  /// Note that the zero value in axis units is chosen, which may be different
  /// than zero value in data units if a data to axis unit converter is set.
  bool zeroBound = true;

  /// If your data can only be in whole numbers, then set this to true.
  ///
  /// It should prevent the scale from choosing fractional ticks.  For example,
  /// if you had a office head count, don't generate a tick for 1.5, instead
  /// jump to 2.
  ///
  /// Note that the provider will choose whole number ticks in the axis units,
  /// not data units if a data to axis unit converter is set.
  bool dataIsInWholeNumbers = true;

  // Desired min and max tick counts are set by [setFixedTickCount] and
  // [setTickCount]. These are not guaranteed tick counts.
  int _desiredMaxTickCount;
  int _desiredMinTickCount;

  /// Allowed steps the tick provider can choose from.
  var _allowedSteps = DEFAULT_STEPS;

  /// Convert input data units to the desired units on the axis.
  /// If not set no conversion will take place.
  ///
  /// Combining this with an appropriate [TickFormatter] would result in axis
  /// ticks that are in different unit than the actual data units.
  UnitConverter<num, num> dataToAxisUnitConverter =
      const IdentityConverter<num>();

  // Tick calculation state
  num _low;
  num _high;
  int _rangeWidth;
  int _minTickCount;
  int _maxTickCount;

  // The parameters used in previous tick calculation
  num _prevLow;
  num _prevHigh;
  int _prevRangeWidth;
  int _prevMinTickCount;
  int _prevMaxTickCount;
  bool _prevDataIsInWholeNumbers;

  /// Sets the desired tick count.
  ///
  /// While the provider will try to satisfy the requirement, it is not
  /// guaranteed, such as cases where ticks may overlap or are insufficient.
  ///
  /// [tickCount] the fixed number of major (labeled) ticks to draw for the axis
  /// Passing null will result in falling back on the automatic tick count
  /// assignment.
  void setFixedTickCount(int tickCount) {
    // Don't allow a single tick, it doesn't make sense. so tickCount > 1
    _desiredMinTickCount =
        tickCount != null && tickCount > 1 ? tickCount : null;
    _desiredMaxTickCount = _desiredMinTickCount;
  }

  /// Sets the desired min and max tick count when providing ticks.
  ///
  /// The values are suggested requirements but are not guaranteed to be the
  /// actual tick count in cases where it is not possible.
  ///
  /// [maxTickCount] The max tick count must be greater than 1.
  /// [minTickCount] The min tick count must be greater than 1.
  void setTickCount(int maxTickCount, int minTickCount) {
    // Don't allow a single tick, it doesn't make sense. so tickCount > 1
    if (maxTickCount != null && maxTickCount > 1) {
      _desiredMaxTickCount = maxTickCount;
      if (minTickCount != null &&
          minTickCount > 1 &&
          minTickCount <= _desiredMaxTickCount) {
        _desiredMinTickCount = minTickCount;
      } else {
        _desiredMinTickCount = 2;
      }
    } else {
      _desiredMaxTickCount = null;
      _desiredMinTickCount = null;
    }
  }

  /// Sets the allowed step sizes this tick provider can choose from.
  ///
  /// All ticks will be a power of 10 multiple of the given step sizes.
  ///
  /// Note that if only very few step sizes are allowed the tick range maybe
  /// much bigger than the data range.
  ///
  /// The step sizes setup here apply in axis units, which is different than
  /// input units if a data to axis unit converter is set.
  ///
  /// [steps] allowed step sizes in the [1, 10) range.
  set allowedSteps(List<double> steps) {
    assert(steps != null && steps.isNotEmpty);
    steps.sort();

    final stepSet = new Set.from(steps);
    _allowedSteps = new List<double>(stepSet.length * 3);
    int stepIndex = 0;
    for (double step in stepSet) {
      assert(1.0 <= step && step < 10.0);
      _allowedSteps[stepIndex] = _removeRoundingErrors(step / 100);
      _allowedSteps[stepSet.length + stepIndex] =
          _removeRoundingErrors(step / 10).toDouble();
      _allowedSteps[2 * stepSet.length + stepIndex] =
          _removeRoundingErrors(step);
      stepIndex++;
    }
  }

  List<Tick<num>> _getTicksFromHint({
    @required ChartContext context,
    @required GraphicsFactory graphicsFactory,
    @required NumericScale scale,
    @required TickFormatter<num> formatter,
    @required Map<num, String> formatterValueCache,
    @required TickDrawStrategy tickDrawStrategy,
    @required TickHint<num> tickHint,
  }) {
    final stepSize = (tickHint.end - tickHint.start) / (tickHint.tickCount - 1);
    // Find the first tick that is greater than or equal to the min
    // viewportDomain.
    final tickZeroShift = tickHint.start -
        (stepSize *
            (tickHint.start >= 0
                ? (tickHint.start / stepSize).floor()
                : (tickHint.start / stepSize).ceil()));
    final tickStart =
        (scale.viewportDomain.min / stepSize).ceil() * stepSize + tickZeroShift;
    final stepInfo = new _TickStepInfo(stepSize.abs(), tickStart);
    final tickValues = _getTickValues(stepInfo, tickHint.tickCount);

    // Create ticks from domain values.
    return createTicks(tickValues,
        context: context,
        graphicsFactory: graphicsFactory,
        scale: scale,
        formatter: formatter,
        formatterValueCache: formatterValueCache,
        tickDrawStrategy: tickDrawStrategy,
        stepSize: stepInfo.stepSize);
  }

  @override
  List<Tick<num>> getTicks({
    @required ChartContext context,
    @required GraphicsFactory graphicsFactory,
    @required NumericScale scale,
    @required TickFormatter<num> formatter,
    @required Map<num, String> formatterValueCache,
    @required TickDrawStrategy tickDrawStrategy,
    @required AxisOrientation orientation,
    bool viewportExtensionEnabled = false,
    TickHint<num> tickHint,
  }) {
    List<Tick<num>> ticks;

    _rangeWidth = scale.rangeWidth;
    _updateDomainExtents(scale.viewportDomain);

    // Bypass searching for a tick range since we are getting ticks using
    // information in [tickHint].
    if (tickHint != null) {
      return _getTicksFromHint(
        context: context,
        graphicsFactory: graphicsFactory,
        scale: scale,
        formatter: formatter,
        formatterValueCache: formatterValueCache,
        tickDrawStrategy: tickDrawStrategy,
        tickHint: tickHint,
      );
    }

    if (_hasTickParametersChanged() || ticks == null) {
      var selectedTicksRange = double.maxFinite;
      var foundPreferredTicks = false;
      var viewportDomain = scale.viewportDomain;
      final axisUnitsHigh = dataToAxisUnitConverter.convert(_high);
      final axisUnitsLow = dataToAxisUnitConverter.convert(_low);

      _updateTickCounts(axisUnitsHigh, axisUnitsLow);

      // Only create a copy of the scale if [viewportExtensionEnabled].
      NumericScale mutableScale =
          viewportExtensionEnabled ? scale.copy() : null;

      // Walk to available tick count from max to min looking for the first one
      // that gives you the least amount of range used. If a non colliding tick
      // count is not found use the min tick count to generate ticks.
      for (int tickCount = _maxTickCount;
          tickCount >= _minTickCount;
          tickCount--) {
        final stepInfo =
            _getStepsForTickCount(tickCount, axisUnitsHigh, axisUnitsLow);
        if (stepInfo == null) {
          continue;
        }
        final firstTick = dataToAxisUnitConverter.invert(stepInfo.tickStart);
        final lastTick = dataToAxisUnitConverter
            .invert(stepInfo.tickStart + stepInfo.stepSize * (tickCount - 1));
        final range = lastTick - firstTick;
        // Calculate ticks if it is a better range or if preferred ticks have
        // not been found yet.
        if (range < selectedTicksRange || !foundPreferredTicks) {
          final tickValues = _getTickValues(stepInfo, tickCount);

          if (viewportExtensionEnabled) {
            mutableScale.viewportDomain =
                new NumericExtents(firstTick, lastTick);
          }

          // Create ticks from domain values.
          final preferredTicks = createTicks(tickValues,
              context: context,
              graphicsFactory: graphicsFactory,
              scale: viewportExtensionEnabled ? mutableScale : scale,
              formatter: formatter,
              formatterValueCache: formatterValueCache,
              tickDrawStrategy: tickDrawStrategy,
              stepSize: stepInfo.stepSize);

          // Request collision check from draw strategy.
          final collisionReport =
              tickDrawStrategy.collides(preferredTicks, orientation);

          // Don't choose colliding ticks unless it was our last resort
          if (collisionReport.ticksCollide && tickCount > _minTickCount) {
            continue;
          }
          // Only choose alternate ticks if preferred ticks is not found.
          if (foundPreferredTicks && collisionReport.alternateTicksUsed) {
            continue;
          }

          ticks = collisionReport.alternateTicksUsed
              ? collisionReport.ticks
              : preferredTicks;
          foundPreferredTicks = !collisionReport.alternateTicksUsed;
          selectedTicksRange = range;
          // If viewport extended, save the viewport used.
          viewportDomain = mutableScale?.viewportDomain ?? scale.viewportDomain;
        }
      }
      _setPreviousTickCalculationParameters();
      // If [viewportExtensionEnabled] and has changed, then set the scale's
      // viewport to what was used to generate ticks. By only setting viewport
      // when it has changed, we do not trigger the flag to recalculate scale.
      if (viewportExtensionEnabled && scale.viewportDomain != viewportDomain) {
        scale.viewportDomain = viewportDomain;
      }
    }

    return ticks;
  }

  /// Checks whether the parameters that are used in determining the right set
  /// of ticks changed from the last time we calculated ticks. If not we should
  /// be able to use the cached ticks.
  bool _hasTickParametersChanged() {
    return _low != _prevLow ||
        _high != _prevHigh ||
        _rangeWidth != _prevRangeWidth ||
        _minTickCount != _prevMinTickCount ||
        _maxTickCount != _prevMaxTickCount ||
        dataIsInWholeNumbers != _prevDataIsInWholeNumbers;
  }

  /// Save the last set of parameters used while determining ticks.
  void _setPreviousTickCalculationParameters() {
    _prevLow = _low;
    _prevHigh = _high;
    _prevRangeWidth = _rangeWidth;
    _prevMinTickCount = _minTickCount;
    _prevMaxTickCount = _maxTickCount;
    _prevDataIsInWholeNumbers = dataIsInWholeNumbers;
  }

  /// Calculates the domain extents that this provider will cover based on the
  /// axis extents passed in and the settings in the numeric tick provider.
  /// Stores the domain extents in [_low] and [_high].
  void _updateDomainExtents(NumericExtents axisExtents) {
    _low = axisExtents.min;
    _high = axisExtents.max;

    // Correct the extents for zero bound
    if (zeroBound) {
      _low = _low > 0.0 ? 0.0 : _low;
      _high = _high < 0.0 ? 0.0 : _high;
    }

    // Correct cases where high and low equal to give the tick provider an
    // actual range to go off of when picking ticks.
    if (_high == _low) {
      if (_high == 0.0) {
        // Corner case: the only values we've seen are zero, so lets just say
        // the high is 1 and leave the low at zero.
        _high = 1.0;
      } else {
        // The values are all the same, so assume a range of -5% to +5% from the
        // single value.
        if (_high > 0.0) {
          _high = _high * 1.05;
          _low = _low * 0.95;
        } else {
          // (high == low) < 0
          _high = _high * 0.95;
          _low = _low * 1.05;
        }
      }
    }
  }

  /// Given [tickCount] and the domain range, finds the smallest tick increment,
  /// chosen from power of 10 multiples of allowed steps, that covers the whole
  /// data range.
  _TickStepInfo _getStepsForTickCount(int tickCount, num high, num low) {
    // A region is the space between ticks.
    final regionCount = tickCount - 1;

    // If the range contains zero, ensure that zero is a tick.
    if (high >= 0 && low <= 0) {
      // determine the ratio of regions that are above the zero axis.
      final posRegionRatio = (high > 0 ? min(1.0, high / (high - low)) : 0.0);
      var positiveRegionCount = (regionCount * posRegionRatio).ceil();
      var negativeRegionCount = regionCount - positiveRegionCount;
      // Ensure that negative regions are not excluded, unless there are no
      // regions to spare.
      if (negativeRegionCount == 0 && low < 0 && regionCount > 1) {
        positiveRegionCount--;
        negativeRegionCount++;
      }

      // If we have positive and negative values, ensure that we have ticks in
      // both regions.
      //
      // This should not happen unless the axis is manually configured with a
      // tick count. [_updateTickCounts] should ensure that we have do not try
      // to generate fewer than three.
      assert(
          !(low < 0 &&
              high > 0 &&
              (negativeRegionCount == 0 || positiveRegionCount == 0)),
          'Numeric tick provider cannot generate ${tickCount} '
          'ticks when the axis range contains both positive and negative '
          'values. A minimum of three ticks are required to include zero.');

      // Determine the "favored" axis direction (the one which will control the
      // ticks based on having a greater value / regions).
      //
      // Example: 13 / 3 (4.33 per tick) vs -5 / 1 (5 per tick)
      // making -5 the favored number.  A step size that includes this number
      // ensures the other is also includes in the opposite direction.
      final favorPositive = (high > 0 ? high / positiveRegionCount : 0).abs() >
          (low < 0 ? low / negativeRegionCount : 0).abs();
      final favoredNum = (favorPositive ? high : low).abs();
      final favoredRegionCount =
          favorPositive ? positiveRegionCount : negativeRegionCount;
      final favoredTensBase = (_getEnclosingPowerOfTen(favoredNum)).abs();

      // Check each step size and see if it would contain the "favored" value
      for (double step in _allowedSteps) {
        final tmpStepSize = _removeRoundingErrors(step * favoredTensBase);

        // If prefer whole number, then don't allow a step that isn't one.
        if (dataIsInWholeNumbers && (tmpStepSize).round() != tmpStepSize) {
          continue;
        }

        // TODO: Skip steps that format to the same string.
        // But wait until the last step to prevent the cost of the formatter.
        // Potentially store the formatted strings in TickStepInfo?
        if (tmpStepSize * favoredRegionCount >= favoredNum) {
          double stepStart = negativeRegionCount > 0
              ? (-1 * tmpStepSize * negativeRegionCount)
              : 0.0;
          return new _TickStepInfo(tmpStepSize, stepStart);
        }
      }
    } else {
      // Find the range base to calculate step sizes.
      final diffTensBase = _getEnclosingPowerOfTen(high - low);
      // Walk the step sizes calculating a starting point and seeing if the high
      // end is included in the range given that step size.
      for (double step in _allowedSteps) {
        final tmpStepSize = _removeRoundingErrors(step * diffTensBase);

        // If prefer whole number, then don't allow a step that isn't one.
        if (dataIsInWholeNumbers && (tmpStepSize).round() != tmpStepSize) {
          continue;
        }

        // TODO: Skip steps that format to the same string.
        // But wait until the last step to prevent the cost of the formatter.
        double tmpStepStart = _getStepLessThan(low, tmpStepSize);
        if (tmpStepStart + (tmpStepSize * regionCount) >= high) {
          return new _TickStepInfo(tmpStepSize, tmpStepStart);
        }
      }
    }

    return new _TickStepInfo(1.0, low.floorToDouble());
  }

  List<double> _getTickValues(_TickStepInfo steps, int tickCount) {
    final tickValues = new List<double>(tickCount);
    // We have our size and start, assign all the tick values to the given array.
    for (int i = 0; i < tickCount; i++) {
      tickValues[i] = dataToAxisUnitConverter.invert(
          _removeRoundingErrors(steps.tickStart + (i * steps.stepSize)));
    }
    return tickValues;
  }

  /// Given the axisDimensions update the tick counts given they are not fixed.
  void _updateTickCounts(num high, num low) {
    int tmpMaxNumMajorTicks;
    int tmpMinNumMajorTicks;

    // If the domain range contains both positive and negative values, then we
    // need a minimum of three ticks to include zero as a tick. Otherwise, we
    // only need an upper and lower tick.
    final absoluteMinTicks = (low < 0 && 0 < high) ? 3 : 2;

    // If there is a desired tick range use it, if not calculate one.
    if (_desiredMaxTickCount != null) {
      tmpMinNumMajorTicks = max(_desiredMinTickCount, absoluteMinTicks);
      tmpMaxNumMajorTicks = max(_desiredMaxTickCount, tmpMinNumMajorTicks);
    } else {
      double minPixelsPerTick = MIN_DIPS_BETWEEN_TICKS.toDouble();
      tmpMinNumMajorTicks = absoluteMinTicks;
      tmpMaxNumMajorTicks =
          max(absoluteMinTicks, (_rangeWidth / minPixelsPerTick).floor());
    }

    // Don't blow away the previous array if it hasn't changed.
    if (tmpMaxNumMajorTicks != _maxTickCount ||
        tmpMinNumMajorTicks != _minTickCount) {
      _maxTickCount = tmpMaxNumMajorTicks;
      _minTickCount = tmpMinNumMajorTicks;
    }
  }

  /// Returns the power of 10 which contains the [number].
  ///
  /// If [number] is 0 returns 1.
  /// Examples:
  /// [number] of 63 returns 100
  /// [number] of -63 returns -100
  /// [number] of 0.63 returns 1
  static double _getEnclosingPowerOfTen(num number) {
    if (number == 0) {
      return 1.0;
    }

    return pow(10, (log10e * log(number.abs())).ceil()) *
        (number < 0.0 ? -1.0 : 1.0);
  }

  /// Returns the step numerically less than the number by step increments.
  static double _getStepLessThan(double number, double stepSize) {
    if (number == 0.0 || stepSize == 0.0) {
      return 0.0;
    }
    return (stepSize > 0.0
            ? (number / stepSize).floor()
            : (number / stepSize).ceil()) *
        stepSize;
  }

  /// Attempts to slice off very small floating point rounding effects for the
  /// given number.
  ///
  /// @param number the number to round.
  /// @return the rounded number.
  static double _removeRoundingErrors(double number) {
    // sufficiently large multiplier to handle generating ticks on the order
    // of 10^-9.
    const multiplier = 1.0e9;

    return number > 100.0
        ? number.roundToDouble()
        : (number * multiplier).roundToDouble() / multiplier;
  }
}

class _TickStepInfo {
  double stepSize;
  double tickStart;

  _TickStepInfo(this.stepSize, this.tickStart);
}
