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

import 'dart:collection' show HashSet;

import '../../../cartesian/axis/axis.dart' show Axis, measureAxisIdKey;
import '../../../cartesian/axis/spec/axis_spec.dart' show TextStyleSpec;
import '../../datum_details.dart' show MeasureFormatter;
import '../../processed_series.dart' show MutableSeries;
import '../../selection_model/selection_model.dart';
import '../../series_datum.dart' show SeriesDatum;
import 'legend_entry.dart';
import 'legend_entry_generator.dart';

/// A strategy for generating a list of [LegendEntry] per series drawn.
///
/// [D] the domain class type for the datum.
class PerSeriesLegendEntryGenerator<D> implements LegendEntryGenerator<D> {
  TextStyleSpec entryTextStyle;
  MeasureFormatter measureFormatter;
  MeasureFormatter secondaryMeasureFormatter;

  /// Option for showing measures when there is no selection.
  LegendDefaultMeasure legendDefaultMeasure;

  @override
  List<LegendEntry<D>> getLegendEntries(List<MutableSeries<D>> seriesList) {
    final legendEntries = seriesList
        .map((series) => new LegendEntry<D>(series, series.displayName,
            color: series.colorFn(0), textStyle: entryTextStyle))
        .toList();

    // Update with measures only if showing measure on no selection.
    if (legendDefaultMeasure != LegendDefaultMeasure.none) {
      _updateFromSeriesList(legendEntries, seriesList);
    }

    return legendEntries;
  }

  @override
  void updateLegendEntries(List<LegendEntry<D>> legendEntries,
      SelectionModel<D> selectionModel, List<MutableSeries<D>> seriesList) {
    if (selectionModel.hasAnySelection) {
      _updateFromSelection(legendEntries, selectionModel);
    } else {
      // Update with measures only if showing measure on no selection.
      if (legendDefaultMeasure != LegendDefaultMeasure.none) {
        _updateFromSeriesList(legendEntries, seriesList);
      } else {
        _resetLegendEntryMeasures(legendEntries);
      }
    }
  }

  /// Update legend entries with measures of the selected datum
  void _updateFromSelection(
      List<LegendEntry<D>> legendEntries, SelectionModel<D> selectionModel) {
    // Map of series ID to the total selected measure value for that series.
    final seriesAndMeasure = <String, num>{};

    // Hash set of series ID's that use the secondary measure axis
    final secondaryAxisSeriesIDs = new HashSet<String>();

    for (SeriesDatum<D> selectedDatum in selectionModel.selectedDatum) {
      final series = selectedDatum.series;
      final seriesId = series.id;
      final measure = series.measureFn(selectedDatum.index) ?? 0;

      seriesAndMeasure[seriesId] = seriesAndMeasure.containsKey(seriesId)
          ? seriesAndMeasure[seriesId] + measure
          : measure;

      if (series.getAttr(measureAxisIdKey) == Axis.secondaryMeasureAxisId) {
        secondaryAxisSeriesIDs.add(seriesId);
      }
    }

    for (var entry in legendEntries) {
      final seriesId = entry.series.id;
      final measureValue = seriesAndMeasure[seriesId]?.toDouble();
      final formattedValue = secondaryAxisSeriesIDs.contains(seriesId)
          ? secondaryMeasureFormatter(measureValue)
          : measureFormatter(measureValue);

      entry.value = measureValue;
      entry.formattedValue = formattedValue;
      entry.isSelected = selectionModel.selectedSeries
          .any((selectedSeries) => entry.series.id == selectedSeries.id);
    }
  }

  void _resetLegendEntryMeasures(List<LegendEntry<D>> legendEntries) {
    for (LegendEntry<D> entry in legendEntries) {
      entry.value = null;
      entry.formattedValue = null;
      entry.isSelected = false;
    }
  }

  /// Update each legend entry by calculating measure values in [seriesList].
  ///
  /// This method calculates the legend's measure value to show when there is no
  /// selection. The type of calculation is based on the [legendDefaultMeasure]
  /// value.
  void _updateFromSeriesList(
      List<LegendEntry<D>> legendEntries, List<MutableSeries<D>> seriesList) {
    // Helper function to sum up the measure values
    num getMeasureTotal(MutableSeries<D> series) {
      var measureTotal = 0.0;
      for (var i = 0; i < series.data.length; i++) {
        measureTotal += series.measureFn(i);
      }
      return measureTotal;
    }

    // Map of series ID to the calculated measure for that series.
    final seriesAndMeasure = <String, double>{};
    // Map of series ID and the formatted measure for that series.
    final seriesAndFormattedMeasure = <String, String>{};

    for (MutableSeries<D> series in seriesList) {
      final seriesId = series.id;
      num calculatedMeasure;

      switch (legendDefaultMeasure) {
        case LegendDefaultMeasure.sum:
          calculatedMeasure = getMeasureTotal(series);
          break;
        case LegendDefaultMeasure.average:
          calculatedMeasure = getMeasureTotal(series) / series.data.length;
          break;
        case LegendDefaultMeasure.firstValue:
          calculatedMeasure = series.measureFn(0);
          break;
        case LegendDefaultMeasure.lastValue:
          calculatedMeasure = series.measureFn(series.data.length - 1);
          break;
        case LegendDefaultMeasure.none:
          // [calculatedMeasure] intentionally left null, since we do not want
          // to show any measures.
          break;
      }

      seriesAndMeasure[seriesId] = calculatedMeasure?.toDouble();
      seriesAndFormattedMeasure[seriesId] =
          (series.getAttr(measureAxisIdKey) == Axis.secondaryMeasureAxisId)
              ? secondaryMeasureFormatter(calculatedMeasure)
              : measureFormatter(calculatedMeasure);
    }

    for (var entry in legendEntries) {
      final seriesId = entry.series.id;

      entry.value = seriesAndMeasure[seriesId];
      entry.formattedValue = seriesAndFormattedMeasure[seriesId];
      entry.isSelected = false;
    }
  }

  @override
  bool operator ==(Object other) {
    return other is PerSeriesLegendEntryGenerator &&
        measureFormatter == other.measureFormatter &&
        secondaryMeasureFormatter == other.secondaryMeasureFormatter &&
        legendDefaultMeasure == other.legendDefaultMeasure &&
        entryTextStyle == other.entryTextStyle;
  }

  @override
  int get hashCode {
    int hashcode = measureFormatter?.hashCode ?? 0;
    hashcode = (hashcode * 37) + secondaryMeasureFormatter.hashCode;
    hashcode = (hashcode * 37) + legendDefaultMeasure.hashCode;
    hashcode = (hashcode * 37) + entryTextStyle.hashCode;
    return hashcode;
  }
}
