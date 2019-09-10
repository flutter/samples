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
import 'animation_zoom.dart';
import 'area_and_line.dart';
import 'dash_pattern.dart';
import 'line_annotation.dart';
import 'points.dart';
import 'range_annotation.dart';
import 'range_annotation_margin.dart';
import 'segments.dart';
import 'simple.dart';
import 'simple_nulls.dart';
import 'stacked_area.dart';
import 'stacked_area_custom_color.dart';
import 'stacked_area_nulls.dart';

List<GalleryScaffold> buildGallery() {
  return [
    new GalleryScaffold(
      listTileIcon: new Icon(Icons.show_chart),
      title: 'Simple Line Chart',
      subtitle: 'With a single series and default line point highlighter',
      childBuilder: () => new SimpleLineChart.withRandomData(),
    ),
    new GalleryScaffold(
      listTileIcon: new Icon(Icons.show_chart),
      title: 'Stacked Area Chart',
      subtitle: 'Stacked area chart with three series',
      childBuilder: () => new StackedAreaLineChart.withRandomData(),
    ),
    new GalleryScaffold(
      listTileIcon: new Icon(Icons.show_chart),
      title: 'Stacked Area Custom Color Chart',
      subtitle: 'Stacked area chart with custom area skirt color',
      childBuilder: () => new StackedAreaCustomColorLineChart.withRandomData(),
    ),
    new GalleryScaffold(
      listTileIcon: new Icon(Icons.show_chart),
      title: 'Area and Line Combo Chart',
      subtitle: 'Combo chart with one line series and one area series',
      childBuilder: () => new AreaAndLineChart.withRandomData(),
    ),
    new GalleryScaffold(
      listTileIcon: new Icon(Icons.show_chart),
      title: 'Points Line Chart',
      subtitle: 'Line chart with points on a single series',
      childBuilder: () => new PointsLineChart.withRandomData(),
    ),
    new GalleryScaffold(
      listTileIcon: new Icon(Icons.show_chart),
      title: 'Null Data Line Chart',
      subtitle: 'With a single series and null measure values',
      childBuilder: () => new SimpleNullsLineChart.withRandomData(),
    ),
    new GalleryScaffold(
      listTileIcon: new Icon(Icons.show_chart),
      title: 'Stacked Area with Nulls Chart',
      subtitle: 'Stacked area chart with three series and null measure values',
      childBuilder: () => new StackedAreaNullsLineChart.withRandomData(),
    ),
    new GalleryScaffold(
      listTileIcon: new Icon(Icons.show_chart),
      title: 'Dash Pattern Line Chart',
      subtitle: 'Line chart with dash patterns',
      childBuilder: () => new DashPatternLineChart.withRandomData(),
    ),
    new GalleryScaffold(
      listTileIcon: new Icon(Icons.show_chart),
      title: 'Segments Line Chart',
      subtitle: 'Line chart with changes of style for each line',
      childBuilder: () => new SegmentsLineChart.withRandomData(),
    ),
    new GalleryScaffold(
      listTileIcon: new Icon(Icons.show_chart),
      title: 'Line Annotation Line Chart',
      subtitle: 'Line chart with line annotations',
      childBuilder: () => new LineLineAnnotationChart.withRandomData(),
    ),
    new GalleryScaffold(
      listTileIcon: new Icon(Icons.show_chart),
      title: 'Range Annotation Line Chart',
      subtitle: 'Line chart with range annotations',
      childBuilder: () => new LineRangeAnnotationChart.withRandomData(),
    ),
    new GalleryScaffold(
      listTileIcon: new Icon(Icons.show_chart),
      title: 'Range Annotation Margin Labels Line Chart',
      subtitle: 'Line chart with range annotations with labels in margins',
      childBuilder: () => new LineRangeAnnotationMarginChart.withRandomData(),
    ),
    new GalleryScaffold(
      listTileIcon: new Icon(Icons.show_chart),
      title: 'Pan and Zoom Line Chart',
      subtitle: 'Simple line chart pan and zoom behaviors enabled',
      childBuilder: () => new LineAnimationZoomChart.withRandomData(),
    ),
  ];
}
