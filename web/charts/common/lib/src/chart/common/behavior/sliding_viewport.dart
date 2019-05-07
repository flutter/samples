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

import '../../cartesian/cartesian_chart.dart' show CartesianChart;
import '../base_chart.dart' show BaseChart;
import '../selection_model/selection_model.dart'
    show SelectionModel, SelectionModelType;
import 'chart_behavior.dart' show ChartBehavior;

/// Chart behavior that centers the viewport on the selected domain.
///
/// It is used in combination with SelectNearest to update the selection model
/// and notify this behavior to update the viewport on selection change.
///
/// This behavior can only be used on [CartesianChart].
class SlidingViewport<D> implements ChartBehavior<D> {
  final SelectionModelType selectionModelType;

  CartesianChart<D> _chart;

  SlidingViewport([this.selectionModelType = SelectionModelType.info]);

  void _selectionChanged(SelectionModel selectionModel) {
    if (selectionModel.hasAnySelection == false) {
      return;
    }

    // Calculate current viewport center and determine the translate pixels
    // needed based on the selected domain value's location and existing amount
    // of translate pixels.
    final domainAxis = _chart.domainAxis;
    final selectedDatum = selectionModel.selectedDatum.first;
    final domainLocation = domainAxis
        .getLocation(selectedDatum.series.domainFn(selectedDatum.index));
    final viewportCenter =
        domainAxis.range.start + (domainAxis.range.width / 2);
    final translatePx =
        domainAxis.viewportTranslatePx + (viewportCenter - domainLocation);
    domainAxis.setViewportSettings(
        domainAxis.viewportScalingFactor, translatePx);

    _chart.redraw();
  }

  @override
  void attachTo(BaseChart<D> chart) {
    assert(chart is CartesianChart);
    _chart = chart as CartesianChart<D>;
    chart
        .getSelectionModel(selectionModelType)
        .addSelectionChangedListener(_selectionChanged);
  }

  @override
  void removeFrom(BaseChart chart) {
    chart
        .getSelectionModel(selectionModelType)
        .removeSelectionChangedListener(_selectionChanged);
  }

  @override
  String get role => 'slidingViewport-${selectionModelType.toString()}';
}
