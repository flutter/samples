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

import 'package:intl/intl.dart';
import 'package:meta/meta.dart' show immutable;

import '../../../../common/graphics_factory.dart' show GraphicsFactory;
import '../../../common/chart_context.dart' show ChartContext;
import '../axis.dart' show Axis, NumericAxis;
import '../linear/bucketing_numeric_axis.dart' show BucketingNumericAxis;
import '../linear/bucketing_numeric_tick_provider.dart'
    show BucketingNumericTickProvider;
import '../numeric_extents.dart' show NumericExtents;
import 'axis_spec.dart' show AxisSpec, RenderSpec;
import 'numeric_axis_spec.dart'
    show
        BasicNumericTickFormatterSpec,
        BasicNumericTickProviderSpec,
        NumericAxisSpec,
        NumericTickProviderSpec,
        NumericTickFormatterSpec;

/// A numeric [AxisSpec] that positions all values beneath a certain [threshold]
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
@immutable
class BucketingAxisSpec extends NumericAxisSpec {
  /// All values smaller than the threshold will be bucketed into the same
  /// position in the reserved space on the axis.
  final num threshold;

  /// Whether or not measure values bucketed below the [threshold] should be
  /// visible on the chart, or collapsed.
  ///
  /// If this is false, then any data with measure values smaller than
  /// [threshold] will not be rendered on the chart.
  final bool showBucket;

  /// Creates a [NumericAxisSpec] that is specialized for percentage data.
  BucketingAxisSpec({
    RenderSpec<num> renderSpec,
    NumericTickProviderSpec tickProviderSpec,
    NumericTickFormatterSpec tickFormatterSpec,
    bool showAxisLine,
    bool showBucket,
    this.threshold,
    NumericExtents viewport,
  })  : this.showBucket = showBucket ?? true,
        super(
            renderSpec: renderSpec,
            tickProviderSpec:
                tickProviderSpec ?? const BucketingNumericTickProviderSpec(),
            tickFormatterSpec: tickFormatterSpec ??
                new BasicNumericTickFormatterSpec.fromNumberFormat(
                    new NumberFormat.percentPattern()),
            showAxisLine: showAxisLine,
            viewport: viewport ?? const NumericExtents(0.0, 1.0));

  @override
  configure(
      Axis<num> axis, ChartContext context, GraphicsFactory graphicsFactory) {
    super.configure(axis, context, graphicsFactory);

    if (axis is NumericAxis && viewport != null) {
      axis.setScaleViewport(viewport);
    }

    if (axis is BucketingNumericAxis && threshold != null) {
      axis.threshold = threshold;
    }

    if (axis is BucketingNumericAxis && showBucket != null) {
      axis.showBucket = showBucket;
    }
  }

  @override
  BucketingNumericAxis createAxis() => new BucketingNumericAxis();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BucketingAxisSpec &&
          showBucket == other.showBucket &&
          threshold == other.threshold &&
          super == (other));

  @override
  int get hashCode {
    int hashcode = super.hashCode;
    hashcode = (hashcode * 37) + showBucket.hashCode;
    hashcode = (hashcode * 37) + threshold.hashCode;
    return hashcode;
  }
}

@immutable
class BucketingNumericTickProviderSpec extends BasicNumericTickProviderSpec {
  /// Creates a [TickProviderSpec] that generates ticks for a bucketing axis.
  ///
  /// [zeroBound] automatically include zero in the data range.
  /// [dataIsInWholeNumbers] skip over ticks that would produce
  ///     fractional ticks that don't make sense for the domain (ie: headcount).
  /// [desiredTickCount] the fixed number of ticks to try to make. Convenience
  ///     that sets [desiredMinTickCount] and [desiredMaxTickCount] the same.
  ///     Both min and max win out if they are set along with
  ///     [desiredTickCount].
  /// [desiredMinTickCount] automatically choose the best tick
  ///     count to produce the 'nicest' ticks but make sure we have this many.
  /// [desiredMaxTickCount] automatically choose the best tick
  ///     count to produce the 'nicest' ticks but make sure we don't have more
  ///     than this many.
  const BucketingNumericTickProviderSpec(
      {bool zeroBound,
      bool dataIsInWholeNumbers,
      int desiredTickCount,
      int desiredMinTickCount,
      int desiredMaxTickCount})
      : super(
          zeroBound: zeroBound ?? true,
          dataIsInWholeNumbers: dataIsInWholeNumbers ?? false,
          desiredTickCount: desiredTickCount,
          desiredMinTickCount: desiredMinTickCount,
          desiredMaxTickCount: desiredMaxTickCount,
        );

  @override
  BucketingNumericTickProvider createTickProvider(ChartContext context) {
    final provider = new BucketingNumericTickProvider()
      ..zeroBound = zeroBound
      ..dataIsInWholeNumbers = dataIsInWholeNumbers;

    if (desiredMinTickCount != null ||
        desiredMaxTickCount != null ||
        desiredTickCount != null) {
      provider.setTickCount(desiredMaxTickCount ?? desiredTickCount ?? 10,
          desiredMinTickCount ?? desiredTickCount ?? 2);
    }
    return provider;
  }
}
