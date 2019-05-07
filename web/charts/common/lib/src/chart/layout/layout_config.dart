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

/// Collection of configurations that apply to the [LayoutManager].
class LayoutConfig {
  final MarginSpec leftSpec;
  final MarginSpec rightSpec;
  final MarginSpec topSpec;
  final MarginSpec bottomSpec;

  /// Create a new [LayoutConfig] used by [DynamicLayoutManager].
  LayoutConfig({
    MarginSpec leftSpec,
    MarginSpec rightSpec,
    MarginSpec topSpec,
    MarginSpec bottomSpec,
  })  : leftSpec = leftSpec ?? MarginSpec.defaultSpec,
        rightSpec = rightSpec ?? MarginSpec.defaultSpec,
        topSpec = topSpec ?? MarginSpec.defaultSpec,
        bottomSpec = bottomSpec ?? MarginSpec.defaultSpec;
}

/// Specs that applies to one margin.
class MarginSpec {
  /// [MarginSpec] that has max of 50 percent.
  static const defaultSpec = const MarginSpec._internal(null, null, null, 50);

  final int _minPixel;
  final int _maxPixel;
  final int _minPercent;
  final int _maxPercent;

  const MarginSpec._internal(
      int minPixel, int maxPixel, int minPercent, int maxPercent)
      : _minPixel = minPixel,
        _maxPixel = maxPixel,
        _minPercent = minPercent,
        _maxPercent = maxPercent;

  /// Create [MarginSpec] that specifies min/max pixels.
  ///
  /// [minPixel] if set must be greater than or equal to 0 and less than max if
  /// it is also set.
  /// [maxPixel] if set must be greater than or equal to 0.
  factory MarginSpec.fromPixel({int minPixel, int maxPixel}) {
    // Require zero or higher settings if set
    assert(minPixel == null || minPixel >= 0);
    assert(maxPixel == null || maxPixel >= 0);
    // Min must be less than or equal to max.
    // Can be equal to enforce strict pixel size.
    if (minPixel != null && maxPixel != null) {
      assert(minPixel <= maxPixel);
    }

    return new MarginSpec._internal(minPixel, maxPixel, null, null);
  }

  /// Create [MarginSpec] with a fixed pixel size [pixels].
  ///
  /// [pixels] if set must be greater than or equal to 0.
  factory MarginSpec.fixedPixel(int pixels) {
    // Require require or higher setting if set
    assert(pixels == null || pixels >= 0);

    return new MarginSpec._internal(pixels, pixels, null, null);
  }

  /// Create [MarginSpec] that specifies min/max percentage.
  ///
  /// [minPercent] if set must be between 0 and 100 inclusive. If [maxPercent]
  /// is also set, then must be less than [maxPercent].
  /// [maxPercent] if set must be between 0 and 100 inclusive.
  factory MarginSpec.fromPercent({int minPercent, int maxPercent}) {
    // Percent must be within 0 to 100
    assert(minPercent == null || (minPercent >= 0 && minPercent <= 100));
    assert(maxPercent == null || (maxPercent >= 0 && maxPercent <= 100));
    // Min must be less than or equal to max.
    // Can be equal to enforce strict percentage.
    if (minPercent != null && maxPercent != null) {
      assert(minPercent <= maxPercent);
    }

    return new MarginSpec._internal(null, null, minPercent, maxPercent);
  }

  /// Get the min pixels, given the [totalPixels].
  int getMinPixels(int totalPixels) {
    if (_minPixel != null) {
      assert(_minPixel < totalPixels);
      return _minPixel;
    } else if (_minPercent != null) {
      return (totalPixels * (_minPercent / 100)).round();
    } else {
      return 0;
    }
  }

  /// Get the max pixels, given the [totalPixels].
  int getMaxPixels(int totalPixels) {
    if (_maxPixel != null) {
      assert(_maxPixel < totalPixels);
      return _maxPixel;
    } else if (_maxPercent != null) {
      return (totalPixels * (_maxPercent / 100)).round();
    } else {
      return totalPixels;
    }
  }
}
