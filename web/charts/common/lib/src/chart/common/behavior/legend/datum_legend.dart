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
import '../../selection_model/selection_model.dart' show SelectionModelType;
import 'legend.dart';
import 'legend_entry_generator.dart';
import 'per_datum_legend_entry_generator.dart';

/// Datum legend behavior for charts.
///
/// By default this behavior creates one legend entry per datum in the first
/// series rendered on the chart.
///
/// TODO: Allows for hovering over a datum in legend to highlight
/// corresponding datum in draw area.
///
/// TODO: Implement tap to hide individual data in the series.
class DatumLegend<D> extends Legend<D> {
  /// Whether or not the series legend should show measures on datum selection.
  bool _showMeasures;

  DatumLegend({
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
                legendEntryGenerator ?? new PerDatumLegendEntryGenerator(),
            entryTextStyle: entryTextStyle) {
    // Call the setters that include the setting for default.
    this.showMeasures = showMeasures;
    this.legendDefaultMeasure = legendDefaultMeasure;
    this.measureFormatter = measureFormatter;
    this.secondaryMeasureFormatter = secondaryMeasureFormatter;
  }

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
}
