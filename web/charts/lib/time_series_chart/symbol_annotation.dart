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

/// Example of timeseries chart with annotation rows between the chart draw area
/// and the domain axis.
///
/// The symbol annotation renderer draws a row of symbols for each series below
/// the drawArea but above the bottom axis.
///
/// This renderer can draw point annotations and range annotations. Point
/// annotations are drawn at the location of the domain along the chart's domain
/// axis, in the row for its series. Range annotations are drawn as a range
/// shape between the domainLowerBound and domainUpperBound positions along the
/// chart's domain axis. Point annotations are drawn on top of range
/// annotations.
// EXCLUDE_FROM_GALLERY_DOCS_START
import 'dart:math';
// EXCLUDE_FROM_GALLERY_DOCS_END
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class TimeSeriesSymbolAnnotationChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  TimeSeriesSymbolAnnotationChart(this.seriesList, {this.animate});

  /// Creates a [TimeSeriesChart] with sample data and no transition.
  factory TimeSeriesSymbolAnnotationChart.withSampleData() {
    return new TimeSeriesSymbolAnnotationChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  // EXCLUDE_FROM_GALLERY_DOCS_START
  // This section is excluded from being copied to the gallery.
  // It is used for creating random series data to demonstrate animation in
  // the example app only.
  factory TimeSeriesSymbolAnnotationChart.withRandomData() {
    return new TimeSeriesSymbolAnnotationChart(_createRandomData());
  }

  /// Create random data.
  static List<charts.Series<TimeSeriesSales, DateTime>> _createRandomData() {
    final random = new Random();

    final myDesktopData = [
      new TimeSeriesSales(
          timeCurrent: new DateTime(2017, 9, 19), sales: random.nextInt(100)),
      new TimeSeriesSales(
          timeCurrent: new DateTime(2017, 9, 26), sales: random.nextInt(100)),
      new TimeSeriesSales(
          timeCurrent: new DateTime(2017, 10, 3), sales: random.nextInt(100)),
      new TimeSeriesSales(
          timeCurrent: new DateTime(2017, 10, 10), sales: random.nextInt(100)),
    ];

    final myTabletData = [
      new TimeSeriesSales(
          timeCurrent: new DateTime(2017, 9, 19), sales: random.nextInt(100)),
      new TimeSeriesSales(
          timeCurrent: new DateTime(2017, 9, 26), sales: random.nextInt(100)),
      new TimeSeriesSales(
          timeCurrent: new DateTime(2017, 10, 3), sales: random.nextInt(100)),
      new TimeSeriesSales(
          timeCurrent: new DateTime(2017, 10, 10), sales: random.nextInt(100)),
    ];

    // Example of a series with two range annotations. A regular point shape
    // will be drawn at the current domain value, and a range shape will be
    // drawn between the previous and target domain values.
    //
    // Note that these series do not contain any measure values. They are
    // positioned automatically in rows.
    final myAnnotationDataTop = [
      new TimeSeriesSales(
        timeCurrent: new DateTime(2017, 9, 24),
        timePrevious: new DateTime(2017, 9, 19),
        timeTarget: new DateTime(2017, 9, 24),
      ),
      new TimeSeriesSales(
        timeCurrent: new DateTime(2017, 9, 29),
        timePrevious: new DateTime(2017, 9, 29),
        timeTarget: new DateTime(2017, 10, 4),
      ),
    ];

    // Example of a series with one range annotation and two single point
    // annotations. Omitting the previous and target domain values causes that
    // datum to be drawn as a single point.
    final myAnnotationDataBottom = [
      new TimeSeriesSales(
        timeCurrent: new DateTime(2017, 9, 25),
        timePrevious: new DateTime(2017, 9, 21),
        timeTarget: new DateTime(2017, 9, 25),
      ),
      new TimeSeriesSales(timeCurrent: new DateTime(2017, 9, 31)),
      new TimeSeriesSales(timeCurrent: new DateTime(2017, 10, 5)),
    ];

    return [
      new charts.Series<TimeSeriesSales, DateTime>(
        id: 'Desktop',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (TimeSeriesSales sales, _) => sales.timeCurrent,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: myDesktopData,
      ),
      new charts.Series<TimeSeriesSales, DateTime>(
        id: 'Tablet',
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
        domainFn: (TimeSeriesSales sales, _) => sales.timeCurrent,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: myTabletData,
      ),
      new charts.Series<TimeSeriesSales, DateTime>(
        id: 'Annotation Series 1',
        colorFn: (_, __) => charts.MaterialPalette.gray.shadeDefault,
        domainFn: (TimeSeriesSales sales, _) => sales.timeCurrent,
        domainLowerBoundFn: (TimeSeriesSales row, _) => row.timePrevious,
        domainUpperBoundFn: (TimeSeriesSales row, _) => row.timeTarget,
        // No measure values are needed for symbol annotations.
        measureFn: (_, __) => null,
        data: myAnnotationDataTop,
      )
        // Configure our custom symbol annotation renderer for this series.
        ..setAttribute(charts.rendererIdKey, 'customSymbolAnnotation')
        // Optional radius for the annotation shape. If not specified, this will
        // default to the same radius as the points.
        ..setAttribute(charts.boundsLineRadiusPxKey, 3.5),
      new charts.Series<TimeSeriesSales, DateTime>(
        id: 'Annotation Series 2',
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        domainFn: (TimeSeriesSales sales, _) => sales.timeCurrent,
        domainLowerBoundFn: (TimeSeriesSales row, _) => row.timePrevious,
        domainUpperBoundFn: (TimeSeriesSales row, _) => row.timeTarget,
        // No measure values are needed for symbol annotations.
        measureFn: (_, __) => null,
        data: myAnnotationDataBottom,
      )
        // Configure our custom symbol annotation renderer for this series.
        ..setAttribute(charts.rendererIdKey, 'customSymbolAnnotation')
        // Optional radius for the annotation shape. If not specified, this will
        // default to the same radius as the points.
        ..setAttribute(charts.boundsLineRadiusPxKey, 3.5),
    ];
  }
  // EXCLUDE_FROM_GALLERY_DOCS_END

  @override
  Widget build(BuildContext context) {
    return new charts.TimeSeriesChart(
      seriesList,
      animate: animate,
      // Custom renderer configuration for the point series.
      customSeriesRenderers: [
        new charts.SymbolAnnotationRendererConfig(
            // ID used to link series to this renderer.
            customRendererId: 'customSymbolAnnotation')
      ],
      // Optionally pass in a [DateTimeFactory] used by the chart. The factory
      // should create the same type of [DateTime] as the data provided. If none
      // specified, the default creates local date time.
      dateTimeFactory: const charts.LocalDateTimeFactory(),
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<TimeSeriesSales, DateTime>> _createSampleData() {
    final myDesktopData = [
      new TimeSeriesSales(timeCurrent: new DateTime(2017, 9, 19), sales: 5),
      new TimeSeriesSales(timeCurrent: new DateTime(2017, 9, 26), sales: 25),
      new TimeSeriesSales(timeCurrent: new DateTime(2017, 10, 3), sales: 100),
      new TimeSeriesSales(timeCurrent: new DateTime(2017, 10, 10), sales: 75),
    ];

    final myTabletData = [
      new TimeSeriesSales(timeCurrent: new DateTime(2017, 9, 19), sales: 10),
      new TimeSeriesSales(timeCurrent: new DateTime(2017, 9, 26), sales: 50),
      new TimeSeriesSales(timeCurrent: new DateTime(2017, 10, 3), sales: 200),
      new TimeSeriesSales(timeCurrent: new DateTime(2017, 10, 10), sales: 150),
    ];

    // Example of a series with two range annotations. A regular point shape
    // will be drawn at the current domain value, and a range shape will be
    // drawn between the previous and target domain values.
    //
    // Note that these series do not contain any measure values. They are
    // positioned automatically in rows.
    final myAnnotationDataTop = [
      new TimeSeriesSales(
        timeCurrent: new DateTime(2017, 9, 24),
        timePrevious: new DateTime(2017, 9, 19),
        timeTarget: new DateTime(2017, 9, 24),
      ),
      new TimeSeriesSales(
        timeCurrent: new DateTime(2017, 9, 29),
        timePrevious: new DateTime(2017, 9, 29),
        timeTarget: new DateTime(2017, 10, 4),
      ),
    ];

    // Example of a series with one range annotation and two single point
    // annotations. Omitting the previous and target domain values causes that
    // datum to be drawn as a single point.
    final myAnnotationDataBottom = [
      new TimeSeriesSales(
        timeCurrent: new DateTime(2017, 9, 25),
        timePrevious: new DateTime(2017, 9, 21),
        timeTarget: new DateTime(2017, 9, 25),
      ),
      new TimeSeriesSales(timeCurrent: new DateTime(2017, 9, 31)),
      new TimeSeriesSales(timeCurrent: new DateTime(2017, 10, 5)),
    ];

    return [
      new charts.Series<TimeSeriesSales, DateTime>(
        id: 'Desktop',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (TimeSeriesSales sales, _) => sales.timeCurrent,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: myDesktopData,
      ),
      new charts.Series<TimeSeriesSales, DateTime>(
        id: 'Tablet',
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
        domainFn: (TimeSeriesSales sales, _) => sales.timeCurrent,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: myTabletData,
      ),
      new charts.Series<TimeSeriesSales, DateTime>(
        id: 'Annotation Series 1',
        colorFn: (_, __) => charts.MaterialPalette.gray.shadeDefault,
        // A point shape will be drawn at the location of the domain.
        domainFn: (TimeSeriesSales sales, _) => sales.timeCurrent,
        // A range shape will be drawn between the lower and upper domain
        // bounds. The range will be drawn underneath the domain point.
        domainLowerBoundFn: (TimeSeriesSales row, _) => row.timePrevious,
        domainUpperBoundFn: (TimeSeriesSales row, _) => row.timeTarget,
        // No measure values are needed for symbol annotations.
        measureFn: (_, __) => null,
        data: myAnnotationDataTop,
      )
        // Configure our custom symbol annotation renderer for this series.
        ..setAttribute(charts.rendererIdKey, 'customSymbolAnnotation')
        // Optional radius for the annotation range. If not specified, this will
        // default to the same radius as the domain point.
        ..setAttribute(charts.boundsLineRadiusPxKey, 3.5),
      new charts.Series<TimeSeriesSales, DateTime>(
        id: 'Annotation Series 2',
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        // A point shape will be drawn at the location of the domain.
        domainFn: (TimeSeriesSales sales, _) => sales.timeCurrent,
        // A range shape will be drawn between the lower and upper domain
        // bounds. The range will be drawn underneath the domain point.
        domainLowerBoundFn: (TimeSeriesSales row, _) => row.timePrevious,
        domainUpperBoundFn: (TimeSeriesSales row, _) => row.timeTarget,
        // No measure values are needed for symbol annotations.
        measureFn: (_, __) => null,
        data: myAnnotationDataBottom,
      )
        // Configure our custom symbol annotation renderer for this series.
        ..setAttribute(charts.rendererIdKey, 'customSymbolAnnotation')
        // Optional radius for the annotation range. If not specified, this will
        // default to the same radius as the domain point.
        ..setAttribute(charts.boundsLineRadiusPxKey, 3.5),
    ];
  }
}

/// Sample time series data type.
class TimeSeriesSales {
  final DateTime timeCurrent;
  final DateTime timePrevious;
  final DateTime timeTarget;
  final int sales;

  TimeSeriesSales(
      {this.timeCurrent, this.timePrevious, this.timeTarget, this.sales});
}
