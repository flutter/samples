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

/// Line chart with line annotations example.
// EXCLUDE_FROM_GALLERY_DOCS_START
import 'dart:math';
// EXCLUDE_FROM_GALLERY_DOCS_END
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class LineLineAnnotationChart extends StatelessWidget {
  final List<charts.Series<dynamic, num>> seriesList;
  final bool? animate;

  const LineLineAnnotationChart(this.seriesList, {this.animate, Key? key})
      : super(key: key);

  /// Creates a [LineChart] with sample data and line annotations.
  ///
  /// The second annotation extends beyond the range of the series data,
  /// demonstrating the effect of the [Charts.RangeAnnotation.extendAxis] flag.
  /// This can be set to false to disable range extension.
  factory LineLineAnnotationChart.withSampleData() {
    return LineLineAnnotationChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  // EXCLUDE_FROM_GALLERY_DOCS_START
  // This section is excluded from being copied to the gallery.
  // It is used for creating random series data to demonstrate animation in
  // the example app only.
  factory LineLineAnnotationChart.withRandomData() {
    return LineLineAnnotationChart(_createRandomData());
  }

  /// Create random data.
  static List<charts.Series<LinearSales, num>> _createRandomData() {
    final random = Random();

    final data = [
      LinearSales(0, random.nextInt(100)),
      LinearSales(1, random.nextInt(100)),
      LinearSales(2, random.nextInt(100)),
      // Fix one of the points to 100 so that the annotations are consistently
      // placed.
      LinearSales(3, 100),
    ];

    return [
      charts.Series<LinearSales, int>(
        id: 'Sales',
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
  // EXCLUDE_FROM_GALLERY_DOCS_END

  @override
  Widget build(BuildContext context) {
    return charts.LineChart(seriesList, animate: animate, behaviors: [
      charts.RangeAnnotation([
        charts.LineAnnotationSegment(1.0, charts.RangeAnnotationAxisType.domain,
            startLabel: 'Domain 1'),
        charts.LineAnnotationSegment(4, charts.RangeAnnotationAxisType.domain,
            endLabel: 'Domain 2', color: charts.MaterialPalette.gray.shade200),
        charts.LineAnnotationSegment(20, charts.RangeAnnotationAxisType.measure,
            startLabel: 'Measure 1 Start',
            endLabel: 'Measure 1 End',
            color: charts.MaterialPalette.gray.shade300),
        charts.LineAnnotationSegment(65, charts.RangeAnnotationAxisType.measure,
            startLabel: 'Measure 2 Start',
            endLabel: 'Measure 2 End',
            color: charts.MaterialPalette.gray.shade400),
      ]),
    ]);
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSales, int>> _createSampleData() {
    final data = [
      LinearSales(0, 5),
      LinearSales(1, 25),
      LinearSales(2, 100),
      LinearSales(3, 75),
    ];

    return [
      charts.Series<LinearSales, int>(
        id: 'Sales',
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample linear data type.
class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}
