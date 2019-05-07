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

import 'dart:math' as math show max, min;

/// Scale used to convert data input domain units to output range units.
///
/// This is the immutable portion of the Scale definition. Used for converting
/// data from the dataset in domain units to an output in range units (likely
/// pixel range of the area to draw on).
///
/// <p>The Scale/MutableScale split is to show the intention of what you can or
/// should be doing with the scale during different stages of chart draw
/// process.
///
/// [D] is the domain class type for the values passed in.
abstract class Scale<D> {
  /// Applies the scale function to the [domainValue].
  ///
  /// Returns the pixel location for the given [domainValue] or null if the
  /// domainValue could not be found/translated by this scale.
  /// Non-numeric scales should be the only ones that can return null.
  num operator [](D domainValue);

  /// Reverse application of the scale.
  D reverse(double pixelLocation);

  /// Tests a [domainValue] to see if the scale can translate it.
  ///
  /// Returns true if the scale can translate the given domainValue.
  /// (Ex: linear scales can translate any number, but ordinal scales can only
  /// translate values previously passed in.)
  bool canTranslate(D domainValue);

  /// Returns the previously set output range for the scale function.
  ScaleOutputExtent get range;

  /// Returns the absolute width between the max and min range values.
  int get rangeWidth;

  /// Returns the configuration used to determine the rangeBand.
  ///
  /// This is most often used to define the bar group width.
  RangeBandConfig get rangeBandConfig;

  /// Returns the rangeBand width in pixels.
  ///
  /// The rangeBand is determined using the RangeBandConfig potentially with the
  /// measured step size.  This value is used as the bar group width.  If
  /// StepSizeConfig is set to auto detect, then you must wait until after
  /// the chart's onPostLayout phase before you'll get a valid number.
  double get rangeBand;

  /// Returns the stepSize width in pixels.
  ///
  /// The step size is determined using the [StepSizeConfig].
  double get stepSize;

  /// Returns the stepSize domain value.
  double get domainStepSize;

  /// Tests whether the given [domainValue] is within the axis' range.
  ///
  /// Returns < 0 if the [domainValue] would plot before the viewport, 0 if it
  /// would plot within the viewport and > 0 if it would plot beyond the
  /// viewport of the axis.
  int compareDomainValueToViewport(D domainValue);

  /// Returns true if the given [rangeValue] point is within the output range.
  ///
  /// Not to be confused with the start and end of the domain.
  bool isRangeValueWithinViewport(double rangeValue);

  /// Returns the current viewport scale.
  ///
  /// A scale of 1.0 would map the data directly to the output range, while a
  /// value of 2.0 would map the data to an output of double the range so you
  /// only see half the data in the viewport.  This is the equivalent to
  /// zooming.  Its value is likely >= 1.0.
  double get viewportScalingFactor;

  /// Returns the current pixel viewport offset
  ///
  /// The translate is used by the scale function when it applies the scale.
  /// This is the equivalent to panning.  Its value is likely <= 0 to pan the
  /// data to the left.
  double get viewportTranslatePx;

  /// Returns a mutable copy of the scale.
  ///
  /// Mutating the returned scale will not effect the original one.
  MutableScale<D> copy();
}

/// Mutable extension of the [Scale] definition.
///
/// Used for converting data from the dataset to some range (likely pixel range)
/// of the area to draw on.
///
/// [D] the domain class type for the values passed in.
abstract class MutableScale<D> extends Scale<D> {
  /// Reset the domain for this [Scale].
  void resetDomain();

  /// Reset the viewport settings for this [Scale].
  void resetViewportSettings();

  /// Add [domainValue] to this [Scale]'s domain.
  ///
  /// Domains should be added in order to allow proper stepSize detection.
  /// [domainValue] is the data value to add to the scale used to update the
  /// domain extent.
  void addDomain(D domainValue);

  /// Sets the output range to use for the scale's conversion.
  ///
  /// The range start is mapped to the domain's min and the range end is
  /// mapped to the domain's max for the conversion using the domain nicing
  /// function.
  ///
  /// [extent] is the extent of the range which will likely be the pixel
  /// range of the drawing area to convert to.
  set range(ScaleOutputExtent extent);

  /// Configures the zoom and translate.
  ///
  /// [viewportScale] is the zoom factor to use, likely >= 1.0 where 1.0 maps
  /// the complete data extents to the output range, and 2.0 only maps half the
  /// data to the output range.
  ///
  /// [viewportTranslatePx] is the translate/pan to use in pixel units,
  /// likely <= 0 which shifts the start of the data before the edge of the
  /// chart giving us a pan.
  void setViewportSettings(double viewportScale, double viewportTranslatePx);

  /// Sets the configuration used to determine the rangeBand (bar group width).
  set rangeBandConfig(RangeBandConfig barGroupWidthConfig);

  /// Sets the method for determining the step size.
  ///
  /// This is the domain space between data points.
  StepSizeConfig get stepSizeConfig;
  set stepSizeConfig(StepSizeConfig config);
}

/// Tuple of the output for a scale in pixels from [start] to [end] inclusive.
///
/// It is different from [Extent] because it focuses on start and end and not
/// min and max, meaning that start could be greater or less than end.
class ScaleOutputExtent {
  final int start;
  final int end;

