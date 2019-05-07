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
    show ChartBehavior, SelectNearest, SelectionModelType, SelectionTrigger;

import 'package:meta/meta.dart' show immutable;

import 'chart_behavior.dart' show ChartBehavior, GestureType;

/// Chart behavior that listens to the given eventTrigger and updates the
/// specified [SelectionModel]. This is used to pair input events to behaviors
/// that listen to selection changes.
///
/// Input event types:
///   hover (default) - Mouse over/near data.
///   tap - Mouse/Touch on/near data.
///   pressHold - Mouse/Touch and drag across the data instead of panning.
///   longPressHold - Mouse/Touch for a while in one place then drag across the data.
///
/// SelectionModels that can be updated:
///   info - To view the details of the selected items (ie: hover for web).
///   action - To select an item as an input, drill, or other selection.
///
/// Other options available
///   expandToDomain - all data points that match the domain value of the
///       closest data point will be included in the selection. (Default: true)
///   selectClosestSeries - mark the series for the closest data point as
///       selected. (Default: true)
///
/// You can add one SelectNearest for each model type that you are updating.
/// Any previous SelectNearest behavior for that selection model will be
/// removed.
@immutable
class SelectNearest extends ChartBehavior<common.SelectNearest> {
  final Set<GestureType> desiredGestures;

  final common.SelectionModelType selectionModelType;
  final common.SelectionTrigger eventTrigger;
  final bool expandToDomain;
  final bool selectAcrossAllDrawAreaComponents;
  final bool selectClosestSeries;
  final int maximumDomainDistancePx;

  SelectNearest._internal(
      {this.selectionModelType,
      this.expandToDomain = true,
      this.selectAcrossAllDrawAreaComponents = false,
      this.selectClosestSeries = true,
      this.eventTrigger,
      this.desiredGestures,
      this.maximumDomainDistancePx});

  factory SelectNearest(
      {common.SelectionModelType selectionModelType =
          common.SelectionModelType.info,
      bool expandToDomain = true,
      bool selectAcrossAllDrawAreaComponents = false,
      bool selectClosestSeries = true,
      common.SelectionTrigger eventTrigger = common.SelectionTrigger.tap,
      int maximumDomainDistancePx}) {
    return new SelectNearest._internal(
        selectionModelType: selectionModelType,
        expandToDomain: expandToDomain,
        selectAcrossAllDrawAreaComponents: selectAcrossAllDrawAreaComponents,
        selectClosestSeries: selectClosestSeries,
        eventTrigger: eventTrigger,
        desiredGestures: SelectNearest._getDesiredGestures(eventTrigger),
        maximumDomainDistancePx: maximumDomainDistancePx);
  }

  static Set<GestureType> _getDesiredGestures(
      common.SelectionTrigger eventTrigger) {
    final desiredGestures = new Set<GestureType>();
    switch (eventTrigger) {
      case common.SelectionTrigger.tap:
        desiredGestures..add(GestureType.onTap);
        break;
      case common.SelectionTrigger.tapAndDrag:
        desiredGestures..add(GestureType.onTap)..add(GestureType.onDrag);
        break;
      case common.SelectionTrigger.pressHold:
      case common.SelectionTrigger.longPressHold:
        desiredGestures
          ..add(GestureType.onTap)
          ..add(GestureType.onLongPress)
          ..add(GestureType.onDrag);
        break;
      case common.SelectionTrigger.hover:
      default:
        desiredGestures..add(GestureType.onHover);
        break;
    }
    return desiredGestures;
  }

  @override
  common.SelectNearest<D> createCommonBehavior<D>() {
    return new common.SelectNearest<D>(
        selectionModelType: selectionModelType,
        eventTrigger: eventTrigger,
        expandToDomain: expandToDomain,
        selectClosestSeries: selectClosestSeries,
        maximumDomainDistancePx: maximumDomainDistancePx);
  }

  @override
  void updateCommonBehavior(common.ChartBehavior commonBehavior) {}

  // TODO: Explore the performance impact of calculating this once
  // at the constructor for this and common ChartBehaviors.
  @override
  String get role => 'SelectNearest-${selectionModelType.toString()}}';

  bool operator ==(Object other) {
    if (other is SelectNearest) {
      return (selectionModelType == other.selectionModelType) &&
          (eventTrigger == other.eventTrigger) &&
          (expandToDomain == other.expandToDomain) &&
          (selectClosestSeries == other.selectClosestSeries) &&
          (maximumDomainDistancePx == other.maximumDomainDistancePx);
    } else {
      return false;
    }
  }

  int get hashCode {
    int hashcode = selectionModelType.hashCode;
    hashcode = hashcode * 37 + eventTrigger.hashCode;
    hashcode = hashcode * 37 + expandToDomain.hashCode;
    hashcode = hashcode * 37 + selectClosestSeries.hashCode;
    hashcode = hashcode * 37 + maximumDomainDistancePx.hashCode;
    return hashcode;
  }
}
