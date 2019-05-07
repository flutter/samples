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

import 'package:intl/intl.dart';
import '../../common/datum_details.dart' show MeasureFormatter;

// TODO: Break out into separate files.

/// A strategy used for converting domain values of the ticks into Strings.
///
/// [D] is the domain type.
abstract class TickFormatter<D> {
  const TickFormatter();

  /// Formats a list of tick values.
  List<String> format(List<D> tickValues, Map<D, String> cache, {num stepSize});
}

abstract class SimpleTickFormatterBase<D> implements TickFormatter<D> {
  const SimpleTickFormatterBase();

  @override
  List<String> format(List<D> tickValues, Map<D, String> cache,
          {num stepSize}) =>
      tickValues.map((D value) {
        // Try to use the cached formats first.
        String formattedString = cache[value];
        if (formattedString == null) {
          formattedString = formatValue(value);
          cache[value] = formattedString;
        }
        return formattedString;
      }).toList();

  /// Formats a single tick value.
  String formatValue(D value);
}

/// A strategy that converts tick labels using toString().
class OrdinalTickFormatter extends SimpleTickFormatterBase<String> {
  const OrdinalTickFormatter();

  @override
  String formatValue(String value) => value;

  @override
  bool operator ==(other) => other is OrdinalTickFormatter;

  @override
  int get hashCode => 31;
}

/// A strategy for formatting the labels on numeric ticks using [NumberFormat].
///
/// The default format is [NumberFormat.decimalPattern].
class NumericTickFormatter extends SimpleTickFormatterBase<num> {
  final MeasureFormatter formatter;

  NumericTickFormatter._internal(this.formatter);

  /// Construct a a new [NumericTickFormatter].
  ///
  /// [formatter] optionally specify a formatter to be used. Defaults to using
  /// [NumberFormat.decimalPattern] if none is specified.
  factory NumericTickFormatter({MeasureFormatter formatter}) {
    formatter ??= _getFormatter(new NumberFormat.decimalPattern());
    return new NumericTickFormatter._internal(formatter);
  }

  /// Constructs a new [NumericTickFormatter] that formats using [numberFormat].
  factory NumericTickFormatter.fromNumberFormat(NumberFormat numberFormat) {
    return new NumericTickFormatter._internal(_getFormatter(numberFormat));
  }

  /// Constructs a new formatter that uses [NumberFormat.compactCurrency].
  factory NumericTickFormatter.compactSimpleCurrency() {
    return new NumericTickFormatter._internal(
        _getFormatter(new NumberFormat.compactCurrency()));
  }

  /// Returns a [MeasureFormatter] that calls format on [numberFormat].
  static MeasureFormatter _getFormatter(NumberFormat numberFormat) {
    return (num value) => numberFormat.format(value);
  }

  @override
  String formatValue(num value) => formatter(value);

  @override
  bool operator ==(other) =>
      other is NumericTickFormatter && formatter == other.formatter;

  @override
  int get hashCode => formatter.hashCode;
}
