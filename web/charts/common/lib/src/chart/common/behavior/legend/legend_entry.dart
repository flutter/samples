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

import '../../../../common/color.dart';
import '../../../../common/symbol_renderer.dart';
import '../../../cartesian/axis/spec/axis_spec.dart' show TextStyleSpec;
import '../../processed_series.dart' show ImmutableSeries;
import '../../series_renderer.dart' show rendererKey;

/// Holder for the information used for a legend row.
///
/// [T] the datum class type for the series passed in.
/// [D] the domain class type for the datum.
class LegendEntry<D> {
  final String label;
  final ImmutableSeries<D> series;
  final dynamic datum;
  final int datumIndex;
  final D domain;
  final Color color;
  final TextStyleSpec textStyle;
  double value;
  String formattedValue;
  bool isSelected;

  /// Zero based index for the row where this legend appears in the legend.
  int rowNumber;

  /// Zero based index for the column where this legend appears in the legend.
  int columnNumber;

  /// Total number of rows in the legend.
  int rowCount;

  /// Total number of columns in the legend.
  int columnCount;

  /// Indicates whether this is in the first row of a tabular layout.
  bool inFirstRow;

  /// Indicates whether this is in the first column of a tabular layout.
  bool inFirstColumn;

  /// Indicates whether this is in the last row of a tabular layout.
  bool inLastRow;

  /// Indicates whether this is in the last column of a tabular layout.
  bool inLastColumn;

  // TODO: Forward the default formatters from series and allow for
  // native legends to provide separate formatters.

  LegendEntry(this.series, this.label,
      {this.datum,
      this.datumIndex,
      this.domain,
      this.value,
      this.color,
      this.textStyle,
      this.isSelected = false,
      this.rowNumber,
      this.columnNumber,
      this.rowCount,
      this.columnCount,
      this.inFirstRow,
      this.inFirstColumn,
      this.inLastRow,
      this.inLastColumn});

  /// Get the native symbol renderer stored in the series.
  SymbolRenderer get symbolRenderer =>
      series.getAttr(rendererKey).symbolRenderer;
}
