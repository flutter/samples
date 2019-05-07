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

import 'dart:math' show min, max;

import 'ordinal_scale.dart' show OrdinalScale;
import 'ordinal_scale_domain_info.dart' show OrdinalScaleDomainInfo;
import 'scale.dart'
    show
        RangeBandConfig,
        RangeBandType,
        StepSizeConfig,
        StepSizeType,
        ScaleOutputExtent;

/// Scale that converts ordinal values of type [D] to a given range output.
///
/// A `SimpleOrdinalScale` is used to map values from its domain to the
/// available pixel range of the chart. Typically used for bar charts where the
/// width of the bar is [rangeBand] and the position of the bar is retrieved
/// by [[]].
class SimpleOrdinalScale implements OrdinalScale {
  final _stepSizeConfig = new StepSizeConfig.auto();
  OrdinalScaleDomainInfo _domain;
  ScaleOutputExtent _range = new ScaleOutputExtent(0, 1);
  double _viewportScale = 1.0;
  double _viewportTranslatePx = 0.0;
  RangeBandConfig _rangeBandConfig = new RangeBandConfig.styleAssignedPercent();

  bool _scaleChanged = true;
  double _cachedStepSizePixels;
  double _cachedRangeBandShift;
  double _cachedRangeBandSize;

  int _viewportDataSize;
  String _viewportStartingDomain;

  SimpleOrdinalScale() : _domain = new OrdinalScaleDomainInfo();

  SimpleOrdinalScale._copy(SimpleOrdinalScale other)
      : _domain = other._domain.copy(),
        _range = new ScaleOutputExtent(other._range.start, other._range.end),
        _viewportScale = other._viewportScale,
        _viewportTranslatePx = other._viewportTranslatePx,
        _rangeBandConfig = other._rangeBandConfig;

  @override
  double get rangeBand {
    if (_scaleChanged) {
      _updateScale();
    }

    return _cachedRangeBandSize;
  }

  @override
  double get stepSize {
    if (_scaleChanged) {
      _updateScale();
    }

    return _cachedStepSizePixels;
  }

  @override
  double get domainStepSize => 1.0;

  @override
  set rangeBandConfig(RangeBandConfig barGroupWidthConfig) {
    if (barGroupWidthConfig == null) {
      throw new ArgumentError.notNull('RangeBandConfig must not be null.');
    }

    if (barGroupWidthConfig.type == RangeBandType.fixedDomain ||
        barGroupWidthConfig.type == RangeBandType.none) {
      throw new ArgumentError(
          'barGroupWidthConfig must not be NONE or FIXED_DOMAIN');
    }

    _rangeBandConfig = barGroupWidthConfig;
    _scaleChanged = true;
  }

  @override
  RangeBandConfig get rangeBandConfig => _rangeBandConfig;

  @override
  set stepSizeConfig(StepSizeConfig config) {
    if (config != null && config.type != StepSizeType.autoDetect) {
      throw new ArgumentError(
          'Ordinal scales only support StepSizeConfig of type Auto');
    }
    // Nothing is set because only auto is supported.
  }

  @override
  StepSizeConfig get stepSizeConfig => _stepSizeConfig;

  /// Converts [domainValue] to the position to place the band/bar.
  ///
  /// Returns 0 if not found.
  @override
  num operator [](String domainValue) {
    if (_scaleChanged) {
      _updateScale();
    }

    final i = _domain.indexOf(domainValue);
    if (i != null) {
      return viewportTranslatePx +
          _range.start +
          _cachedRangeBandShift +
          (_cachedStepSizePixels * i);
    }
    // If it wasn't found
    return 0.0;
  }

  @override
  String reverse(double pixelLocation) {
    final index = ((pixelLocation -
            viewportTranslatePx -
            _range.start -
            _cachedRangeBandShift) /
        _cachedStepSizePixels);

    // The last pixel belongs in the last step even if it tries to round up.
    //
    // Index may be less than 0 when [pixelLocation] is less than the width of
    // the range band shift. This may happen on the far left side of the chart,
    // where we want the first datum anyways. Wrapping the result in "max(0, x)"
    // cuts off these negative values.
    return _domain
        .getDomainAtIndex(max(0, min(index.round(), domain.size - 1)));
  }

  @override
  bool canTranslate(String domainValue) =>
      (_domain.indexOf(domainValue) != null);

  @override
  OrdinalScaleDomainInfo get domain => _domain;

  /// Update the scale to include [domainValue].
  @override
  void addDomain(String domainValue) {
    _domain.add(domainValue);
    _scaleChanged = true;
  }

  @override
  set range(ScaleOutputExtent extent) {
    _range = extent;
    _scaleChanged = true;
  }

  @override
  ScaleOutputExtent get range => _range;

  @override
  resetDomain() {
    _domain.clear();
    _scaleChanged = true;
  }

  @override
  resetViewportSettings() {
    _viewportScale = 1.0;
    _viewportTranslatePx = 0.0;
    _scaleChanged = true;
  }

  @override
  int get rangeWidth => (range.start - range.end).abs().toInt();

