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
    show SelectionModelType, SlidingViewport;

import 'package:meta/meta.dart' show immutable;

import 'chart_behavior.dart' show ChartBehavior, GestureType;

/// Chart behavior that centers the viewport on the selected domain.
///
/// It is used in combination with SelectNearest to update the selection model
/// and notify this behavior to update the viewport on selection change.
///
/// This behavior can only be used on [CartesianChart].
@immutable
class SlidingViewport extends ChartBehavior<common.SlidingViewport> {
  final desiredGestures = new Set<GestureType>();

  final common.SelectionModelType selectionModelType;

  SlidingViewport([this.selectionModelType = common.SelectionModelType.info]);

  @override
  common.SlidingViewport<D> createCommonBehavior<D>() =>
      new common.SlidingViewport<D>(selectionModelType);

  @override
  void updateCommonBehavior(common.SlidingViewport commonBehavior) {}

  @override
  String get role => 'slidingViewport-${selectionModelType.toString()}';

  @override
  bool operator ==(Object o) =>
      o is SlidingViewport && selectionModelType == o.selectionModelType;

  @override
  int get hashCode => selectionModelType.hashCode;
}
