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

import 'package:charts_common/src/chart/common/processed_series.dart'
    show MutableSeries;
import 'package:charts_common/src/chart/scatter_plot/point_renderer.dart';
import 'package:charts_common/src/chart/scatter_plot/symbol_annotation_renderer.dart';
import 'package:charts_common/src/chart/scatter_plot/symbol_annotation_renderer_config.dart';
import 'package:charts_common/src/common/material_palette.dart'
    show MaterialPalette;
import 'package:charts_common/src/data/series.dart' show Series;

import 'package:test/test.dart';

/// Datum/Row for the chart.
class MyRow {
  final String campaignString;
  final int campaign;
  final int campaignLower;
  final int campaignUpper;
  final double radius;
  final double boundsRadius;
  final String shape;
  MyRow(this.campaignString, this.campaign, this.campaignLower,
      this.campaignUpper, this.radius, this.boundsRadius, this.shape);
}

void main() {
  SymbolAnnotationRenderer renderer;
  List<MutableSeries<int>> numericSeriesList;

  setUp(() {
    var myFakeDesktopData = [
      // This datum should get a default bounds line radius value.
      new MyRow('MyCampaign1', 0, 0, 0, 3.0, null, null),
      new MyRow('MyCampaign2', 10, 10, 12, 5.0, 4.0, 'shape 1'),
      new MyRow('MyCampaign3', 10, 10, 14, 4.0, 4.0, 'shape 2'),
      // This datum should always get default radius values.
      new MyRow('MyCampaign4', 13, 12, 15, null, null, null),
    ];

    numericSeriesList = [
      new MutableSeries<int>(new Series<MyRow, int>(
          id: 'Desktop',
          colorFn: (MyRow row, _) => MaterialPalette.blue.shadeDefault,
          domainFn: (MyRow row, _) => row.campaign,
          domainLowerBoundFn: (MyRow row, _) => row.campaignLower,
          domainUpperBoundFn: (MyRow row, _) => row.campaignUpper,
          measureFn: (MyRow row, _) => 0,
          measureOffsetFn: (MyRow row, _) => 0,
          radiusPxFn: (MyRow row, _) => row.radius,
          data: myFakeDesktopData)
        // Define a bounds line radius function.
        ..setAttribute(boundsLineRadiusPxFnKey,
            (int index) => myFakeDesktopData[index].boundsRadius))
    ];
  });

  group('preprocess', () {
    test('with numeric data and simple points', () {
      renderer = new SymbolAnnotationRenderer<int>(
          config: new SymbolAnnotationRendererConfig());

      renderer.preprocessSeries(numericSeriesList);

      expect(numericSeriesList.length, equals(1));

      // Validate Desktop series.
      var series = numericSeriesList[0];

      var keyFn = series.keyFn;

      var elementsList = series.getAttr(pointElementsKey);
      expect(elementsList.length, equals(4));

      expect(elementsList[0].radiusPx, equals(3.0));
      expect(elementsList[1].radiusPx, equals(5.0));
      expect(elementsList[2].radiusPx, equals(4.0));
      expect(elementsList[3].radiusPx, equals(5.0));

      expect(elementsList[0].boundsLineRadiusPx, equals(3.0));
      expect(elementsList[1].boundsLineRadiusPx, equals(4.0));
      expect(elementsList[2].boundsLineRadiusPx, equals(4.0));
      expect(elementsList[3].boundsLineRadiusPx, equals(5.0));

      expect(elementsList[0].symbolRendererId, equals(defaultSymbolRendererId));
      expect(elementsList[1].symbolRendererId, equals(defaultSymbolRendererId));
      expect(elementsList[2].symbolRendererId, equals(defaultSymbolRendererId));
      expect(elementsList[3].symbolRendererId, equals(defaultSymbolRendererId));

      expect(keyFn(0), equals('Desktop__0__0__0'));
      expect(keyFn(1), equals('Desktop__10__10__12'));
      expect(keyFn(2), equals('Desktop__10__10__14'));
      expect(keyFn(3), equals('Desktop__13__12__15'));
    });
  });
}
