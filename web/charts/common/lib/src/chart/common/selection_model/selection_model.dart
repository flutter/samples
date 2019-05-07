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

import '../processed_series.dart' show ImmutableSeries;
import '../series_datum.dart' show SeriesDatum, SeriesDatumConfig;

/// Holds the state of interaction or selection for the chart to coordinate
/// between various event sources and things that wish to act upon the selection
/// state (highlight, drill, etc).
///
/// There is one instance per interaction type (ex: info, action) with each
/// maintaining their own state. Info is typically used to update a hover/touch
/// card while action is used in case of a secondary selection/action.
///
/// The series selection state is kept separate from datum selection state to
/// allow more complex highlighting. For example: a Hovercard that shows entries
/// for each datum for a given domain/time, but highlights the closest entry to
/// match up with highlighting/bolding of the line and legend.
class SelectionModel<D> {
  var _selectedDatum = <SeriesDatum<D>>[];
  var _selectedSeries = <ImmutableSeries<D>>[];

  /// Create selection model with the desired selection.
  SelectionModel(
      {List<SeriesDatum<D>> selectedData,
      List<ImmutableSeries<D>> selectedSeries}) {
    if (selectedData != null) {
      _selectedDatum = selectedData;
    }
    if (selectedSeries != null) {
      _selectedSeries = selectedSeries;
    }
  }

  /// Create a deep copy of the selection model.
  SelectionModel.fromOther(SelectionModel<D> other) {
    _selectedDatum = new List.from(other._selectedDatum);
    _selectedSeries = new List.from(other._selectedSeries);
  }

  /// Create selection model from configuration.
  SelectionModel.fromConfig(List<SeriesDatumConfig> selectedDataConfig,
      List<String> selectedSeriesConfig, List<ImmutableSeries<D>> seriesList) {
    final selectedDataMap = <String, List<D>>{};

    if (selectedDataConfig != null) {
      for (SeriesDatumConfig config in selectedDataConfig) {
        selectedDataMap[config.seriesId] ??= <D>[];
        selectedDataMap[config.seriesId].add(config.domainValue);
      }

      // Add to list of selected series.
      _selectedSeries.addAll(seriesList.where((ImmutableSeries<D> series) =>
          selectedDataMap.keys.contains(series.id)));

      // Add to list of selected data.
      for (ImmutableSeries<D> series in seriesList) {
        if (selectedDataMap.containsKey(series.id)) {
          final domainFn = series.domainFn;

          for (var i = 0; i < series.data.length; i++) {
            final datum = series.data[i];

            if (selectedDataMap[series.id].contains(domainFn(i))) {
              _selectedDatum.add(new SeriesDatum(series, datum));
            }
          }
        }
      }
    }

    // Add to list of selected series, if it does not already exist.
    if (selectedSeriesConfig != null) {
      final remainingSeriesToAdd = selectedSeriesConfig
          .where((String seriesId) => !selectedSeries.contains(seriesId))
          .toList();

      _selectedSeries.addAll(seriesList.where((ImmutableSeries<D> series) =>
          remainingSeriesToAdd.contains(series.id)));
    }
  }

  /// Returns true if this [SelectionModel] has a selected datum.
  bool get hasDatumSelection => _selectedDatum.isNotEmpty;

  bool isDatumSelected(ImmutableSeries<D> series, int index) {
    final datum = index == null ? null : series.data[index];
    return _selectedDatum.contains(new SeriesDatum(series, datum));
  }

  /// Returns the selected [SeriesDatum] for this [SelectionModel].
  ///
  /// This is empty by default.
  List<SeriesDatum<D>> get selectedDatum =>
      new List.unmodifiable(_selectedDatum);

  /// Returns true if this [SelectionModel] has a selected series.
  bool get hasSeriesSelection => _selectedSeries.isNotEmpty;

  /// Returns the selected [ImmutableSeries] for this [SelectionModel].
  ///
  /// This is empty by default.
  List<ImmutableSeries<D>> get selectedSeries =>
      new List.unmodifiable(_selectedSeries);

