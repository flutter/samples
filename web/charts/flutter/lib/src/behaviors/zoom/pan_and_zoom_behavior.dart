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
    show ChartBehavior, PanAndZoomBehavior, PanningCompletedCallback;
import 'package:meta/meta.dart' show immutable;

import '../chart_behavior.dart' show ChartBehavior, GestureType;
import 'pan_behavior.dart' show FlutterPanBehaviorMixin;

@immutable
class PanAndZoomBehavior extends ChartBehavior<common.PanAndZoomBehavior> {
  final _desiredGestures = new Set<GestureType>.from([
    GestureType.onDrag,
  ]);

  Set<GestureType> get desiredGestures => _desiredGestures;

  /// Optional callback that is called when pan / zoom is completed.
  ///
  /// When flinging this callback is called after the fling is completed.
  /// This is because panning is only completed when the flinging stops.
  final common.PanningCompletedCallback panningCompletedCallback;

  PanAndZoomBehavior({this.panningCompletedCallback});

  @override
  common.PanAndZoomBehavior<D> createCommonBehavior<D>() {
    return new FlutterPanAndZoomBehavior<D>()
      ..panningCompletedCallback = panningCompletedCallback;
  }

  @override
  void updateCommonBehavior(common.ChartBehavior commonBehavior) {}

  @override
  String get role => 'PanAndZoom';

  bool operator ==(Object other) {
    return other is PanAndZoomBehavior &&
        other.panningCompletedCallback == panningCompletedCallback;
  }

  int get hashCode {
    return panningCompletedCallback.hashCode;
  }
}

/// Adds fling gesture support to [common.PanAndZoomBehavior], by way of
/// [FlutterPanBehaviorMixin].
class FlutterPanAndZoomBehavior<D> extends common.PanAndZoomBehavior<D>
    with FlutterPanBehaviorMixin {}
