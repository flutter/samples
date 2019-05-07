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
    show DomainHighlighter, SelectionModelType;

import 'package:meta/meta.dart' show immutable;

import 'chart_behavior.dart' show ChartBehavior, GestureType;

/// Chart behavior that monitors the specified [SelectionModel] and darkens the
/// color for selected data.
///
/// This is typically used for bars and pies to highlight segments.
///
/// It is used in combination with SelectNearest to update the selection model
/// and expand selection out to the domain value.
@immutable
class DomainHighlighter extends ChartBehavior<common.DomainHighlighter> {
  final desiredGestures = new Set<GestureType>();

  final common.SelectionModelType selectionModelType;

  DomainHighlighter([this.selectionModelType = common.SelectionModelType.info]);

  @override
  common.DomainHighlighter<D> createCommonBehavior<D>() =>
      new common.DomainHighlighter<D>(selectionModelType);

  @override
  void updateCommonBehavior(common.DomainHighlighter commonBehavior) {}

  @override
  String get role => 'domainHighlight-${selectionModelType.toString()}';

  @override
  bool operator ==(Object o) =>
      o is DomainHighlighter && selectionModelType == o.selectionModelType;

  @override
  int get hashCode => selectionModelType.hashCode;
}
