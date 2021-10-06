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
import 'custom_rounded_bars.dart';
import 'grouped.dart';
import 'grouped_fill_color.dart';
import 'grouped_single_target_line.dart';
import 'grouped_stacked.dart';
import 'grouped_stacked_weight_pattern.dart';
import 'grouped_target_line.dart';
import 'horizontal.dart';
import 'horizontal_bar_label.dart';
import 'horizontal_bar_label_custom.dart';
import 'horizontal_pattern_forward_hatch.dart';
import 'pattern_forward_hatch.dart';
import 'simple.dart';
import 'stacked.dart';
import 'stacked_fill_color.dart';
import 'stacked_horizontal.dart';
import 'stacked_target_line.dart';
import 'spark_bar.dart';

List<GalleryScaffold> buildGallery() {
  return [
    GalleryScaffold(
      listTileIcon: const Icon(Icons.insert_chart),
      title: 'Simple Bar Chart',
      subtitle: 'Simple bar chart with a single series',
      childBuilder: () => SimpleBarChart.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.insert_chart),
      title: 'Stacked Bar Chart',
      subtitle: 'Stacked bar chart with multiple series',
      childBuilder: () => StackedBarChart.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.insert_chart),
      title: 'Grouped Bar Chart',
      subtitle: 'Grouped bar chart with multiple series',
      childBuilder: () => GroupedBarChart.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.insert_chart),
      title: 'Grouped Stacked Bar Chart',
      subtitle: 'Grouped and stacked bar chart with multiple series',
      childBuilder: () => GroupedStackedBarChart.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.insert_chart),
      title: 'Grouped Bar Target Line Chart',
      subtitle: 'Grouped bar target line chart with multiple series',
      childBuilder: () => GroupedBarTargetLineChart.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.insert_chart),
      title: 'Grouped Bar Single Target Line Chart',
      subtitle:
          'Grouped bar target line chart with multiple series and a single target',
      childBuilder: () => GroupedBarSingleTargetLineChart.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.insert_chart),
      title: 'Stacked Bar Target Line Chart',
      subtitle: 'Stacked bar target line chart with multiple series',
      childBuilder: () => StackedBarTargetLineChart.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: Transform.rotate(
          angle: 1.5708, child: const Icon(Icons.insert_chart)),
      title: 'Horizontal Bar Chart',
      subtitle: 'Horizontal bar chart with a single series',
      childBuilder: () => HorizontalBarChart.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: Transform.rotate(
          angle: 1.5708, child: const Icon(Icons.insert_chart)),
      title: 'Stacked Horizontal Bar Chart',
      subtitle: 'Stacked horizontal bar chart with multiple series',
      childBuilder: () => StackedHorizontalBarChart.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: Transform.rotate(
          angle: 1.5708, child: const Icon(Icons.insert_chart)),
      title: 'Horizontal Bar Chart with Bar Labels',
      subtitle: 'Horizontal bar chart with a single series and bar labels',
      childBuilder: () => HorizontalBarLabelChart.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: Transform.rotate(
          angle: 1.5708, child: const Icon(Icons.insert_chart)),
      title: 'Horizontal Bar Chart with Custom Bar Labels',
      subtitle: 'Bar labels with customized styling',
      childBuilder: () => HorizontalBarLabelCustomChart.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.insert_chart),
      title: 'Spark Bar Chart',
      subtitle: 'Spark Bar Chart',
      childBuilder: () => SparkBar.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.insert_chart),
      title: 'Grouped Fill Color Bar Chart',
      subtitle: 'Grouped bar chart with fill colors',
      childBuilder: () => GroupedFillColorBarChart.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.insert_chart),
      title: 'Stacked Fill Color Bar Chart',
      subtitle: 'Stacked bar chart with fill colors',
      childBuilder: () => StackedFillColorBarChart.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.insert_chart),
      title: 'Pattern Forward Hatch Bar Chart',
      subtitle: 'Pattern Forward Hatch Bar Chart',
      childBuilder: () => PatternForwardHatchBarChart.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: Transform.rotate(
          angle: 1.5708, child: const Icon(Icons.insert_chart)),
      title: 'Horizontal Pattern Forward Hatch Bar Chart',
      subtitle: 'Horizontal Pattern Forward Hatch Bar Chart',
      childBuilder: () =>
          HorizontalPatternForwardHatchBarChart.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.insert_chart),
      title: 'Weight Pattern Bar Chart',
      subtitle: 'Grouped and stacked bar chart with a weight pattern',
      childBuilder: () => GroupedStackedWeightPatternBarChart.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.insert_chart),
      title: 'Bar Chart with custom bar radius',
      subtitle: 'Custom rounded bar corners',
      childBuilder: () => CustomRoundedBars.withRandomData(),
    ),
  ];
}
