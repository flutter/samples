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

import 'package:charts_common/common.dart' as common
    show PercentInjector, PercentInjectorTotalType;
import 'package:meta/meta.dart' show immutable;

import '../chart_behavior.dart' show ChartBehavior, GestureType;

/// Chart behavior that can inject series or domain percentages into each datum.
///
/// [totalType] configures the type of total to be calculated.
///
/// The measure values of each datum will be replaced by the percent of the
/// total measure value that each represents. The "raw" measure accessor
/// function on [MutableSeries] can still be used to get the original values.
///
/// Note that the results for measureLowerBound and measureUpperBound are not
/// currently well defined when converted into percentage values. This behavior
/// will replace them as percents to prevent bad axis results, but no effort is
/// made to bound them to within a "0 to 100%" data range.
///
/// Note that if the chart has a [Legend] that is capable of hiding series data,
/// then this behavior must be added after the [Legend] to ensure that it
/// calculates values after series have been potentially removed from the list.
@immutable
class PercentInjector extends ChartBehavior<common.PercentInjector> {
  final desiredGestures = new Set<GestureType>();

  /// The type of data total to be calculated.
  final common.PercentInjectorTotalType totalType;

  PercentInjector._internal({this.totalType});

  /// Constructs a [PercentInjector].
  ///
  /// [totalType] configures the type of data total to be calculated.
  factory PercentInjector({common.PercentInjectorTotalType totalType}) {
    totalType ??= common.PercentInjectorTotalType.domain;
    return new PercentInjector._internal(totalType: totalType);
  }

  @override
  common.PercentInjector<D> createCommonBehavior<D>() =>
      new common.PercentInjector<D>(totalType: totalType);

  @override
  void updateCommonBehavior(common.PercentInjector commonBehavior) {}

  @override
  String get role => 'PercentInjector';

  @override
  bool operator ==(Object o) {
    return o is PercentInjector && totalType == o.totalType;
  }

  @override
  int get hashCode => totalType.hashCode;
}