  @override
  double get viewportScalingFactor => _viewportScale;

  @override
  double get viewportTranslatePx => _viewportTranslatePx;

  @override
  void setViewportSettings(double viewportScale, double viewportTranslatePx) {
    _viewportScale = viewportScale;
    _viewportTranslatePx =
        min(0.0, max(rangeWidth * (1.0 - viewportScale), viewportTranslatePx));

    _scaleChanged = true;
  }

  @override
  void setViewport(int viewportDataSize, String startingDomain) {
    if (startingDomain != null &&
        viewportDataSize != null &&
        viewportDataSize <= 0) {
      throw new ArgumentError('viewportDataSize can' 't be less than 1.');
    }

    _scaleChanged = true;
    _viewportDataSize = viewportDataSize;
    _viewportStartingDomain = startingDomain;
  }

  /// Update this scale's viewport using settings [_viewportDataSize] and
  /// [_viewportStartingDomain].
  void _updateViewport() {
    setViewportSettings(1.0, 0.0);
    _recalculateScale();
    if (_domain.isEmpty) {
      return;
    }

    // Update the scale with zoom level to help find the correct translate.
    setViewportSettings(
        _domain.size / min(_viewportDataSize, _domain.size), 0.0);
    _recalculateScale();
    final domainIndex = _domain.indexOf(_viewportStartingDomain);
    if (domainIndex != null) {
      // Update the translate so that the scale starts half a step before the
      // chosen domain.
      final viewportTranslatePx = -(_cachedStepSizePixels * domainIndex);
      setViewportSettings(_viewportScale, viewportTranslatePx);
    }
  }

  @override
  int get viewportDataSize {
    if (_scaleChanged) {
      _updateScale();
    }

    return _domain.isEmpty ? 0 : (rangeWidth ~/ _cachedStepSizePixels);
  }

  @override
  String get viewportStartingDomain {
    if (_scaleChanged) {
      _updateScale();
    }
    if (_domain.isEmpty) {
      return null;
    }
    return _domain.getDomainAtIndex(
        (-_viewportTranslatePx / _cachedStepSizePixels).ceil().toInt());
  }

  @override
  bool isRangeValueWithinViewport(double rangeValue) {
    return range != null && rangeValue >= range.min && rangeValue <= range.max;
  }

  @override
  int compareDomainValueToViewport(String domainValue) {
    // TODO: This currently works because range defaults to 0-1
    // This needs to be looked into further.
    var i = _domain.indexOf(domainValue);
    if (i != null && range != null) {
      var domainPx = this[domainValue];
      if (domainPx < range.min) {
        return -1;
      }
      if (domainPx > range.max) {
        return 1;
      }
      return 0;
    }
    return -1;
  }

  @override
  SimpleOrdinalScale copy() => new SimpleOrdinalScale._copy(this);

  void _updateCachedFields(
      double stepSizePixels, double rangeBandPixels, double rangeBandShift) {
    _cachedStepSizePixels = stepSizePixels;
    _cachedRangeBandSize = rangeBandPixels;
    _cachedRangeBandShift = rangeBandShift;

    // TODO: When there are horizontal bars increasing from where
    // the domain and measure axis intersects but the desired behavior is
    // flipped. The plan is to fix this by fixing code to flip the range in the
    // code.

    // If range start is less than range end, then the domain is calculated by
    // adding the band width. If range start is greater than range end, then the
    // domain is calculated by subtracting from the band width (ex. horizontal
    // bar charts where first series is at the bottom of the chart).
    if (range.start > range.end) {
      _cachedStepSizePixels *= -1;
      _cachedRangeBandShift *= -1;
    }

    _scaleChanged = false;
  }

  void _updateScale() {
    if (_viewportStartingDomain != null && _viewportDataSize != null) {
      // Update viewport recalculates the scale.
      _updateViewport();
    }
    _recalculateScale();
  }

  void _recalculateScale() {
    final stepSizePixels = _domain.isEmpty
        ? 0.0
        : _viewportScale * (rangeWidth.toDouble() / _domain.size.toDouble());
    double rangeBandPixels;

    switch (rangeBandConfig.type) {
      case RangeBandType.fixedPixel:
        rangeBandPixels = rangeBandConfig.size.toDouble();
        break;
      case RangeBandType.fixedPixelSpaceFromStep:
        var spaceInPixels = rangeBandConfig.size.toDouble();
        rangeBandPixels = max(0.0, stepSizePixels - spaceInPixels);
        break;
      case RangeBandType.styleAssignedPercentOfStep:
      case RangeBandType.fixedPercentOfStep:
        var percent = rangeBandConfig.size.toDouble();
        rangeBandPixels = stepSizePixels * percent;
        break;
      case RangeBandType.fixedDomain:
      case RangeBandType.none:
      default:
        throw new StateError('RangeBandType must not be NONE or FIXED_DOMAIN');
        break;
    }

    _updateCachedFields(stepSizePixels, rangeBandPixels, stepSizePixels / 2.0);
  }
}
