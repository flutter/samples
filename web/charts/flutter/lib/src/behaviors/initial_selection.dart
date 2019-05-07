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

import 'package:collection/collection.dart' show ListEquality;

import 'package:charts_common/common.dart' as common
    show InitialSelection, SeriesDatumConfig, SelectionModelType;

import 'package:meta/meta.dart' show immutable;

import 'chart_behavior.dart' show ChartBehavior, GestureType;

/// Chart behavior that sets the initial selection for a [selectionModelType].
@immutable
class InitialSelection extends ChartBehavior<common.InitialSelection> {
  final desiredGestures = new Set<GestureType>();

  final common.SelectionModelType selectionModelType;
  final List<String> selectedSeriesConfig;
  final List<common.SeriesDatumConfig> selectedDataConfig;

  InitialSelection(
      {this.selectionModelType = common.SelectionModelType.info,
      this.selectedSeriesConfig,
      this.selectedDataConfig});

  @override
  common.InitialSelection<D> createCommonBehavior<D>() =>
      new common.InitialSelection<D>(
          selectionModelType: selectionModelType,
          selectedDataConfig: selectedDataConfig,
          selectedSeriesConfig: selectedSeriesConfig);

  @override
  void updateCommonBehavior(common.InitialSelection commonBehavior) {}

  @override
  String get role => 'InitialSelection-${selectionModelType.toString()}';

  @override
  bool operator ==(Object o) {
    return o is InitialSelection &&
        selectionModelType == o.selectionModelType &&
        new ListEquality()
            .equals(selectedSeriesConfig, o.selectedSeriesConfig) &&
        new ListEquality().equals(selectedDataConfig, o.selectedDataConfig);
  }

  @override
  int get hashCode {
    int hashcode = selectionModelType.hashCode;
    hashcode = hashcode * 37 + (selectedSeriesConfig?.hashCode ?? 0);
    hashcode = hashcode * 37 + (selectedDataConfig?.hashCode ?? 0);
    return hashcode;
  }
}
