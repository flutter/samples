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

import '../axis.dart' show NumericAxis;
import 'bucketing_numeric_tick_provider.dart' show BucketingNumericTickProvider;

/// A numeric [Axis] that positions all values beneath a certain [threshold]
/// into a reserved space on the axis range. The label for the bucket line will
/// be drawn in the middle of the bucket range, rather than aligned with the
/// gridline for that value's position on the scale.
///
/// An example illustration of a bucketing measure axis on a point chart
/// follows. In this case, values such as "6%" and "3%" are drawn in the bucket
/// of the axis, since they are less than the [threshold] value of 10%.
///
///  100% ┠─────────────────────────
///       ┃                  *
///       ┃         *
///   50% ┠──────*──────────────────
///       ┃
///       ┠─────────────────────────
/// < 10% ┃   *          *
///       ┗┯━━━━━━━━━━┯━━━━━━━━━━━┯━
///       0         50          100
///
/// This axis will format numbers as percents by default.
class BucketingNumericAxis extends NumericAxis {
  /// All values smaller than the threshold will be bucketed into the same
  /// position in the reserved space on the axis.
  num _threshold;

  /// Whether or not measure values bucketed below the [threshold] should be
  /// visible on the chart, or collapsed.
  ///
  /// If this is false, then any data with measure values smaller than
  /// [threshold] will be rendered at the baseline of the chart. The
  bool _showBucket;

  BucketingNumericAxis()
      : super(tickProvider: new BucketingNumericTickProvider());

  set threshold(num threshold) {
    _threshold = threshold;
    (tickProvider as BucketingNumericTickProvider).threshold = threshold;
  }

  set showBucket(bool showBucket) {
    _showBucket = showBucket;
    (tickProvider as BucketingNumericTickProvider).showBucket = showBucket;
  }

  /// Gets the location of [domain] on the axis, repositioning any value less
  /// than [threshold] to the middle of the reserved bucket.
  @override
  double getLocation(num domain) {
    if (domain == null) {
      return null;
    } else if (_threshold != null && domain < _threshold) {
      return _showBucket ? scale[_threshold / 2] : scale[0.0];
    } else {
      return scale[domain];
    }
  }
}
