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

/// Example of a scatter plot chart with a bucketing measure axis and a legend.
///
/// A bucketing measure axis positions all values beneath a certain threshold
/// into a reserved space on the axis range. The label for the bucket line will
/// be drawn in the middle of the bucket range, rather than aligned with the
/// gridline for that value's position on the scale.
// EXCLUDE_FROM_GALLERY_DOCS_START
import 'dart:math';
// EXCLUDE_FROM_GALLERY_DOCS_END
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class BucketingAxisScatterPlotChart extends StatelessWidget {
  final List<charts.Series<dynamic, num>> seriesList;
  final bool? animate;

  const BucketingAxisScatterPlotChart(this.seriesList, {this.animate, Key? key})
      : super(key: key);

  /// Creates a [ScatterPlotChart] with sample data and no transition.
  factory BucketingAxisScatterPlotChart.withSampleData() {
    return BucketingAxisScatterPlotChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  // EXCLUDE_FROM_GALLERY_DOCS_START
  // This section is excluded from being copied to the gallery.
  // It is used for creating random series data to demonstrate animation in
  // the example app only.
  factory BucketingAxisScatterPlotChart.withRandomData() {
    return BucketingAxisScatterPlotChart(_createRandomData());
  }

  /// Create random data.
  static List<charts.Series<LinearSales, num>> _createRandomData() {
    final random = Random();

    makeRadius(int value) => (random.nextInt(value) + 6).toDouble();

    // Make sure that the measure values for the first five series are well
    // above the threshold. This simulates the grouping of the small values into
    // the "Other" series.
    final myFakeDesktopData = [
      LinearSales(
          random.nextInt(100), (random.nextInt(50) + 50) / 100, makeRadius(6)),
    ];

    final myFakeTabletData = [
      LinearSales(
          random.nextInt(100), (random.nextInt(50) + 50) / 100, makeRadius(6)),
    ];

    final myFakeMobileData = [
      LinearSales(
          random.nextInt(100), (random.nextInt(50) + 50) / 100, makeRadius(6)),
    ];

    final myFakeChromebookData = [
      LinearSales(
          random.nextInt(100), (random.nextInt(50) + 50) / 100, makeRadius(6)),
    ];

    final myFakeHomeData = [
      LinearSales(
          random.nextInt(100), (random.nextInt(50) + 50) / 100, makeRadius(6)),
    ];

    // Make sure that the "Other" series values are smaller.
    final myFakeOtherData = [
      LinearSales(random.nextInt(100), random.nextInt(50) / 100, makeRadius(6)),
      LinearSales(random.nextInt(100), random.nextInt(50) / 100, makeRadius(6)),
      LinearSales(random.nextInt(100), random.nextInt(50) / 100, makeRadius(6)),
      LinearSales(random.nextInt(100), random.nextInt(50) / 100, makeRadius(6)),
      LinearSales(random.nextInt(100), random.nextInt(50) / 100, makeRadius(6)),
      LinearSales(random.nextInt(100), random.nextInt(50) / 100, makeRadius(6)),
    ];

    return [
      charts.Series<LinearSales, int>(
          id: 'Desktop',
          colorFn: (LinearSales sales, _) =>
              charts.MaterialPalette.blue.shadeDefault,
          domainFn: (LinearSales sales, _) => sales.year,
          measureFn: (LinearSales sales, _) => sales.revenueShare,
          radiusPxFn: (LinearSales sales, _) => sales.radius,
          data: myFakeDesktopData),
      charts.Series<LinearSales, int>(
          id: 'Tablet',
          colorFn: (LinearSales sales, _) =>
              charts.MaterialPalette.red.shadeDefault,
          domainFn: (LinearSales sales, _) => sales.year,
          measureFn: (LinearSales sales, _) => sales.revenueShare,
          radiusPxFn: (LinearSales sales, _) => sales.radius,
          data: myFakeTabletData),
      charts.Series<LinearSales, int>(
          id: 'Mobile',
          colorFn: (LinearSales sales, _) =>
              charts.MaterialPalette.green.shadeDefault,
          domainFn: (LinearSales sales, _) => sales.year,
          measureFn: (LinearSales sales, _) => sales.revenueShare,
          radiusPxFn: (LinearSales sales, _) => sales.radius,
          data: myFakeMobileData),
      charts.Series<LinearSales, int>(
          id: 'Chromebook',
          colorFn: (LinearSales sales, _) =>
              charts.MaterialPalette.purple.shadeDefault,
          domainFn: (LinearSales sales, _) => sales.year,
          measureFn: (LinearSales sales, _) => sales.revenueShare,
          radiusPxFn: (LinearSales sales, _) => sales.radius,
          data: myFakeChromebookData),
      charts.Series<LinearSales, int>(
          id: 'Home',
          colorFn: (LinearSales sales, _) =>
              charts.MaterialPalette.indigo.shadeDefault,
          domainFn: (LinearSales sales, _) => sales.year,
          measureFn: (LinearSales sales, _) => sales.revenueShare,
          radiusPxFn: (LinearSales sales, _) => sales.radius,
          data: myFakeHomeData),
      charts.Series<LinearSales, int>(
          id: 'Other',
          colorFn: (LinearSales sales, _) =>
              charts.MaterialPalette.gray.shadeDefault,
          domainFn: (LinearSales sales, _) => sales.year,
          measureFn: (LinearSales sales, _) => sales.revenueShare,
          radiusPxFn: (LinearSales sales, _) => sales.radius,
          data: myFakeOtherData),
    ];
  }
  // EXCLUDE_FROM_GALLERY_DOCS_END

  @override
  Widget build(BuildContext context) {
    return charts.ScatterPlotChart(seriesList,
        // Set up a bucketing axis that will place all values below 0.1 (10%)
        // into a bucket at the bottom of the chart.
        //
        // Configure a tick count of 3 so that we get 100%, 50%, and the
        // threshold.
        primaryMeasureAxis: charts.BucketingAxisSpec(
            threshold: 0.1,
            tickProviderSpec: const charts.BucketingNumericTickProviderSpec(
                desiredTickCount: 3)),
        // Add a series legend to display the series names.
        behaviors: [
          charts.SeriesLegend(position: charts.BehaviorPosition.end),
        ],
        animate: animate);
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSales, int>> _createSampleData() {
    final myFakeDesktopData = [
      LinearSales(52, 0.75, 14.0),
    ];

    final myFakeTabletData = [
      LinearSales(45, 0.3, 18.0),
    ];

    final myFakeMobileData = [
      LinearSales(56, 0.8, 17.0),
    ];

    final myFakeChromebookData = [
      LinearSales(25, 0.6, 13.0),
    ];

    final myFakeHomeData = [
      LinearSales(34, 0.5, 15.0),
    ];

    final myFakeOtherData = [
      LinearSales(10, 0.25, 15.0),
      LinearSales(12, 0.075, 14.0),
      LinearSales(13, 0.225, 15.0),
      LinearSales(16, 0.03, 14.0),
      LinearSales(24, 0.04, 13.0),
      LinearSales(37, 0.1, 14.5),
    ];

    return [
      charts.Series<LinearSales, int>(
          id: 'Desktop',
          colorFn: (LinearSales sales, _) =>
              charts.MaterialPalette.blue.shadeDefault,
          domainFn: (LinearSales sales, _) => sales.year,
          measureFn: (LinearSales sales, _) => sales.revenueShare,
          radiusPxFn: (LinearSales sales, _) => sales.radius,
          data: myFakeDesktopData),
      charts.Series<LinearSales, int>(
          id: 'Tablet',
          colorFn: (LinearSales sales, _) =>
              charts.MaterialPalette.red.shadeDefault,
          domainFn: (LinearSales sales, _) => sales.year,
          measureFn: (LinearSales sales, _) => sales.revenueShare,
          radiusPxFn: (LinearSales sales, _) => sales.radius,
          data: myFakeTabletData),
      charts.Series<LinearSales, int>(
          id: 'Mobile',
          colorFn: (LinearSales sales, _) =>
              charts.MaterialPalette.green.shadeDefault,
          domainFn: (LinearSales sales, _) => sales.year,
          measureFn: (LinearSales sales, _) => sales.revenueShare,
          radiusPxFn: (LinearSales sales, _) => sales.radius,
          data: myFakeMobileData),
      charts.Series<LinearSales, int>(
          id: 'Chromebook',
          colorFn: (LinearSales sales, _) =>
              charts.MaterialPalette.purple.shadeDefault,
          domainFn: (LinearSales sales, _) => sales.year,
          measureFn: (LinearSales sales, _) => sales.revenueShare,
          radiusPxFn: (LinearSales sales, _) => sales.radius,
          data: myFakeChromebookData),
      charts.Series<LinearSales, int>(
          id: 'Home',
          colorFn: (LinearSales sales, _) =>
              charts.MaterialPalette.indigo.shadeDefault,
          domainFn: (LinearSales sales, _) => sales.year,
          measureFn: (LinearSales sales, _) => sales.revenueShare,
          radiusPxFn: (LinearSales sales, _) => sales.radius,
          data: myFakeHomeData),
      charts.Series<LinearSales, int>(
          id: 'Other',
          colorFn: (LinearSales sales, _) =>
              charts.MaterialPalette.gray.shadeDefault,
          domainFn: (LinearSales sales, _) => sales.year,
          measureFn: (LinearSales sales, _) => sales.revenueShare,
          radiusPxFn: (LinearSales sales, _) => sales.radius,
          data: myFakeOtherData),
    ];
  }
}

/// Sample linear data type.
class LinearSales {
  final int year;
  final double revenueShare;
  final double radius;

  LinearSales(this.year, this.revenueShare, this.radius);
}
