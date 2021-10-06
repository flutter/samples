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

import 'package:flutter/material.dart';
import '../gallery_scaffold.dart';
import 'bar_secondary_axis.dart';
import 'bar_secondary_axis_only.dart';
import 'custom_axis_tick_formatters.dart';
import 'custom_font_size_and_color.dart';
import 'custom_measure_tick_count.dart';
import 'gridline_dash_pattern.dart';
import 'hidden_ticks_and_labels_axis.dart';
import 'horizontal_bar_secondary_axis.dart';
import 'integer_only_measure_axis.dart';
import 'line_disjoint_axis.dart';
import 'measure_axis_label_alignment.dart';
import 'numeric_initial_viewport.dart';
import 'nonzero_bound_measure_axis.dart';
import 'ordinal_initial_viewport.dart';
import 'short_tick_length_axis.dart';
import 'statically_provided_ticks.dart';

List<GalleryScaffold> buildGallery() {
  return [
    GalleryScaffold(
      listTileIcon: const Icon(Icons.insert_chart),
      title: 'Bar chart with Secondary Measure Axis',
      subtitle: 'Bar chart with a series using a secondary measure axis',
      childBuilder: () => BarChartWithSecondaryAxis.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.insert_chart),
      title: 'Bar chart with Secondary Measure Axis only',
      subtitle: 'Bar chart with both series using secondary measure axis',
      childBuilder: () => BarChartWithSecondaryAxisOnly.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: Transform.rotate(
          angle: 1.5708, child: const Icon(Icons.insert_chart)),
      title: 'Horizontal bar chart with Secondary Measure Axis',
      subtitle:
          'Horizontal Bar chart with a series using secondary measure axis',
      childBuilder: () => HorizontalBarChartWithSecondaryAxis.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.insert_chart),
      title: 'Short Ticks Axis',
      subtitle: 'Bar chart with the primary measure axis having short ticks',
      childBuilder: () => ShortTickLengthAxis.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.insert_chart),
      title: 'Custom Axis Fonts',
      subtitle: 'Bar chart with custom axis font size and color',
      childBuilder: () => CustomFontSizeAndColor.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.insert_chart),
      title: 'Label Alignment Axis',
      subtitle: 'Bar chart with custom measure axis label alignments',
      childBuilder: () => MeasureAxisLabelAlignment.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.insert_chart),
      title: 'No Axis',
      subtitle: 'Bar chart with only the axis line drawn',
      childBuilder: () => HiddenTicksAndLabelsAxis.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.insert_chart),
      title: 'Statically Provided Ticks',
      subtitle: 'Bar chart with statically provided ticks',
      childBuilder: () => StaticallyProvidedTicks.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.show_chart),
      title: 'Custom Formatter',
      subtitle: 'Timeseries with custom domain and measure tick formatters',
      childBuilder: () => CustomAxisTickFormatters.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.show_chart),
      title: 'Custom Tick Count',
      subtitle: 'Timeseries with custom measure axis tick count',
      childBuilder: () => CustomMeasureTickCount.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.show_chart),
      title: 'Integer Measure Ticks',
      subtitle: 'Timeseries with only whole number measure axis ticks',
      childBuilder: () => IntegerOnlyMeasureAxis.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.show_chart),
      title: 'Non-zero bound Axis',
      subtitle: 'Timeseries with measure axis that does not include zero',
      childBuilder: () => NonzeroBoundMeasureAxis.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.insert_chart),
      title: 'Ordinal axis with initial viewport',
      subtitle: 'Single series with initial viewport',
      childBuilder: () => OrdinalInitialViewport.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.show_chart),
      title: 'Numeric axis with initial viewport',
      subtitle: 'Initial viewport is set to a subset of the data',
      childBuilder: () => NumericInitialViewport.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.show_chart),
      title: 'Gridline dash pattern',
      subtitle: 'Timeseries with measure gridlines that have a dash pattern',
      childBuilder: () => GridlineDashPattern.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.show_chart),
      title: 'Disjoint Measure Axes',
      subtitle: 'Line chart with disjoint measure axes',
      childBuilder: () => DisjointMeasureAxisLineChart.withRandomData(),
    ),
  ];
}
