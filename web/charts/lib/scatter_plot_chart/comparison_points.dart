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

/// Line chart example
// EXCLUDE_FROM_GALLERY_DOCS_START
import 'dart:math';
// EXCLUDE_FROM_GALLERY_DOCS_END
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class ComparisonPointsScatterPlotChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  ComparisonPointsScatterPlotChart(this.seriesList, {this.animate});

  /// Creates a [ScatterPlotChart] with sample data and no transition.
  factory ComparisonPointsScatterPlotChart.withSampleData() {
    return new ComparisonPointsScatterPlotChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  // EXCLUDE_FROM_GALLERY_DOCS_START
  // This section is excluded from being copied to the gallery.
  // It is used for creating random series data to demonstrate animation in
  // the example app only.
  factory ComparisonPointsScatterPlotChart.withRandomData() {
    return new ComparisonPointsScatterPlotChart(_createRandomData());
  }

  /// Create random data.
  static List<charts.Series<LinearSales, num>> _createRandomData() {
    final random = new Random();

    final maxMeasure = 100;

    final data = [
      _makeRandomDatum(maxMeasure, random),
      _makeRandomDatum(maxMeasure, random),
      _makeRandomDatum(maxMeasure, random),
      _makeRandomDatum(maxMeasure, random),
      _makeRandomDatum(maxMeasure, random),
      _makeRandomDatum(maxMeasure, random),
    ];

    return [
      new charts.Series<LinearSales, int>(
        id: 'Sales',
        colorFn: (LinearSales sales, _) {
          // Color bucket the measure column value into 3 distinct colors.
          final bucket = sales.sales / maxMeasure;

          if (bucket < 1 / 3) {
            return charts.MaterialPalette.blue.shadeDefault;
          } else if (bucket < 2 / 3) {
            return charts.MaterialPalette.red.shadeDefault;
          } else {
            return charts.MaterialPalette.green.shadeDefault;
          }
        },
        domainFn: (LinearSales sales, _) => sales.year,
        domainLowerBoundFn: (LinearSales sales, _) => sales.yearLower,
        domainUpperBoundFn: (LinearSales sales, _) => sales.yearUpper,
        measureFn: (LinearSales sales, _) => sales.sales,
        measureLowerBoundFn: (LinearSales sales, _) => sales.salesLower,
        measureUpperBoundFn: (LinearSales sales, _) => sales.salesUpper,
        radiusPxFn: (LinearSales sales, _) => sales.radius,
        data: data,
      )
    ];
  }

  static LinearSales _makeRandomDatum(int max, Random random) {
    final makeRadius = (int value) => (random.nextInt(value) + 6).toDouble();

    final year = random.nextInt(max);
    final yearLower = (year * 0.8).round();
    final yearUpper = year;
    final sales = random.nextInt(max);
    final salesLower = (sales * 0.8).round();
    final salesUpper = sales;

    return new LinearSales(year, yearLower, yearUpper, sales, salesLower,
        salesUpper, makeRadius(4));
  }
  // EXCLUDE_FROM_GALLERY_DOCS_END

  @override
  Widget build(BuildContext context) {
    return new charts.ScatterPlotChart(seriesList,
        animate: animate,
        defaultRenderer:
            new charts.PointRendererConfig(pointRendererDecorators: [
          new charts.ComparisonPointsDecorator(
              symbolRenderer: new charts.CylinderSymbolRenderer())
        ]));
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSales, int>> _createSampleData() {
    final data = [
      new LinearSales(10, 7, 10, 25, 20, 25, 5.0),
      new LinearSales(13, 11, 13, 225, 205, 225, 5.0),
      new LinearSales(34, 34, 24, 150, 150, 130, 5.0),
      new LinearSales(37, 37, 57, 10, 10, 12, 6.5),
      new LinearSales(45, 35, 45, 260, 300, 260, 8.0),
      new LinearSales(56, 46, 56, 200, 170, 200, 7.0),
    ];

    final maxMeasure = 300;

    return [
      new charts.Series<LinearSales, int>(
        id: 'Sales',
        // Providing a color function is optional.
        colorFn: (LinearSales sales, _) {
          // Bucket the measure column value into 3 distinct colors.
          final bucket = sales.sales / maxMeasure;

          if (bucket < 1 / 3) {
            return charts.MaterialPalette.blue.shadeDefault;
          } else if (bucket < 2 / 3) {
            return charts.MaterialPalette.red.shadeDefault;
          } else {
            return charts.MaterialPalette.green.shadeDefault;
          }
        },
        domainFn: (LinearSales sales, _) => sales.year,
        domainLowerBoundFn: (LinearSales sales, _) => sales.yearLower,
        domainUpperBoundFn: (LinearSales sales, _) => sales.yearUpper,
        measureFn: (LinearSales sales, _) => sales.sales,
        measureLowerBoundFn: (LinearSales sales, _) => sales.salesLower,
        measureUpperBoundFn: (LinearSales sales, _) => sales.salesUpper,
        // Providing a radius function is optional.
        radiusPxFn: (LinearSales sales, _) => sales.radius,
        data: data,
      )
    ];
  }
}

/// Sample linear data type.
class LinearSales {
  final int year;
  final int yearLower;
  final int yearUpper;
  final int sales;
  final int salesLower;
  final int salesUpper;
  final double radius;

  LinearSales(this.year, this.yearLower, this.yearUpper, this.sales,
      this.salesLower, this.salesUpper, this.radius);
}
