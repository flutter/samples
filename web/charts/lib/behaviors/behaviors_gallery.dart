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
import 'chart_title.dart';
import 'initial_hint_animation.dart';
import 'initial_selection.dart';
import 'percent_of_domain.dart';
import 'percent_of_domain_by_category.dart';
import 'percent_of_series.dart';
import 'selection_bar_highlight.dart';
import 'selection_line_highlight.dart';
import 'selection_line_highlight_custom_shape.dart';
import 'selection_callback_example.dart';
import 'selection_scatter_plot_highlight.dart';
import 'selection_user_managed.dart';
import 'slider.dart';
import 'sliding_viewport_on_selection.dart';

List<GalleryScaffold> buildGallery() {
  return [
    GalleryScaffold(
      listTileIcon: const Icon(Icons.flag),
      title: 'Selection Bar Highlight',
      subtitle: 'Simple bar chart with tap activation',
      childBuilder: () => SelectionBarHighlight.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.flag),
      title: 'Selection Line Highlight',
      subtitle: 'Line chart with tap and drag activation',
      childBuilder: () => SelectionLineHighlight.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.flag),
      title: 'Selection Line Highlight Custom Shape',
      subtitle: 'Line chart with tap and drag activation and a custom shape',
      childBuilder: () => SelectionLineHighlightCustomShape.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.flag),
      title: 'Selection Scatter Plot Highlight',
      subtitle: 'Scatter plot chart with tap and drag activation',
      childBuilder: () => SelectionScatterPlotHighlight.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.flag),
      title: 'Selection Callback Example',
      subtitle: 'Timeseries that updates external components on selection',
      childBuilder: () => SelectionCallbackExample.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.flag),
      title: 'User managed selection',
      subtitle:
          'Example where selection can be set and cleared programmatically',
      childBuilder: () => SelectionUserManaged.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.insert_chart),
      title: 'Bar Chart with initial selection',
      subtitle: 'Single series with initial selection',
      childBuilder: () => InitialSelection.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.flag),
      title: 'Line Chart with Chart Titles',
      subtitle: 'Line chart with four chart titles',
      childBuilder: () => ChartTitleLine.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.flag),
      title: 'Line Chart with Slider',
      subtitle: 'Line chart with a slider behavior',
      childBuilder: () => SliderLine.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.insert_chart),
      title: 'Percent of Domain',
      subtitle:
          'Stacked bar chart with measures calculated as percent of ' 'domain',
      childBuilder: () => PercentOfDomainBarChart.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.insert_chart),
      title: 'Percent of Domain by Category',
      subtitle: 'Grouped stacked bar chart with measures calculated as '
          'percent of domain and series category',
      childBuilder: () => PercentOfDomainByCategoryBarChart.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.insert_chart),
      title: 'Percent of Series',
      subtitle:
          'Grouped bar chart with measures calculated as percent of ' 'series',
      childBuilder: () => PercentOfSeriesBarChart.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.insert_chart),
      title: 'Sliding viewport on domain selection',
      subtitle: 'Center viewport on selected domain',
      childBuilder: () => SlidingViewportOnSelection.withRandomData(),
    ),
    GalleryScaffold(
      listTileIcon: const Icon(Icons.insert_chart),
      title: 'Initial hint animation ',
      subtitle: 'Animate into final viewport',
      childBuilder: () => InitialHintAnimation.withRandomData(),
    ),
  ];
}
