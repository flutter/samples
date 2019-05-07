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

import 'package:meta/meta.dart' show protected;

import '../../../cartesian/axis/spec/axis_spec.dart' show TextStyleSpec;
import '../../datum_details.dart' show MeasureFormatter;
import '../../processed_series.dart' show MutableSeries;
import '../../selection_model/selection_model.dart' show SelectionModelType;
import 'legend.dart';
import 'legend_entry_generator.dart';
import 'per_series_legend_entry_generator.dart';

// TODO: Allows for hovering over a series in legend to highlight
// corresponding series in draw area.

/// Series legend behavior for charts.
///
/// By default this behavior creates a legend entry per series.
class SeriesLegend<D> extends Legend<D> {
  /// List of currently hidden series, by ID.
  final _hiddenSeriesList = new Set<String>();

  /// List of series IDs that should be hidden by default.
  List<String> _defaultHiddenSeries;

  /// Whether or not the series legend should show measures on datum selection.
  bool _showMeasures;

  SeriesLegend({
    SelectionModelType selectionModelType,
    LegendEntryGenerator<D> legendEntryGenerator,
    MeasureFormatter measureFormatter,
    MeasureFormatter secondaryMeasureFormatter,
    bool showMeasures,
    LegendDefaultMeasure legendDefaultMeasure,
    TextStyleSpec entryTextStyle,
  }) : super(
            selectionModelType: selectionModelType ?? SelectionModelType.info,
            legendEntryGenerator:
                legendEntryGenerator ?? new PerSeriesLegendEntryGenerator(),
            entryTextStyle: entryTextStyle) {
    // Call the setters that include the setting for default.
    this.showMeasures = showMeasures;
    this.legendDefaultMeasure = legendDefaultMeasure;
    this.measureFormatter = measureFormatter;
    this.secondaryMeasureFormatter = secondaryMeasureFormatter;
  }

  /// Sets a list of series IDs that should be hidden by default on first chart
  /// draw.
  ///
  /// This will also reset the current list of hidden series, filling it in with
  /// the new default list.
  set defaultHiddenSeries(List<String> defaultHiddenSeries) {
    _defaultHiddenSeries = defaultHiddenSeries;

    _hiddenSeriesList.clear();

    if (_defaultHiddenSeries != null) {
      _defaultHiddenSeries.forEach(hideSeries);
    }
  }

  /// Gets a list of series IDs that should be hidden by default on first chart
  /// draw.
  List<String> get defaultHiddenSeries => _defaultHiddenSeries;

  /// Whether or not the legend should show measures.
  ///
  /// By default this is false, measures are not shown. When set to true, the
  /// default behavior is to show measure only if there is selected data.
  /// Please set [legendDefaultMeasure] to something other than none to enable
  /// showing measures when there is no selection.
  ///
  /// If [showMeasure] is set to null, it is changed to the default of false.
  bool get showMeasures => _showMeasures;

  set showMeasures(bool showMeasures) {
    _showMeasures = showMeasures ?? false;
  }

  /// Option to show measures when selection is null.
  ///
  /// By default this is set to none, so no measures are shown when there is
  /// no selection.
  ///
  /// If [legendDefaultMeasure] is set to null, it is changed to the default of
  /// none.
  LegendDefaultMeasure get legendDefaultMeasure =>
      legendEntryGenerator.legendDefaultMeasure;

  set legendDefaultMeasure(LegendDefaultMeasure legendDefaultMeasure) {
    legendEntryGenerator.legendDefaultMeasure =
        legendDefaultMeasure ?? LegendDefaultMeasure.none;
  }

  /// Formatter for measure values.
  ///
  /// This is optional. The default formatter formats measure values with
  /// NumberFormat.decimalPattern. If the measure value is null, a dash is
  /// returned.
  set measureFormatter(MeasureFormatter formatter) {
    legendEntryGenerator.measureFormatter =
        formatter ?? defaultLegendMeasureFormatter;
  }

  /// Formatter for measure values of series that uses the secondary axis.
  ///
  /// This is optional. The default formatter formats measure values with
  /// NumberFormat.decimalPattern. If the measure value is null, a dash is
  /// returned.
  set secondaryMeasureFormatter(MeasureFormatter formatter) {
    legendEntryGenerator.secondaryMeasureFormatter =
        formatter ?? defaultLegendMeasureFormatter;
  }

  /// Remove series IDs from the currently hidden list if those series have been
  /// removed from the chart data. The goal is to allow any metric that is
  /// removed from a chart, and later re-added to it, to be visible to the user.
  @override
  void onData(List<MutableSeries<D>> seriesList) {
    // If a series was removed from the chart, remove it from our current list
    // of hidden series.
    final seriesIds = seriesList.map((MutableSeries<D> series) => series.id);

    _hiddenSeriesList.removeWhere((String id) => !seriesIds.contains(id));
  }

  @override
  void preProcessSeriesList(List<MutableSeries<D>> seriesList) {
    seriesList.removeWhere((MutableSeries<D> series) {
      return _hiddenSeriesList.contains(series.id);
    });
  }

  /// Hides the data for a series on the chart by [seriesId].
  ///
  /// The entry in the legend for this series will be grayed out to indicate
  /// that it is hidden.
  @protected
  void hideSeries(String seriesId) {
    _hiddenSeriesList.add(seriesId);
  }

  /// Shows the data for a series on the chart by [seriesId].
  ///
  /// The entry in the legend for this series will be returned to its normal
  /// color if it was previously hidden.
  @protected
  void showSeries(String seriesId) {
    _hiddenSeriesList.removeWhere((String id) => id == seriesId);
  }

  /// Returns whether or not a given series [seriesId] is currently hidden.
  bool isSeriesHidden(String seriesId) {
    return _hiddenSeriesList.contains(seriesId);
  }
}
