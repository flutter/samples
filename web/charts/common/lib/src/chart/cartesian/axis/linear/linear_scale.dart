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

import '../numeric_extents.dart' show NumericExtents;
import '../numeric_scale.dart' show NumericScale;
import '../scale.dart' show RangeBandConfig, ScaleOutputExtent, StepSizeConfig;
import 'linear_scale_domain_info.dart' show LinearScaleDomainInfo;
import 'linear_scale_function.dart' show LinearScaleFunction;
import 'linear_scale_viewport.dart' show LinearScaleViewportSettings;

/// [NumericScale] that lays out the domain linearly across the range.
///
/// A [Scale] which converts numeric domain units to a given numeric range units
/// linearly (as opposed to other methods like log scales).  This is used to map
/// the domain's values to the available pixel range of the chart using the
/// apply method.
///
/// <p>The domain extent of the scale are determined by adding all domain
/// values to the scale.  It can, however, be overwritten by calling
/// [domainOverride] to define the extent of the data.
///
/// <p>The scale can be zoomed & panned by calling either [setViewportSettings]
/// with a zoom and translate, or by setting [viewportExtent] with the domain
/// extent to show in the output range.
///
/// <p>[rangeBandConfig]: By default, this scale will map the domain extent
/// exactly to the output range in a simple ratio mapping.  If a
/// [RangeBandConfig] other than NONE is used to define the width of bar groups,
/// then the scale calculation may be altered to that there is a half a stepSize
/// at the start and end of the range to ensure that a bar group can be shown
/// and centered on the scale's result.
///
/// <p>[stepSizeConfig]: By default, this scale will calculate the stepSize as
/// being auto detected using the minimal distance between two consecutive
/// datum.  If you don't assign a [RangeBandConfig], then changing the
/// [stepSizeConfig] is a no-op.
class LinearScale implements NumericScale {
  final LinearScaleDomainInfo _domainInfo;
  final LinearScaleViewportSettings _viewportSettings;
  final LinearScaleFunction _scaleFunction = new LinearScaleFunction();

  RangeBandConfig rangeBandConfig = const RangeBandConfig.none();
  StepSizeConfig stepSizeConfig = const StepSizeConfig.auto();

  bool _scaleReady = false;

  LinearScale()
      : _domainInfo = new LinearScaleDomainInfo(),
        _viewportSettings = new LinearScaleViewportSettings();

  LinearScale._copy(LinearScale other)
      : _domainInfo = new LinearScaleDomainInfo.copy(other._domainInfo),
        _viewportSettings =
            new LinearScaleViewportSettings.copy(other._viewportSettings),
        rangeBandConfig = other.rangeBandConfig,
        stepSizeConfig = other.stepSizeConfig;

  @override
  LinearScale copy() => new LinearScale._copy(this);

  //
  // Domain methods
  //

  @override
  addDomain(num domainValue) {
    _domainInfo.addDomainValue(domainValue);
  }

  @override
  resetDomain() {
    _scaleReady = false;
    _domainInfo.reset();
  }

  @override
  resetViewportSettings() {
    _viewportSettings.reset();
  }

  @override
  NumericExtents get dataExtent => new NumericExtents(
      _domainInfo.dataDomainStart, _domainInfo.dataDomainEnd);

  @override
  num get minimumDomainStep => _domainInfo.minimumDetectedDomainStep;

  @override
  bool canTranslate(_) => true;

  @override
  set domainOverride(NumericExtents domainMaxExtent) {
    _domainInfo.domainOverride = domainMaxExtent;
  }

  get domainOverride => _domainInfo.domainOverride;

  @override
  int compareDomainValueToViewport(num domainValue) {
    NumericExtents dataExtent = _viewportSettings.domainExtent != null
        ? _viewportSettings.domainExtent
        : _domainInfo.extent;
    return dataExtent.compareValue(domainValue);
  }

  //
  // Viewport methods
  //

  @override
  setViewportSettings(double viewportScale, double viewportTranslatePx) {
    _viewportSettings
      ..scalingFactor = viewportScale
      ..translatePx = viewportTranslatePx
      ..domainExtent = null;
    _scaleReady = false;
  }

  @override
  double get viewportScalingFactor => _viewportSettings.scalingFactor;

  @override
  double get viewportTranslatePx => _viewportSettings.translatePx;

  @override
  set viewportDomain(NumericExtents extent) {
    _scaleReady = false;
    _viewportSettings.domainExtent = extent;
  }

  @override
  NumericExtents get viewportDomain {
    _configureScale();
    return _viewportSettings.domainExtent;
  }

  @override
  set keepViewportWithinData(bool autoAdjustViewportToNiceValues) {
    _scaleReady = false;
    _viewportSettings.keepViewportWithinData = true;
  }

  @override
  bool get keepViewportWithinData => _viewportSettings.keepViewportWithinData;

  @override
  double computeViewportScaleFactor(double domainWindow) =>
      _domainInfo.domainDiff / domainWindow;

  @override
  set range(ScaleOutputExtent extent) {
    _viewportSettings.range = extent;
    _scaleReady = false;
  }

  @override
  ScaleOutputExtent get range => _viewportSettings.range;

  //
  // Scale application methods
  //

  @override
  num operator [](num domainValue) {
    _configureScale();
    return _scaleFunction[domainValue];
  }

  @override
  num reverse(double viewPixels) {
    _configureScale();
    final num domain = _scaleFunction.reverse(viewPixels);
    return domain;
  }

  @override
  double get rangeBand {
    _configureScale();
    return _scaleFunction.rangeBandPixels;
  }

  @override
  double get stepSize {
    _configureScale();
    return _scaleFunction.stepSizePixels;
  }

  @override
  double get domainStepSize => _domainInfo.minimumDetectedDomainStep.toDouble();

  @override
  int get rangeWidth => (range.end - range.start).abs().toInt();

  @override
  bool isRangeValueWithinViewport(double rangeValue) =>
      range.containsValue(rangeValue);

  //
  // Private update
  //

  _configureScale() {
    if (_scaleReady) return;

    assert(_viewportSettings.range != null);

    // If the viewport's domainExtent are set, then we can calculate the
    // viewport's scaleFactor now that the domainInfo has been loaded.
    // The viewport also has a chance to correct the scaleFactor.
    _viewportSettings.updateViewportScaleFactor(_domainInfo);
    // Now that the viewport's scalingFactor is setup, set it on the scale
    // function.
    _scaleFunction.updateScaleFactor(
        _viewportSettings, _domainInfo, rangeBandConfig, stepSizeConfig);

    // If the viewport's domainExtent are set, then we can calculate the
    // viewport's translate now that the scaleFactor has been loaded.
    // The viewport also has a chance to correct the translate.
    _viewportSettings.updateViewportTranslatePx(
        _domainInfo, _scaleFunction.scalingFactor);
    // Now that the viewport has a chance to update the translate, set it on the
    // scale function.
    _scaleFunction.updateTranslateAndRangeBand(
        _viewportSettings, _domainInfo, rangeBandConfig);

    // Now that the viewport's scaleFactor and translate have been updated
    // set the effective domainExtent of the viewport.
    _viewportSettings.updateViewportDomainExtent(
        _domainInfo, _scaleFunction.scalingFactor);

    // Cached computed values are updated.
    _scaleReady = true;
  }
}