  const ScaleOutputExtent(this.start, this.end);

  int get min => math.min(start, end);
  int get max => math.max(start, end);

  bool containsValue(double value) => value >= min && value <= max;

  /// Returns the difference between the extents.
  ///
  /// If the [end] is less than the [start] (think vertical measure axis), then
  /// this will correctly return a negative value.
  int get diff => end - start;

  /// Returns the width of the extent.
  int get width => diff.abs();

  @override
  bool operator ==(other) =>
      other is ScaleOutputExtent && start == other.start && end == other.end;

  @override
  int get hashCode => start.hashCode + (end.hashCode * 31);

  @override
  String toString() => "ScaleOutputRange($start, $end)";
}

/// Type of RangeBand used to determine the rangeBand size units.
enum RangeBandType {
  /// No rangeBand (not suitable for bars or step line charts).
  none,

  /// Size is specified in pixel units.
  fixedPixel,

  /// Size is specified domain scale units.
  fixedDomain,

  /// Size is a percentage of the minimum step size between points.
  fixedPercentOfStep,

  /// Size is a style pack assigned percentage of the minimum step size between
  /// points.
  styleAssignedPercentOfStep,

  /// Size is subtracted from the minimum step size between points in pixel
  /// units.
  fixedPixelSpaceFromStep,
}

/// Defines the method for calculating the rangeBand of the Scale.
///
/// The rangeBand is used to determine the width of a group of bars.  The term
/// rangeBand comes from the d3 JavaScript library which the JS library uses
/// internally.
///
/// <p>RangeBandConfig is immutable, See factory methods for creating one.
class RangeBandConfig {
  final RangeBandType type;

  /// The width of the band in units specified by the bandType.
  final double size;

  /// Creates a rangeBand definition of zero, no rangeBand.
  const RangeBandConfig.none()
      : type = RangeBandType.none,
        size = 0.0;

  /// Creates a fixed rangeBand definition in pixel width.
  ///
  /// Used to determine a bar width or a step width in the line renderer.
  const RangeBandConfig.fixedPixel(double pixels)
      : type = RangeBandType.fixedPixel,
        size = pixels;

  /// Creates a fixed rangeBand definition in domain unit width.
  ///
  /// Used to determine a bar width or a step width in the line renderer.
  const RangeBandConfig.fixedDomain(double domainSize)
      : type = RangeBandType.fixedDomain,
        size = domainSize;

  /// Creates a config that defines the rangeBand as equal to the stepSize.
  const RangeBandConfig.stepChartBand()
      : type = RangeBandType.fixedPercentOfStep,
        size = 1.0;

  /// Creates a config that defines the rangeBand as percentage of the stepSize.
  ///
  /// [percentOfStepWidth] is the percentage of the step from 0.0 - 1.0.
  RangeBandConfig.percentOfStep(double percentOfStepWidth)
      : type = RangeBandType.fixedPercentOfStep,
        size = percentOfStepWidth {
    assert(percentOfStepWidth >= 0 && percentOfStepWidth <= 1.0);
  }

  /// Creates a config that assigns the rangeBand according to the stylepack.
  ///
  /// <p>Note: renderers can detect this setting and update the percent based on
  /// the number of series in their preprocess.
  RangeBandConfig.styleAssignedPercent([int seriesCount = 1])
      : type = RangeBandType.styleAssignedPercentOfStep,
        // TODO: retrieve value from the stylepack once available.
        size = 0.65;

  /// Creates a config that defines the rangeBand as the stepSize - pixels.
  ///
  /// Where fixedPixels() gave you a constant rangBand in pixels, this will give
  /// you a constant space between rangeBands in pixels.
  const RangeBandConfig.fixedPixelSpaceBetweenStep(double pixels)
      : type = RangeBandType.fixedPixelSpaceFromStep,
        size = pixels;
}

/// Type of step size calculation to use.
enum StepSizeType { autoDetect, fixedDomain, fixedPixels }

/// Defines the method for calculating the stepSize between points.
///
/// Typically auto will work fine in most cases, but if your data is
/// irregular or you only have one data point, then you may want to override the
/// stepSize detection specifying the exact expected stepSize.
class StepSizeConfig {
  final StepSizeType type;
  final double size;

  /// Creates a StepSizeConfig that calculates step size based on incoming data.
  ///
  /// The stepSize is determined is calculated by detecting the smallest
  /// distance between two adjacent data points.  This may not be suitable if
  /// you have irregular data or just a single data point.
  const StepSizeConfig.auto()
      : type = StepSizeType.autoDetect,
        size = 0.0;

  /// Creates a StepSizeConfig specifying the exact step size in pixel units.
  const StepSizeConfig.fixedPixels(double pixels)
      : type = StepSizeType.fixedPixels,
        size = pixels;

  /// Creates a StepSizeConfig specifying the exact step size in domain units.
  const StepSizeConfig.fixedDomain(double domainSize)
      : type = StepSizeType.fixedDomain,
        size = domainSize;
}

// TODO: make other extent subclasses plural.
abstract class Extents<D> {}
