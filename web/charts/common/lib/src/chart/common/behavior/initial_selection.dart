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

import '../base_chart.dart' show BaseChart, LifecycleListener;
import '../processed_series.dart' show MutableSeries;
import '../selection_model/selection_model.dart'
    show SelectionModel, SelectionModelType;
import '../series_datum.dart' show SeriesDatumConfig;
import 'chart_behavior.dart' show ChartBehavior;

/// Behavior that sets initial selection.
class InitialSelection<D> implements ChartBehavior<D> {
  final SelectionModelType selectionModelType;

  /// List of series id of initially selected series.
  final List<String> selectedSeriesConfig;

  /// List of [SeriesDatumConfig] that represents the initially selected datums.
  final List<SeriesDatumConfig> selectedDataConfig;

  BaseChart<D> _chart;
  LifecycleListener<D> _lifecycleListener;
  bool _firstDraw = true;

  // TODO : When the series changes, if the user does not also
  // change the index the wrong item could be highlighted.
  InitialSelection(
      {this.selectionModelType = SelectionModelType.info,
      this.selectedDataConfig,
      this.selectedSeriesConfig}) {
    _lifecycleListener = new LifecycleListener<D>(onData: _setInitialSelection);
  }

  void _setInitialSelection(List<MutableSeries<D>> seriesList) {
    if (!_firstDraw) {
      return;
    }
    _firstDraw = false;

    final immutableModel = new SelectionModel<D>.fromConfig(
        selectedDataConfig, selectedSeriesConfig, seriesList);

    _chart.getSelectionModel(selectionModelType).updateSelection(
        immutableModel.selectedDatum, immutableModel.selectedSeries,
        notifyListeners: false);
  }

  @override
  void attachTo(BaseChart<D> chart) {
    _chart = chart;
    chart.addLifecycleListener(_lifecycleListener);
  }

  @override
  void removeFrom(BaseChart<D> chart) {
    chart.removeLifecycleListener(_lifecycleListener);
    _chart = null;
  }

  @override
  String get role => 'InitialSelection-${selectionModelType.toString()}}';
}
