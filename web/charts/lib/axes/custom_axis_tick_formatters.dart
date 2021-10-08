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

/// Example of timeseries chart with custom measure and domain formatters.
// EXCLUDE_FROM_GALLERY_DOCS_START
import 'dart:math';
// EXCLUDE_FROM_GALLERY_DOCS_END
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomAxisTickFormatters extends StatelessWidget {
  final List<charts.Series<dynamic, DateTime>> seriesList;
  final bool? animate;

  const CustomAxisTickFormatters(this.seriesList, {this.animate, Key? key})
      : super(key: key);

  /// Creates a [TimeSeriesChart] with sample data and no transition.
  factory CustomAxisTickFormatters.withSampleData() {
    return CustomAxisTickFormatters(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  // EXCLUDE_FROM_GALLERY_DOCS_START
  // This section is excluded from being copied to the gallery.
  // It is used for creating random series data to demonstrate animation in
  // the example app only.
  factory CustomAxisTickFormatters.withRandomData() {
    return CustomAxisTickFormatters(_createRandomData());
  }

  /// Create random data.
  static List<charts.Series<MyRow, DateTime>> _createRandomData() {
    final random = Random();

    final data = [
      MyRow(DateTime(2017, 9, 25), random.nextInt(100)),
      MyRow(DateTime(2017, 9, 26), random.nextInt(100)),
      MyRow(DateTime(2017, 9, 27), random.nextInt(100)),
      MyRow(DateTime(2017, 9, 28), random.nextInt(100)),
      MyRow(DateTime(2017, 9, 29), random.nextInt(100)),
      MyRow(DateTime(2017, 9, 30), random.nextInt(100)),
      MyRow(DateTime(2017, 10, 01), random.nextInt(100)),
      MyRow(DateTime(2017, 10, 02), random.nextInt(100)),
      MyRow(DateTime(2017, 10, 03), random.nextInt(100)),
      MyRow(DateTime(2017, 10, 04), random.nextInt(100)),
      MyRow(DateTime(2017, 10, 05), random.nextInt(100)),
    ];

    return [
      charts.Series<MyRow, DateTime>(
        id: 'Cost',
        domainFn: (MyRow row, _) => row.timeStamp,
        measureFn: (MyRow row, _) => row.cost,
        data: data,
      )
    ];
  }
  // EXCLUDE_FROM_GALLERY_DOCS_END

  @override
  Widget build(BuildContext context) {
    /// Formatter for numeric ticks using [NumberFormat] to format into currency
    ///
    /// This is what is used in the [NumericAxisSpec] below.
    final simpleCurrencyFormatter =
        charts.BasicNumericTickFormatterSpec.fromNumberFormat(
            NumberFormat.compactSimpleCurrency());

    /// Formatter for numeric ticks that uses the callback provided.
    ///
    /// Use this formatter if you need to format values that [NumberFormat]
    /// cannot provide.
    ///
    /// To see this formatter, change [NumericAxisSpec] to use this formatter.
    // final customTickFormatter =
    //   charts.BasicNumericTickFormatterSpec((num value) => 'MyValue: $value');

    return charts.TimeSeriesChart(seriesList,
        animate: animate,
        // Sets up a currency formatter for the measure axis.
        primaryMeasureAxis:
            charts.NumericAxisSpec(tickFormatterSpec: simpleCurrencyFormatter),

        /// Customizes the date tick formatter. It will print the day of month
        /// as the default format, but include the month and year if it
        /// transitions to a new month.
        ///
        /// minute, hour, day, month, and year are all provided by default and
        /// you can override them following this pattern.
        domainAxis: const charts.DateTimeAxisSpec(
            tickFormatterSpec: charts.AutoDateTimeTickFormatterSpec(
                day: charts.TimeFormatterSpec(
                    format: 'd', transitionFormat: 'MM/dd/yyyy'))));
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<MyRow, DateTime>> _createSampleData() {
    final data = [
      MyRow(DateTime(2017, 9, 25), 6),
      MyRow(DateTime(2017, 9, 26), 8),
      MyRow(DateTime(2017, 9, 27), 6),
      MyRow(DateTime(2017, 9, 28), 9),
      MyRow(DateTime(2017, 9, 29), 11),
      MyRow(DateTime(2017, 9, 30), 15),
      MyRow(DateTime(2017, 10, 01), 25),
      MyRow(DateTime(2017, 10, 02), 33),
      MyRow(DateTime(2017, 10, 03), 27),
      MyRow(DateTime(2017, 10, 04), 31),
      MyRow(DateTime(2017, 10, 05), 23),
    ];

    return [
      charts.Series<MyRow, DateTime>(
        id: 'Cost',
        domainFn: (MyRow row, _) => row.timeStamp,
        measureFn: (MyRow row, _) => row.cost,
        data: data,
      )
    ];
  }
}

/// Sample time series data type.
class MyRow {
  final DateTime timeStamp;
  final int cost;
  MyRow(this.timeStamp, this.cost);
}