  /// Returns true if this [SelectionModel] has a selected datum or series.
  bool get hasAnySelection =>
      _selectedDatum.isNotEmpty || selectedSeries.isNotEmpty;

  @override
  bool operator ==(Object other) {
    return other is SelectionModel &&
        new ListEquality().equals(_selectedDatum, other.selectedDatum) &&
        new ListEquality().equals(_selectedSeries, other.selectedSeries);
  }

  @override
  int get hashCode {
    int hashcode = new ListEquality().hash(_selectedDatum);
    hashcode = hashcode * 37 + new ListEquality().hash(_selectedSeries);
    return hashcode;
  }
}

/// A [SelectionModel] that can be updated.
///
/// This model will notify listeners subscribed to this model when the selection
/// is modified.
class MutableSelectionModel<D> extends SelectionModel<D> {
  final _changedListeners = <SelectionModelListener<D>>[];
  final _updatedListeners = <SelectionModelListener<D>>[];

  /// When set to true, prevents the model from being updated.
  bool locked = false;

  /// Clears the selection state.
  bool clearSelection({bool notifyListeners = true}) {
    return updateSelection([], [], notifyListeners: notifyListeners);
  }

  /// Updates the selection state. If mouse driven, [datumSelection] should be
  /// ordered by distance from mouse, closest first.
  bool updateSelection(
      List<SeriesDatum<D>> datumSelection, List<ImmutableSeries<D>> seriesList,
      {bool notifyListeners = true}) {
    if (locked) {
      return false;
    }

    final origSelectedDatum = _selectedDatum;
    final origSelectedSeries = _selectedSeries;

    _selectedDatum = datumSelection;
    _selectedSeries = seriesList;

    // Provide a copy, so listeners get an immutable model.
    final copyOfSelectionModel = new SelectionModel.fromOther(this);
    _updatedListeners.forEach((listener) => listener(copyOfSelectionModel));

    final changed =
        !new ListEquality().equals(origSelectedDatum, _selectedDatum) ||
            !new ListEquality().equals(origSelectedSeries, _selectedSeries);
    if (notifyListeners && changed) {
      _changedListeners.forEach((listener) => listener(copyOfSelectionModel));
    }
    return changed;
  }

  /// Add a listener to be notified when this [SelectionModel] changes.
  ///
  /// Note: the listener will not be triggered if [updateSelection] is called
  /// resulting in the same selection state.
  void addSelectionChangedListener(SelectionModelListener<D> listener) {
    _changedListeners.add(listener);
  }

  /// Remove listener from being notified when this [SelectionModel] changes.
  void removeSelectionChangedListener(SelectionModelListener<D> listener) {
    _changedListeners.remove(listener);
  }

  /// Add a listener to be notified when [updateSelection] is called, even if
  /// the selection state is the same.
  ///
  /// This is necessary in order to support programmatic selections in Flutter.
  /// Due to the way widgets are constructed in Flutter, there currently isn't
  /// a way for users to programmatically specify the selection. In order to
  /// provide this support, the users who subscribe to the selection updated
  /// event can keep a copy of the selection model and also decide if it should
  /// be overwritten.
  void addSelectionUpdatedListener(SelectionModelListener<D> listener) {
    _updatedListeners.add(listener);
  }

  /// Remove listener from being notified when [updateSelection] is called.
  void removeSelectionUpdatedListener(SelectionModelListener<D> listener) {
    _updatedListeners.remove(listener);
  }

  /// Remove all listeners.
  void clearAllListeners() {
    _changedListeners.clear();
    _updatedListeners.clear();
  }
}

/// Callback for SelectionModel. It is triggered when the selection state
/// changes.
typedef SelectionModelListener<D>(SelectionModel<D> model);

enum SelectionModelType {
  /// Typical Hover or Details event for viewing the details of the selected
  /// items.
  info,

  /// Typical Selection, Drill or Input event likely updating some external
  /// content.
  action,
}
