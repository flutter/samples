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

import '../../../cartesian/axis/spec/axis_spec.dart' show TextStyleSpec;
import '../../datum_details.dart' show MeasureFormatter;
import '../../processed_series.dart' show MutableSeries;
import '../../selection_model/selection_model.dart';
import 'legend_entry.dart';

/// A strategy for generating a list of [LegendEntry] based on the series drawn.
///
/// [D] the domain class type for the datum.
abstract class LegendEntryGenerator<D> {
  /// Generates a list of legend entries based on the series drawn on the chart.
  ///
  /// [seriesList] Processed series list.
  List<LegendEntry<D>> getLegendEntries(List<MutableSeries<D>> seriesList);

  /// Update the list of legend entries based on the selection model.
  ///
  /// [legendEntries] Existing legend entries to update.
  /// [selectionModel] Selection model to query selected state.
  /// [seriesList] Processed series list.
  void updateLegendEntries(List<LegendEntry<D>> legendEntries,
      SelectionModel<D> selectionModel, List<MutableSeries<D>> seriesList);

  MeasureFormatter get measureFormatter;

  set measureFormatter(MeasureFormatter formatter);

  MeasureFormatter get secondaryMeasureFormatter;

  set secondaryMeasureFormatter(MeasureFormatter formatter);

  LegendDefaultMeasure get legendDefaultMeasure;

  set legendDefaultMeasure(LegendDefaultMeasure noSelectionMeasure);

  TextStyleSpec get entryTextStyle;

  set entryTextStyle(TextStyleSpec entryTextStyle);
}

/// Options for calculating what measures are shown when there is no selection.
enum LegendDefaultMeasure {
  // No measures are shown where there is no selection.
  none,
  // Sum of all measure values for the series.
  sum,
  // Average of all measure values for the series.
  average,
  // The first measure value of the series.
  firstValue,
  // The last measure value of the series.
  lastValue,
}
