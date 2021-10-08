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

/// Example of a time series chart using a bar renderer.
// EXCLUDE_FROM_GALLERY_DOCS_START
import 'dart:math';
// EXCLUDE_FROM_GALLERY_DOCS_END
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class TimeSeriesBar extends StatelessWidget {
  final List<charts.Series<TimeSeriesSales, DateTime>> seriesList;
  final bool? animate;

  const TimeSeriesBar(this.seriesList, {this.animate, Key? key})
      : super(key: key);

  /// Creates a [TimeSeriesChart] with sample data and no transition.
  factory TimeSeriesBar.withSampleData() {
    return TimeSeriesBar(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  // EXCLUDE_FROM_GALLERY_DOCS_START
  // This section is excluded from being copied to the gallery.
  // It is used for creating random series data to demonstrate animation in
  // the example app only.
  factory TimeSeriesBar.withRandomData() {
    return TimeSeriesBar(_createRandomData());
  }

  /// Create random data.
  static List<charts.Series<TimeSeriesSales, DateTime>> _createRandomData() {
    final random = Random();

    final data = [
      TimeSeriesSales(DateTime(2017, 9, 1), random.nextInt(100)),
      TimeSeriesSales(DateTime(2017, 9, 2), random.nextInt(100)),
      TimeSeriesSales(DateTime(2017, 9, 3), random.nextInt(100)),
      TimeSeriesSales(DateTime(2017, 9, 4), random.nextInt(100)),
      TimeSeriesSales(DateTime(2017, 9, 5), random.nextInt(100)),
      TimeSeriesSales(DateTime(2017, 9, 6), random.nextInt(100)),
      TimeSeriesSales(DateTime(2017, 9, 7), random.nextInt(100)),
      TimeSeriesSales(DateTime(2017, 9, 8), random.nextInt(100)),
      TimeSeriesSales(DateTime(2017, 9, 9), random.nextInt(100)),
      TimeSeriesSales(DateTime(2017, 9, 10), random.nextInt(100)),
      TimeSeriesSales(DateTime(2017, 9, 11), random.nextInt(100)),
      TimeSeriesSales(DateTime(2017, 9, 12), random.nextInt(100)),
      TimeSeriesSales(DateTime(2017, 9, 13), random.nextInt(100)),
      TimeSeriesSales(DateTime(2017, 9, 14), random.nextInt(100)),
      TimeSeriesSales(DateTime(2017, 9, 15), random.nextInt(100)),
      TimeSeriesSales(DateTime(2017, 9, 16), random.nextInt(100)),
      TimeSeriesSales(DateTime(2017, 9, 17), random.nextInt(100)),
      TimeSeriesSales(DateTime(2017, 9, 18), random.nextInt(100)),
      TimeSeriesSales(DateTime(2017, 9, 19), random.nextInt(100)),
      TimeSeriesSales(DateTime(2017, 9, 20), random.nextInt(100)),
      TimeSeriesSales(DateTime(2017, 9, 21), random.nextInt(100)),
    ];

    return [
      charts.Series<TimeSeriesSales, DateTime>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
  // EXCLUDE_FROM_GALLERY_DOCS_END

  @override
  Widget build(BuildContext context) {
    return charts.TimeSeriesChart(
      seriesList,
      animate: animate,
      // Set the default renderer to a bar renderer.
      // This can also be one of the custom renderers of the time series chart.
      defaultRenderer: charts.BarRendererConfig<DateTime>(),
      // It is recommended that default interactions be turned off if using bar
      // renderer, because the line point highlighter is the default for time
      // series chart.
      defaultInteractions: false,
      // If default interactions were removed, optionally add select nearest
      // and the domain highlighter that are typical for bar charts.
      behaviors: [charts.SelectNearest(), charts.DomainHighlighter()],
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<TimeSeriesSales, DateTime>> _createSampleData() {
    final data = [
      TimeSeriesSales(DateTime(2017, 9, 1), 5),
      TimeSeriesSales(DateTime(2017, 9, 2), 5),
      TimeSeriesSales(DateTime(2017, 9, 3), 25),
      TimeSeriesSales(DateTime(2017, 9, 4), 100),
      TimeSeriesSales(DateTime(2017, 9, 5), 75),
      TimeSeriesSales(DateTime(2017, 9, 6), 88),
      TimeSeriesSales(DateTime(2017, 9, 7), 65),
      TimeSeriesSales(DateTime(2017, 9, 8), 91),
      TimeSeriesSales(DateTime(2017, 9, 9), 100),
      TimeSeriesSales(DateTime(2017, 9, 10), 111),
      TimeSeriesSales(DateTime(2017, 9, 11), 90),
      TimeSeriesSales(DateTime(2017, 9, 12), 50),
      TimeSeriesSales(DateTime(2017, 9, 13), 40),
      TimeSeriesSales(DateTime(2017, 9, 14), 30),
      TimeSeriesSales(DateTime(2017, 9, 15), 40),
      TimeSeriesSales(DateTime(2017, 9, 16), 50),
      TimeSeriesSales(DateTime(2017, 9, 17), 30),
      TimeSeriesSales(DateTime(2017, 9, 18), 35),
      TimeSeriesSales(DateTime(2017, 9, 19), 40),
      TimeSeriesSales(DateTime(2017, 9, 20), 32),
      TimeSeriesSales(DateTime(2017, 9, 21), 31),
    ];

    return [
      charts.Series<TimeSeriesSales, DateTime>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample time series data type.
class TimeSeriesSales {
  final DateTime time;
  final int sales;

  TimeSeriesSales(this.time, this.sales);
}
