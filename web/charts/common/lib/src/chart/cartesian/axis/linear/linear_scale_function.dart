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

import '../scale.dart'
    show RangeBandConfig, RangeBandType, StepSizeConfig, StepSizeType;
import 'linear_scale_domain_info.dart' show LinearScaleDomainInfo;
import 'linear_scale_viewport.dart' show LinearScaleViewportSettings;

/// Component of the LinearScale which actually handles the apply and reverse
/// function of the scale.
class LinearScaleFunction {
  /// Cached rangeBand width in pixels given the RangeBandConfig and the current
  /// domain & range.
  double rangeBandPixels = 0.0;

  /// Cached amount in domain units to shift the input value as a part of
  /// translation.
  num domainTranslate = 0.0;

  /// Cached translation ratio for scale translation.
  double scalingFactor = 1.0;

  /// Cached amount in pixel units to shift the output value as a part of
  /// translation.
  double rangeTranslate = 0.0;

  /// The calculated step size given the step size config.
  double stepSizePixels = 0.0;

  /// Translates the given domainValue to the range output.
  double operator [](num domainValue) {
    return (((domainValue + domainTranslate) * scalingFactor) + rangeTranslate)
        .toDouble();
  }

  /// Translates the given range output back to a domainValue.
  double reverse(double viewPixels) {
    return ((viewPixels - rangeTranslate) / scalingFactor) - domainTranslate;
  }

  /// Update the scale function's scaleFactor given the current state of the
  /// viewport.
  void updateScaleFactor(
      LinearScaleViewportSettings viewportSettings,
      LinearScaleDomainInfo domainInfo,
      RangeBandConfig rangeBandConfig,
      StepSizeConfig stepSizeConfig) {
    double rangeDiff = viewportSettings.range.diff.toDouble();
    // Note: if you provided a nicing function that extends the domain, we won't
    // muck with the extended side.
    bool hasHalfStepAtStart =
        domainInfo.extent.min == domainInfo.dataDomainStart;
    bool hasHalfStepAtEnd = domainInfo.extent.max == domainInfo.dataDomainEnd;

    // Determine the stepSize and reserved range values.
    // The percentage of the step reserved from the scale's range due to the
    // possible half step at the start and end.
    double reservedRangePercentOfStep =
        getStepReservationPercent(hasHalfStepAtStart, hasHalfStepAtEnd);
    _updateStepSizeAndScaleFactor(viewportSettings, domainInfo, rangeDiff,
        reservedRangePercentOfStep, rangeBandConfig, stepSizeConfig);
  }

  /// Returns the percentage of the step reserved from the output range due to
  /// maybe having to hold half stepSizes on the start and end of the output.
  double getStepReservationPercent(
      bool hasHalfStepAtStart, bool hasHalfStepAtEnd) {
    if (!hasHalfStepAtStart && !hasHalfStepAtEnd) {
      return 0.0;
    }
    if (hasHalfStepAtStart && hasHalfStepAtEnd) {
      return 1.0;
    }
    return 0.5;
  }

  /// Updates the scale function's translate and rangeBand given the current
  /// state of the viewport.
  void updateTranslateAndRangeBand(LinearScaleViewportSettings viewportSettings,
      LinearScaleDomainInfo domainInfo, RangeBandConfig rangeBandConfig) {
    // Assign the rangeTranslate using the current viewportSettings.translatePx
    // and diffs.
    if (domainInfo.domainDiff == 0) {
      // Translate it to the center of the range.
      rangeTranslate =
          viewportSettings.range.start + (viewportSettings.range.diff / 2);
    } else {
      bool hasHalfStepAtStart =
          domainInfo.extent.min == domainInfo.dataDomainStart;
      // The pixel shift of the scale function due to the half a step at the
      // beginning.
      double reservedRangePixelShift =
          hasHalfStepAtStart ? (stepSizePixels / 2.0) : 0.0;

      rangeTranslate = (viewportSettings.range.start +
          viewportSettings.translatePx +
          reservedRangePixelShift);
    }

    // We need to subtract the start from any incoming domain to apply the
    // scale, so flip its sign.
    domainTranslate = -1 * domainInfo.extent.min;

    // Update the rangeBand size.
    rangeBandPixels = _calculateRangeBandSize(rangeBandConfig);
  }

  /// Calculates and stores the current rangeBand given the config and current
  /// step size.
  double _calculateRangeBandSize(RangeBandConfig rangeBandConfig) {
    switch (rangeBandConfig.type) {
      case RangeBandType.fixedDomain:
        return rangeBandConfig.size * scalingFactor;
      case RangeBandType.fixedPixel:
        return rangeBandConfig.size;
      case RangeBandType.fixedPixelSpaceFromStep:
        return stepSizePixels - rangeBandConfig.size;
      case RangeBandType.styleAssignedPercentOfStep:
      case RangeBandType.fixedPercentOfStep:
        return stepSizePixels * rangeBandConfig.size;
      case RangeBandType.none:
        return 0.0;
    }
    return 0.0;
  }

  /// Calculates and Stores the current step size and scale factor together,
  /// given the viewport, domain, and config.
  ///
  /// <p>Scale factor and step size are related closely and should be calculated
  /// together so that we do not lose accuracy due to double arithmetic.
  void _updateStepSizeAndScaleFactor(
      LinearScaleViewportSettings viewportSettings,
      LinearScaleDomainInfo domainInfo,
      double rangeDiff,
      double reservedRangePercentOfStep,
      RangeBandConfig rangeBandConfig,
      StepSizeConfig stepSizeConfig) {
    final domainDiff = domainInfo.domainDiff;

    // If we are going to have any rangeBands, then ensure that we account for
    // needed space on the beginning and end of the range.
    if (rangeBandConfig.type != RangeBandType.none) {
      switch (stepSizeConfig.type) {
        case StepSizeType.autoDetect:
          double minimumDetectedDomainStep =
              domainInfo.minimumDetectedDomainStep.toDouble();
          if (minimumDetectedDomainStep != null &&
              minimumDetectedDomainStep.isFinite) {
            scalingFactor = viewportSettings.scalingFactor *
                (rangeDiff /
                    (domainDiff +
                        (minimumDetectedDomainStep *
                            reservedRangePercentOfStep)));
            stepSizePixels = (minimumDetectedDomainStep * scalingFactor);
          } else {
            stepSizePixels = rangeDiff.abs();
            scalingFactor = 1.0;
          }
          return;
        case StepSizeType.fixedPixels:
          stepSizePixels = stepSizeConfig.size;
          double reservedRangeForStepPixels =
              stepSizePixels * reservedRangePercentOfStep;
          scalingFactor = domainDiff == 0
              ? 1.0
              : viewportSettings.scalingFactor *
                  (rangeDiff - reservedRangeForStepPixels) /
                  domainDiff;
          return;
        case StepSizeType.fixedDomain:
          double domainStepWidth = stepSizeConfig.size;
          double totalDomainDiff =
              (domainDiff + (domainStepWidth * reservedRangePercentOfStep));
          scalingFactor = totalDomainDiff == 0
              ? 1.0
              : viewportSettings.scalingFactor * (rangeDiff / totalDomainDiff);
          stepSizePixels = domainStepWidth * scalingFactor;
          return;
      }
    }

    // If no cases matched, use zero step size.
    stepSizePixels = 0.0;
    scalingFactor = domainDiff == 0
        ? 1.0
        : viewportSettings.scalingFactor * rangeDiff / domainDiff;
  }
}
