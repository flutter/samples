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
import 'datum_legend_options.dart';
import 'datum_legend_with_measures.dart';
import 'default_hidden_series_legend.dart';
import 'legend_custom_symbol.dart';
import 'series_legend_options.dart';
import 'series_legend_with_measures.dart';
import 'simple_datum_legend.dart';
import 'simple_series_legend.dart';

List<GalleryScaffold> buildGallery() {
  return [
    new GalleryScaffold(
      listTileIcon: new Icon(Icons.insert_chart),
      title: 'Series Legend',
      subtitle: 'A series legend for a bar chart with default settings',
      childBuilder: () => new SimpleSeriesLegend.withRandomData(),
    ),
    new GalleryScaffold(
      listTileIcon: new Icon(Icons.insert_chart),
      title: 'Series Legend Options',
      subtitle:
          'A series legend with custom positioning and spacing for a bar chart',
      childBuilder: () => new LegendOptions.withRandomData(),
    ),
    new GalleryScaffold(
      listTileIcon: new Icon(Icons.insert_chart),
      title: 'Series Legend Custom Symbol',
      subtitle: 'A series legend using a custom symbol renderer',
      childBuilder: () => new LegendWithCustomSymbol.withRandomData(),
    ),
    new GalleryScaffold(
      listTileIcon: new Icon(Icons.insert_chart),
      title: 'Default Hidden Series Legend',
      subtitle: 'A series legend showing a series hidden by default',
      childBuilder: () => new DefaultHiddenSeriesLegend.withRandomData(),
    ),
    new GalleryScaffold(
      listTileIcon: new Icon(Icons.insert_chart),
      title: 'Series legend with measures',
      subtitle: 'Series legend with measures and measure formatting',
      childBuilder: () => new LegendWithMeasures.withRandomData(),
    ),
    new GalleryScaffold(
      listTileIcon: new Icon(Icons.pie_chart),
      title: 'Datum Legend',
      subtitle: 'A datum legend for a pie chart with default settings',
      childBuilder: () => new SimpleDatumLegend.withRandomData(),
    ),
    new GalleryScaffold(
      listTileIcon: new Icon(Icons.pie_chart),
      title: 'Datum Legend Options',
      subtitle:
          'A datum legend with custom positioning and spacing for a pie chart',
      childBuilder: () => new DatumLegendOptions.withRandomData(),
    ),
    new GalleryScaffold(
      listTileIcon: new Icon(Icons.pie_chart),
      title: 'Datum legend with measures',
      subtitle: 'Datum legend with measures and measure formatting',
      childBuilder: () => new DatumLegendWithMeasures.withRandomData(),
    ),
  ];
}
