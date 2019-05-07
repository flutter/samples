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

import 'package:charts_common/src/chart/line/line_renderer.dart';
import 'package:charts_common/src/chart/line/line_renderer_config.dart';
import 'package:charts_common/src/chart/common/processed_series.dart'
    show MutableSeries, ImmutableSeries;
import 'package:charts_common/src/common/color.dart';
import 'package:charts_common/src/common/material_palette.dart'
    show MaterialPalette;
import 'package:charts_common/src/data/series.dart' show Series;

import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

/// Datum/Row for the chart.
class MyRow {
  final String campaignString;
  final int campaign;
  final int clickCount;
  final Color color;
  final List<int> dashPattern;
  final double strokeWidthPx;
  MyRow(this.campaignString, this.campaign, this.clickCount, this.color,
      this.dashPattern, this.strokeWidthPx);
}

class MockImmutableSeries<D> extends Mock implements ImmutableSeries<D> {
  String _id;
  MockImmutableSeries(this._id);

  @override
  String get id => _id;
}

void main() {
  LineRenderer renderer;
  List<MutableSeries<int>> numericSeriesList;
  List<MutableSeries<String>> ordinalSeriesList;

  List<MyRow> myFakeDesktopData;
  List<MyRow> myFakeTabletData;
  List<MyRow> myFakeMobileData;

  setUp(() {
    myFakeDesktopData = [
      new MyRow(
          'MyCampaign1', 1, 5, MaterialPalette.blue.shadeDefault, null, 2.0),
      new MyRow(
          'MyCampaign2', 2, 25, MaterialPalette.green.shadeDefault, null, 2.0),
      new MyRow(
          'MyCampaign3', 3, 100, MaterialPalette.red.shadeDefault, null, 2.0),
      new MyRow('MyOtherCampaign', 4, 75, MaterialPalette.red.shadeDefault,
          null, 2.0),
    ];

    myFakeTabletData = [
      new MyRow(
          'MyCampaign1', 1, 5, MaterialPalette.blue.shadeDefault, [2, 2], 2.0),
      new MyRow(
          'MyCampaign2', 2, 25, MaterialPalette.blue.shadeDefault, [3, 3], 2.0),
      new MyRow('MyCampaign3', 3, 100, MaterialPalette.blue.shadeDefault,
          [4, 4], 2.0),
      new MyRow('MyOtherCampaign', 4, 75, MaterialPalette.blue.shadeDefault,
          [4, 4], 2.0),
    ];

    myFakeMobileData = [
      new MyRow(
          'MyCampaign1', 1, 5, MaterialPalette.blue.shadeDefault, null, 2.0),
      new MyRow(
          'MyCampaign2', 2, 25, MaterialPalette.blue.shadeDefault, null, 3.0),
      new MyRow(
          'MyCampaign3', 3, 100, MaterialPalette.blue.shadeDefault, null, 4.0),
      new MyRow('MyOtherCampaign', 4, 75, MaterialPalette.blue.shadeDefault,
          null, 4.0),
    ];

    numericSeriesList = [
      new MutableSeries<int>(new Series<MyRow, int>(
          id: 'Desktop',
          colorFn: (_, __) => MaterialPalette.blue.shadeDefault,
          domainFn: (dynamic row, _) => row.campaign,
          measureFn: (dynamic row, _) => row.clickCount,
          measureOffsetFn: (_, __) => 0,
          data: myFakeDesktopData)),
      new MutableSeries<int>(new Series<MyRow, int>(
          id: 'Tablet',
          colorFn: (_, __) => MaterialPalette.red.shadeDefault,
          domainFn: (dynamic row, _) => row.campaign,
          measureFn: (dynamic row, _) => row.clickCount,
          measureOffsetFn: (_, __) => 0,
          strokeWidthPxFn: (_, __) => 1.25,
          data: myFakeTabletData)),
      new MutableSeries<int>(new Series<MyRow, int>(
          id: 'Mobile',
          colorFn: (_, __) => MaterialPalette.green.shadeDefault,
          domainFn: (dynamic row, _) => row.campaign,
          measureFn: (dynamic row, _) => row.clickCount,
          measureOffsetFn: (_, __) => 0,
          strokeWidthPxFn: (_, __) => 3.0,
          data: myFakeMobileData))
    ];

    ordinalSeriesList = [
      new MutableSeries<String>(new Series<MyRow, String>(
          id: 'Desktop',
          colorFn: (_, __) => MaterialPalette.blue.shadeDefault,
          domainFn: (dynamic row, _) => row.campaignString,
          measureFn: (dynamic row, _) => row.clickCount,
          measureOffsetFn: (_, __) => 0,
          data: myFakeDesktopData)),
      new MutableSeries<String>(new Series<MyRow, String>(
          id: 'Tablet',
          colorFn: (_, __) => MaterialPalette.red.shadeDefault,
          domainFn: (dynamic row, _) => row.campaignString,
          measureFn: (dynamic row, _) => row.clickCount,
          measureOffsetFn: (_, __) => 0,
          strokeWidthPxFn: (_, __) => 1.25,
          data: myFakeTabletData)),
      new MutableSeries<String>(new Series<MyRow, String>(
          id: 'Mobile',
          colorFn: (_, __) => MaterialPalette.green.shadeDefault,
          domainFn: (dynamic row, _) => row.campaignString,
          measureFn: (dynamic row, _) => row.clickCount,
          measureOffsetFn: (_, __) => 0,
          strokeWidthPxFn: (_, __) => 3.0,
          data: myFakeMobileData))
    ];
  });

  group('preprocess', () {
    test('with numeric data and simple lines', () {
      renderer = new LineRenderer<num>(
          config: new LineRendererConfig(strokeWidthPx: 2.0));

      renderer.configureSeries(numericSeriesList);
      renderer.preprocessSeries(numericSeriesList);

      expect(numericSeriesList.length, equals(3));

      // Validate Desktop series.
      var series = numericSeriesList[0];

      var styleSegments = series.getAttr(styleSegmentsKey);
      expect(styleSegments.length, equals(1));

      var segment = styleSegments[0];
      expect(segment.color, equals(MaterialPalette.blue.shadeDefault));
      expect(segment.dashPattern, isNull);
      expect(segment.domainExtent.start, equals(1));
      expect(segment.domainExtent.end, equals(4));
      expect(segment.strokeWidthPx, equals(2.0));

      expect(series.measureOffsetFn(0), 0);
      expect(series.measureOffsetFn(1), 0);
      expect(series.measureOffsetFn(2), 0);
      expect(series.measureOffsetFn(3), 0);

      // Validate Tablet series.
      series = numericSeriesList[1];

      styleSegments = series.getAttr(styleSegmentsKey);
      expect(styleSegments.length, equals(1));

      segment = styleSegments[0];
      expect(segment.color, equals(MaterialPalette.red.shadeDefault));
      expect(segment.dashPattern, isNull);
      expect(segment.domainExtent.start, equals(1));
      expect(segment.domainExtent.end, equals(4));
      expect(segment.strokeWidthPx, equals(1.25));

      expect(series.measureOffsetFn(0), 0);
      expect(series.measureOffsetFn(1), 0);
      expect(series.measureOffsetFn(2), 0);
      expect(series.measureOffsetFn(3), 0);

      // Validate Mobile series.
      series = numericSeriesList[2];

      styleSegments = series.getAttr(styleSegmentsKey);
      expect(styleSegments.length, equals(1));

      segment = styleSegments[0];
      expect(segment.color, equals(MaterialPalette.green.shadeDefault));
      expect(segment.dashPattern, isNull);
      expect(segment.domainExtent.start, equals(1));
      expect(segment.domainExtent.end, equals(4));
      expect(segment.strokeWidthPx, equals(3.0));

      expect(series.measureOffsetFn(0), 0);
      expect(series.measureOffsetFn(1), 0);
      expect(series.measureOffsetFn(2), 0);
      expect(series.measureOffsetFn(3), 0);
    });

    test('with numeric data and stacked lines', () {
      renderer = new LineRenderer<num>(
          config: new LineRendererConfig(stacked: true, strokeWidthPx: 2.0));

      renderer.configureSeries(numericSeriesList);
      renderer.preprocessSeries(numericSeriesList);

      expect(numericSeriesList.length, equals(3));

      // Validate Desktop series.
      var series = numericSeriesList[0];

      var styleSegments = series.getAttr(styleSegmentsKey);
      expect(styleSegments.length, equals(1));

      var segment = styleSegments[0];
      expect(segment.color, equals(MaterialPalette.blue.shadeDefault));
      expect(segment.dashPattern, isNull);
      expect(segment.domainExtent.start, equals(1));
      expect(segment.domainExtent.end, equals(4));
      expect(segment.strokeWidthPx, equals(2.0));

      expect(series.measureOffsetFn(0), 0);
      expect(series.measureOffsetFn(1), 0);
      expect(series.measureOffsetFn(2), 0);
      expect(series.measureOffsetFn(3), 0);

      // Validate Tablet series.
      series = numericSeriesList[1];

      styleSegments = series.getAttr(styleSegmentsKey);
      expect(styleSegments.length, equals(1));

      segment = styleSegments[0];
      expect(segment.color, equals(MaterialPalette.red.shadeDefault));
      expect(segment.dashPattern, isNull);
      expect(segment.domainExtent.start, equals(1));
      expect(segment.domainExtent.end, equals(4));
      expect(segment.strokeWidthPx, equals(1.25));

      expect(series.measureOffsetFn(0), 5);
      expect(series.measureOffsetFn(1), 25);
      expect(series.measureOffsetFn(2), 100);
      expect(series.measureOffsetFn(3), 75);

      // Validate Mobile series.
      series = numericSeriesList[2];

      styleSegments = series.getAttr(styleSegmentsKey);
      expect(styleSegments.length, equals(1));

      segment = styleSegments[0];
      expect(segment.color, equals(MaterialPalette.green.shadeDefault));
      expect(segment.dashPattern, isNull);
      expect(segment.domainExtent.start, equals(1));
      expect(segment.domainExtent.end, equals(4));
      expect(segment.strokeWidthPx, equals(3.0));

      expect(series.measureOffsetFn(0), 10);
      expect(series.measureOffsetFn(1), 50);
      expect(series.measureOffsetFn(2), 200);
      expect(series.measureOffsetFn(3), 150);
    });

    test('with numeric data and changes in style', () {
      numericSeriesList = [
        new MutableSeries<int>(new Series<MyRow, int>(
            id: 'Desktop',
            colorFn: (MyRow row, _) => row.color,
            dashPatternFn: (MyRow row, _) => row.dashPattern,
            strokeWidthPxFn: (MyRow row, _) => row.strokeWidthPx,
            domainFn: (dynamic row, _) => row.campaign,
            measureFn: (dynamic row, _) => row.clickCount,
            measureOffsetFn: (_, __) => 0,
            data: myFakeDesktopData)),
        new MutableSeries<int>(new Series<MyRow, int>(
            id: 'Tablet',
            colorFn: (MyRow row, _) => row.color,
            dashPatternFn: (MyRow row, _) => row.dashPattern,
            strokeWidthPxFn: (MyRow row, _) => row.strokeWidthPx,
            domainFn: (dynamic row, _) => row.campaign,
            measureFn: (dynamic row, _) => row.clickCount,
            measureOffsetFn: (_, __) => 0,
            data: myFakeTabletData)),
        new MutableSeries<int>(new Series<MyRow, int>(
            id: 'Mobile',
            colorFn: (MyRow row, _) => row.color,
            dashPatternFn: (MyRow row, _) => row.dashPattern,
            strokeWidthPxFn: (MyRow row, _) => row.strokeWidthPx,
            domainFn: (dynamic row, _) => row.campaign,
            measureFn: (dynamic row, _) => row.clickCount,
            measureOffsetFn: (_, __) => 0,
            data: myFakeMobileData))
      ];

      renderer = new LineRenderer<num>(
          config: new LineRendererConfig(strokeWidthPx: 2.0));

      renderer.configureSeries(numericSeriesList);
      renderer.preprocessSeries(numericSeriesList);

      expect(numericSeriesList.length, equals(3));

      // Validate Desktop series.
      var series = numericSeriesList[0];

      var styleSegments = series.getAttr(styleSegmentsKey);
      expect(styleSegments.length, equals(3));

      var segment = styleSegments[0];
      expect(segment.color, equals(MaterialPalette.blue.shadeDefault));
      expect(segment.dashPattern, isNull);
      expect(segment.domainExtent.start, equals(1));
      expect(segment.domainExtent.end, equals(2));
      expect(segment.strokeWidthPx, equals(2.0));

      segment = styleSegments[1];
      expect(segment.color, equals(MaterialPalette.green.shadeDefault));
      expect(segment.dashPattern, isNull);
      expect(segment.domainExtent.start, equals(2));
      expect(segment.domainExtent.end, equals(3));
      expect(segment.strokeWidthPx, equals(2.0));

      segment = styleSegments[2];
      expect(segment.color, equals(MaterialPalette.red.shadeDefault));
      expect(segment.dashPattern, isNull);
      expect(segment.domainExtent.start, equals(3));
      expect(segment.domainExtent.end, equals(4));
      expect(segment.strokeWidthPx, equals(2.0));

      expect(series.measureOffsetFn(0), 0);
      expect(series.measureOffsetFn(1), 0);
      expect(series.measureOffsetFn(2), 0);
      expect(series.measureOffsetFn(3), 0);

      // Validate Tablet series.
      series = numericSeriesList[1];

      styleSegments = series.getAttr(styleSegmentsKey);
      expect(styleSegments.length, equals(3));

      segment = segment = styleSegments[0];
      expect(segment.color, equals(MaterialPalette.blue.shadeDefault));
      expect(segment.dashPattern, equals([2, 2]));
      expect(segment.domainExtent.start, equals(1));
      expect(segment.domainExtent.end, equals(2));
      expect(segment.strokeWidthPx, equals(2.0));

      segment = styleSegments[1];
      expect(segment.color, equals(MaterialPalette.blue.shadeDefault));
      expect(segment.dashPattern, equals([3, 3]));
      expect(segment.domainExtent.start, equals(2));
      expect(segment.domainExtent.end, equals(3));
      expect(segment.strokeWidthPx, equals(2.0));

      segment = styleSegments[2];
      expect(segment.color, equals(MaterialPalette.blue.shadeDefault));
      expect(segment.dashPattern, equals([4, 4]));
      expect(segment.domainExtent.start, equals(3));
      expect(segment.domainExtent.end, equals(4));
      expect(segment.strokeWidthPx, equals(2.0));

      expect(series.measureOffsetFn(0), 0);
      expect(series.measureOffsetFn(1), 0);
      expect(series.measureOffsetFn(2), 0);
      expect(series.measureOffsetFn(3), 0);

      // Validate Mobile series.
      series = numericSeriesList[2];

      styleSegments = series.getAttr(styleSegmentsKey);
      expect(styleSegments.length, equals(3));

      segment = segment = styleSegments[0];
      expect(segment.color, equals(MaterialPalette.blue.shadeDefault));
      expect(segment.dashPattern, isNull);
      expect(segment.domainExtent.start, equals(1));
      expect(segment.domainExtent.end, equals(2));
      expect(segment.strokeWidthPx, equals(2.0));

      segment = styleSegments[1];
      expect(segment.color, equals(MaterialPalette.blue.shadeDefault));
      expect(segment.dashPattern, isNull);
      expect(segment.domainExtent.start, equals(2));
      expect(segment.domainExtent.end, equals(3));
      expect(segment.strokeWidthPx, equals(3.0));

      segment = styleSegments[2];
      expect(segment.color, equals(MaterialPalette.blue.shadeDefault));
      expect(segment.dashPattern, isNull);
      expect(segment.domainExtent.start, equals(3));
      expect(segment.domainExtent.end, equals(4));
      expect(segment.strokeWidthPx, equals(4.0));

      expect(series.measureOffsetFn(0), 0);
      expect(series.measureOffsetFn(1), 0);
      expect(series.measureOffsetFn(2), 0);
      expect(series.measureOffsetFn(3), 0);
    });

    test('with numeric data and repeats in style', () {
      var myFakeData = [
        new MyRow(
            'MyCampaign1', 1, 5, MaterialPalette.blue.shadeDefault, null, 2.0),
        new MyRow('MyCampaign2', 2, 25, MaterialPalette.green.shadeDefault,
            null, 2.0),
        new MyRow('MyCampaign3', 3, 100, MaterialPalette.blue.shadeDefault,
            null, 2.0),
        new MyRow('MyCampaign4', 4, 75, MaterialPalette.green.shadeDefault,
            null, 2.0),
        new MyRow(
            'MyCampaign1', 5, 5, MaterialPalette.blue.shadeDefault, null, 2.0),
        new MyRow('MyCampaign2', 6, 25, MaterialPalette.green.shadeDefault,
            null, 2.0),
        new MyRow('MyCampaign3', 7, 100, MaterialPalette.blue.shadeDefault,
            null, 2.0),
        new MyRow('MyCampaign4', 8, 75, MaterialPalette.green.shadeDefault,
            null, 2.0),
      ];

      numericSeriesList = [
        new MutableSeries<int>(new Series<MyRow, int>(
            id: 'Desktop',
            colorFn: (MyRow row, _) => row.color,
            dashPatternFn: (MyRow row, _) => row.dashPattern,
            strokeWidthPxFn: (MyRow row, _) => row.strokeWidthPx,
            domainFn: (dynamic row, _) => row.campaign,
            measureFn: (dynamic row, _) => row.clickCount,
            measureOffsetFn: (_, __) => 0,
            data: myFakeData)),
      ];

      renderer = new LineRenderer<num>(
          config: new LineRendererConfig(strokeWidthPx: 2.0));

      renderer.configureSeries(numericSeriesList);
      renderer.preprocessSeries(numericSeriesList);

      expect(numericSeriesList.length, equals(1));

      // Validate Desktop series.
      var series = numericSeriesList[0];

      var styleSegments = series.getAttr(styleSegmentsKey);
      expect(styleSegments.length, equals(8));

      var segment = styleSegments[0];
      expect(segment.color, equals(MaterialPalette.blue.shadeDefault));
      expect(segment.domainExtent.start, equals(1));
      expect(segment.domainExtent.end, equals(2));

      segment = styleSegments[1];
      expect(segment.color, equals(MaterialPalette.green.shadeDefault));
      expect(segment.domainExtent.start, equals(2));
      expect(segment.domainExtent.end, equals(3));

      segment = styleSegments[2];
      expect(segment.color, equals(MaterialPalette.blue.shadeDefault));
      expect(segment.domainExtent.start, equals(3));
      expect(segment.domainExtent.end, equals(4));

      segment = styleSegments[3];
      expect(segment.color, equals(MaterialPalette.green.shadeDefault));
      expect(segment.domainExtent.start, equals(4));
      expect(segment.domainExtent.end, equals(5));

      segment = styleSegments[4];
      expect(segment.color, equals(MaterialPalette.blue.shadeDefault));
      expect(segment.domainExtent.start, equals(5));
      expect(segment.domainExtent.end, equals(6));

      segment = styleSegments[5];
      expect(segment.color, equals(MaterialPalette.green.shadeDefault));
      expect(segment.domainExtent.start, equals(6));
      expect(segment.domainExtent.end, equals(7));

      segment = styleSegments[6];
      expect(segment.color, equals(MaterialPalette.blue.shadeDefault));
      expect(segment.domainExtent.start, equals(7));
      expect(segment.domainExtent.end, equals(8));

      segment = styleSegments[7];
      expect(segment.color, equals(MaterialPalette.green.shadeDefault));
      expect(segment.domainExtent.start, equals(8));
      expect(segment.domainExtent.end, equals(8));
    });

    test('with ordinal data and simple lines', () {
      renderer = new LineRenderer<String>(
          config: new LineRendererConfig(strokeWidthPx: 2.0));

      renderer.configureSeries(ordinalSeriesList);
      renderer.preprocessSeries(ordinalSeriesList);

      expect(ordinalSeriesList.length, equals(3));

      // Validate Desktop series.
      var series = ordinalSeriesList[0];

      var styleSegments = series.getAttr(styleSegmentsKey);
      expect(styleSegments.length, equals(1));

      var segment = styleSegments[0];
      expect(segment.color, equals(MaterialPalette.blue.shadeDefault));
      expect(segment.dashPattern, isNull);
      expect(segment.domainExtent.start, equals('MyCampaign1'));
      expect(segment.domainExtent.end, equals('MyOtherCampaign'));
      expect(segment.strokeWidthPx, equals(2.0));

      // Validate Tablet series.
      series = ordinalSeriesList[1];

      styleSegments = series.getAttr(styleSegmentsKey);
      expect(styleSegments.length, equals(1));

      segment = styleSegments[0];
      expect(segment.color, equals(MaterialPalette.red.shadeDefault));
      expect(segment.dashPattern, isNull);
      expect(segment.domainExtent.start, equals('MyCampaign1'));
      expect(segment.domainExtent.end, equals('MyOtherCampaign'));
      expect(segment.strokeWidthPx, equals(1.25));

      // Validate Mobile series.
      series = ordinalSeriesList[2];

      styleSegments = series.getAttr(styleSegmentsKey);
      expect(styleSegments.length, equals(1));

      segment = styleSegments[0];
      expect(segment.color, equals(MaterialPalette.green.shadeDefault));
      expect(segment.dashPattern, isNull);
      expect(segment.domainExtent.start, equals('MyCampaign1'));
      expect(segment.domainExtent.end, equals('MyOtherCampaign'));
      expect(segment.strokeWidthPx, equals(3.0));
    });
  });

  group('Line merging', () {
    List<ImmutableSeries<num>> series(List<String> keys) {
      return keys.map((key) => MockImmutableSeries<num>(key)).toList();
    }

    test('simple beginning removal', () {
      final tester = LineRendererTester(LineRenderer<num>());

      tester.setSeriesKeys(['a', 'b', 'c']);
      tester.merge(series(['b', 'c']));

      // The series should still be there so that it can be animated out.
      expect(tester.seriesKeys, equals(['a', 'b', 'c']));
    });

    test('simple middle removal', () {
      final tester = LineRendererTester(LineRenderer<num>());

      tester.setSeriesKeys(['a', 'b', 'c']);
      tester.merge(series(['a', 'c']));

      // The series should still be there so that it can be animated out.
      expect(tester.seriesKeys, equals(['a', 'b', 'c']));
    });

    test('simple end removal', () {
      final tester = LineRendererTester(LineRenderer<num>());

      tester.setSeriesKeys(['a', 'b', 'c']);
      tester.merge(series(['a', 'b']));

      // The series should still be there so that it can be animated out.
      expect(tester.seriesKeys, equals(['a', 'b', 'c']));
    });

    test('simple beginning addition', () {
      final tester = LineRendererTester(LineRenderer<num>());

      tester.setSeriesKeys(['a', 'b', 'c']);
      tester.merge(series(['d', 'a', 'b', 'c']));

      expect(tester.seriesKeys, equals(['d', 'a', 'b', 'c']));
    });

    test('simple middle addition', () {
      final tester = LineRendererTester(LineRenderer<num>());

      tester.setSeriesKeys(['a', 'b', 'c']);
      tester.merge(series(['a', 'd', 'b', 'c']));

      expect(tester.seriesKeys, equals(['a', 'd', 'b', 'c']));
    });

    test('simple end addition', () {
      final tester = LineRendererTester(LineRenderer<num>());

      tester.setSeriesKeys(['a', 'b', 'c']);
      tester.merge(series(['a', 'b', 'c', 'd']));

      expect(tester.seriesKeys, equals(['a', 'b', 'c', 'd']));
    });

    test('replacement begining', () {
      final tester = LineRendererTester(LineRenderer<num>());

      tester.setSeriesKeys(['a', 'b', 'c']);
      tester.merge(series(['d', 'b', 'c']));

      expect(tester.seriesKeys, equals(['a', 'd', 'b', 'c']));
    });

    test('replacement end', () {
      final tester = LineRendererTester(LineRenderer<num>());

      tester.setSeriesKeys(['a', 'b', 'c']);
      tester.merge(series(['a', 'b', 'd']));

      expect(tester.seriesKeys, equals(['a', 'b', 'c', 'd']));
    });

    test('full replacement', () {
      final tester = LineRendererTester(LineRenderer<num>());

      tester.setSeriesKeys(['a', 'b', 'c']);
      tester.merge(series(['d', 'e', 'f']));

      expect(tester.seriesKeys, equals(['a', 'b', 'c', 'd', 'e', 'f']));
    });

    test('mixed replacement', () {
      final tester = LineRendererTester(LineRenderer<num>());

      tester.setSeriesKeys(['a', 'b', 'c', 'd']);
      tester.merge(series(['d', 'a', 'f', 'c']));

      expect(tester.seriesKeys, equals(['d', 'a', 'b', 'f', 'c']));
    });
  });
}
