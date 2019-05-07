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

import '../numeric_extents.dart' show NumericExtents;
import '../scale.dart' show ScaleOutputExtent;
import 'linear_scale_domain_info.dart' show LinearScaleDomainInfo;

/// Component of the LinearScale responsible for the configuration and
/// calculations of the viewport.
class LinearScaleViewportSettings {
  /// Output extent for the scale, typically set by the axis as the pixel
  /// output.
  ScaleOutputExtent range;

  /// Determines whether the scale should be extended to the nice values
  /// provided by the tick provider.  If true, we wont touch the viewport config
  /// since the axis will configure it, if false, we will still ensure sane zoom
  /// and translates.
  bool keepViewportWithinData = true;

  /// User configured viewport scale as a zoom multiplier where 1.0 is
  /// 100% (default) and 2.0 is 200% zooming in making the data take up twice
  /// the space (showing half as much data in the viewport).
  double scalingFactor = 1.0;

  /// User configured viewport translate in pixel units.
  double translatePx = 0.0;

  /// The current extent of the viewport in domain units.
  NumericExtents _domainExtent;
  set domainExtent(NumericExtents extent) {
    _domainExtent = extent;
    _manualDomainExtent = extent != null;
  }

  NumericExtents get domainExtent => _domainExtent;

  /// Indicates that the viewportExtends are to be read from to determine the
  /// internal scaleFactor and rangeTranslate.

  bool _manualDomainExtent = false;

  LinearScaleViewportSettings();

  LinearScaleViewportSettings.copy(LinearScaleViewportSettings other) {
    range = other.range;
    keepViewportWithinData = other.keepViewportWithinData;
    scalingFactor = other.scalingFactor;
    translatePx = other.translatePx;
    _manualDomainExtent = other._manualDomainExtent;
    _domainExtent = other._domainExtent;
  }

  /// Resets the viewport calculated fields back to their initial settings.
  void reset() {
    // Likely an auto assigned viewport (niced), so reset it between draws.
    scalingFactor = 1.0;
    translatePx = 0.0;
    domainExtent = null;
  }

  int get rangeWidth => range.diff.abs().toInt();

  bool isRangeValueWithinViewport(double rangeValue) =>
      range.containsValue(rangeValue);

  /// Updates the viewport's internal scalingFactor given the current
  /// domainInfo.
  void updateViewportScaleFactor(LinearScaleDomainInfo domainInfo) {
    // If we are loading from the viewport, then update the scalingFactor given
    // the viewport size compared to the data size.
    if (_manualDomainExtent) {
      double viewportDomainDiff = _domainExtent?.width?.toDouble();
      if (domainInfo.domainDiff != 0.0) {
        scalingFactor = domainInfo.domainDiff / viewportDomainDiff;
      } else {
        scalingFactor = 1.0;
        // The domain claims to have no date, extend it to the viewport's
        domainInfo.extendDomain(_domainExtent?.min);
        domainInfo.extendDomain(_domainExtent?.max);
      }
    }

    // Make sure that the viewportSettings.scalingFactor is sane if desired.
    if (!keepViewportWithinData) {
      // Make sure we don't zoom out beyond the max domain extent.
      scalingFactor = math.max(1.0, scalingFactor);
    }
  }

  /// Updates the viewport's internal translate given the current domainInfo and
  /// main scalingFactor from LinearScaleFunction (not internal scalingFactor).
  void updateViewportTranslatePx(
      LinearScaleDomainInfo domainInfo, double scaleScalingFactor) {
    // If we are loading from the viewport, then update the translate now that
    // the scaleFactor has been setup.
    if (_manualDomainExtent) {
      translatePx = (-1.0 *
          scaleScalingFactor *
          (_domainExtent.min - domainInfo.extent.min));
    }

    // Make sure that the viewportSettings.translatePx is sane if desired.
    if (!keepViewportWithinData) {
      int rangeDiff = range.diff.toInt();

      // Make sure we don't translate beyond the max domain extent.
      translatePx = math.min(0.0, translatePx);
      translatePx = math.max(rangeDiff * (1.0 - scalingFactor), translatePx);
    }
  }

  /// Calculates and stores the viewport's domainExtent if we did not load from
  /// them in the first place.
  void updateViewportDomainExtent(
      LinearScaleDomainInfo domainInfo, double scaleScalingFactor) {
    // If we didn't load from the viewport extent, then update them given the
    // current scale configuration.
    if (!_manualDomainExtent) {
      double viewportDomainDiff = domainInfo.domainDiff / scalingFactor;
      double viewportStart =
          (-1.0 * translatePx / scaleScalingFactor) + domainInfo.extent.min;
      _domainExtent =
          new NumericExtents(viewportStart, viewportStart + viewportDomainDiff);
    }
  }
}
