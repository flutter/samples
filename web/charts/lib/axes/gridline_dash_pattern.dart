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

/// Example of timeseries chart with gridlines that have a dash pattern.
// EXCLUDE_FROM_GALLERY_DOCS_START
import 'dart:math';
// EXCLUDE_FROM_GALLERY_DOCS_END
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class GridlineDashPattern extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  GridlineDashPattern(this.seriesList, {this.animate});

  /// Creates a [TimeSeriesChart] with sample data and no transition.
  factory GridlineDashPattern.withSampleData() {
    return new GridlineDashPattern(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  // EXCLUDE_FROM_GALLERY_DOCS_START
  // This section is excluded from being copied to the gallery.
  // It is used for creating random series data to demonstrate animation in
  // the example app only.
  factory GridlineDashPattern.withRandomData() {
    return new GridlineDashPattern(_createRandomData());
  }

  /// Create random data.
  static List<charts.Series<MyRow, DateTime>> _createRandomData() {
    final random = new Random();

    final data = [
      new MyRow(new DateTime(2017, 9, 25), random.nextInt(100)),
      new MyRow(new DateTime(2017, 9, 26), random.nextInt(100)),
      new MyRow(new DateTime(2017, 9, 27), random.nextInt(100)),
      new MyRow(new DateTime(2017, 9, 28), random.nextInt(100)),
      new MyRow(new DateTime(2017, 9, 29), random.nextInt(100)),
      new MyRow(new DateTime(2017, 9, 30), random.nextInt(100)),
      new MyRow(new DateTime(2017, 10, 01), random.nextInt(100)),
      new MyRow(new DateTime(2017, 10, 02), random.nextInt(100)),
      new MyRow(new DateTime(2017, 10, 03), random.nextInt(100)),
      new MyRow(new DateTime(2017, 10, 04), random.nextInt(100)),
      new MyRow(new DateTime(2017, 10, 05), random.nextInt(100)),
    ];

    return [
      new charts.Series<MyRow, DateTime>(
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
    return new charts.TimeSeriesChart(seriesList,
        animate: animate,

        /// Customize the gridlines to use a dash pattern.
        primaryMeasureAxis: new charts.NumericAxisSpec(
            renderSpec: charts.GridlineRendererSpec(
                lineStyle: charts.LineStyleSpec(
          dashPattern: [4, 4],
        ))));
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<MyRow, DateTime>> _createSampleData() {
    final data = [
      new MyRow(new DateTime(2017, 9, 25), 6),
      new MyRow(new DateTime(2017, 9, 26), 8),
      new MyRow(new DateTime(2017, 9, 27), 6),
      new MyRow(new DateTime(2017, 9, 28), 9),
      new MyRow(new DateTime(2017, 9, 29), 11),
      new MyRow(new DateTime(2017, 9, 30), 15),
      new MyRow(new DateTime(2017, 10, 01), 25),
      new MyRow(new DateTime(2017, 10, 02), 33),
      new MyRow(new DateTime(2017, 10, 03), 27),
      new MyRow(new DateTime(2017, 10, 04), 31),
      new MyRow(new DateTime(2017, 10, 05), 23),
    ];

    return [
      new charts.Series<MyRow, DateTime>(
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
