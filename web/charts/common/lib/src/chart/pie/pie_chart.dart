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

import 'dart:math' show Rectangle;

import '../common/base_chart.dart' show BaseChart;
import '../common/datum_details.dart' show DatumDetails;
import '../common/processed_series.dart' show MutableSeries;
import '../common/selection_model/selection_model.dart' show SelectionModelType;
import '../common/series_renderer.dart' show rendererIdKey, SeriesRenderer;
import '../layout/layout_config.dart' show LayoutConfig, MarginSpec;
import 'arc_renderer.dart' show ArcRenderer;

class PieChart<D> extends BaseChart<D> {
  static final _defaultLayoutConfig = new LayoutConfig(
    topSpec: new MarginSpec.fromPixel(minPixel: 20),
    bottomSpec: new MarginSpec.fromPixel(minPixel: 20),
    leftSpec: new MarginSpec.fromPixel(minPixel: 20),
    rightSpec: new MarginSpec.fromPixel(minPixel: 20),
  );

  PieChart({LayoutConfig layoutConfig})
      : super(layoutConfig: layoutConfig ?? _defaultLayoutConfig);

  @override
  void drawInternal(List<MutableSeries<D>> seriesList,
      {bool skipAnimation, bool skipLayout}) {
    if (seriesList.length > 1) {
      throw new ArgumentError('PieChart can only render a single series');
    }
    super.drawInternal(seriesList,
        skipAnimation: skipAnimation, skipLayout: skipLayout);
  }

  @override
  SeriesRenderer<D> makeDefaultRenderer() {
    return new ArcRenderer<D>()..rendererId = SeriesRenderer.defaultRendererId;
  }

  /// Returns a list of datum details from selection model of [type].
  @override
  List<DatumDetails<D>> getDatumDetails(SelectionModelType type) {
    final entries = <DatumDetails<D>>[];

    getSelectionModel(type).selectedDatum.forEach((seriesDatum) {
      final rendererId = seriesDatum.series.getAttr(rendererIdKey);
      final renderer = getSeriesRenderer(rendererId);

      // This should never happen.
      if (!(renderer is ArcRenderer)) {
        return;
      }

      final details =
          (renderer as ArcRenderer).getExpandedDatumDetails(seriesDatum);

      if (details != null) {
        entries.add(details);
      }
    });

    return entries;
  }

  Rectangle<int> get centerContentBounds {
    if (defaultRenderer is ArcRenderer<D>) {
      return (defaultRenderer as ArcRenderer<D>).centerContentBounds;
    } else {
      return null;
    }
  }
}
