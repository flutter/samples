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
import 'package:charts_common/src/chart/common/chart_context.dart';
import 'package:charts_common/src/chart/common/processed_series.dart';
import 'package:charts_common/src/chart/cartesian/axis/axis.dart';
import 'package:charts_common/src/chart/common/behavior/a11y/domain_a11y_explore_behavior.dart';
import 'package:charts_common/src/chart/cartesian/cartesian_chart.dart';
import 'package:charts_common/src/data/series.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockContext extends Mock implements ChartContext {}

class MockAxis extends Mock implements Axis<String> {}

class FakeCartesianChart extends CartesianChart<String> {
  @override
  Rectangle<int> drawAreaBounds;

  void callFireOnPostprocess(List<MutableSeries<String>> seriesList) {
    fireOnPostprocess(seriesList);
  }

  @override
  initDomainAxis() {}
}

void main() {
  FakeCartesianChart chart;
  DomainA11yExploreBehavior<String> behavior;
  MockAxis domainAxis;

  MutableSeries<String> _series1;
  final _s1D1 = new MyRow('s1d1', 11, 'a11yd1');
  final _s1D2 = new MyRow('s1d2', 12, 'a11yd2');
  final _s1D3 = new MyRow('s1d3', 13, 'a11yd3');

  setUp(() {
    chart = new FakeCartesianChart()
      ..drawAreaBounds = new Rectangle(50, 20, 150, 80);

    behavior = new DomainA11yExploreBehavior<String>(
        vocalizationCallback: domainVocalization);
    behavior.attachTo(chart);

    domainAxis = new MockAxis();
    _series1 = new MutableSeries(new Series<MyRow, String>(
      id: 's1',
      data: [_s1D1, _s1D2, _s1D3],
      domainFn: (MyRow row, _) => row.campaign,
      measureFn: (MyRow row, _) => row.count,
    ))
      ..setAttr(domainAxisKey, domainAxis);
  });

  test('creates nodes for vertically drawn charts', () {
    // A LTR chart
    final context = new MockContext();
    when(context.chartContainerIsRtl).thenReturn(false);
    when(context.isRtl).thenReturn(false);
    chart.context = context;
    // Drawn vertically
    chart.vertical = true;
    // Set step size of 50, which should be the width of the bounding box
    when(domainAxis.stepSize).thenReturn(50.0);
    when(domainAxis.getLocation('s1d1')).thenReturn(75.0);
    when(domainAxis.getLocation('s1d2')).thenReturn(125.0);
    when(domainAxis.getLocation('s1d3')).thenReturn(175.0);
    // Call fire on post process for the behavior to get the series list.
    chart.callFireOnPostprocess([_series1]);

    final nodes = behavior.createA11yNodes();

    expect(nodes, hasLength(3));
    expect(nodes[0].label, equals('s1d1'));
    expect(nodes[0].boundingBox, equals(new Rectangle(50, 20, 50, 80)));
    expect(nodes[1].label, equals('s1d2'));
    expect(nodes[1].boundingBox, equals(new Rectangle(100, 20, 50, 80)));
    expect(nodes[2].label, equals('s1d3'));
    expect(nodes[2].boundingBox, equals(new Rectangle(150, 20, 50, 80)));
  });

  test('creates nodes for vertically drawn RTL charts', () {
    // A RTL chart
    final context = new MockContext();
    when(context.chartContainerIsRtl).thenReturn(true);
    when(context.isRtl).thenReturn(true);
    chart.context = context;
    // Drawn vertically
    chart.vertical = true;
    // Set step size of 50, which should be the width of the bounding box
    when(domainAxis.stepSize).thenReturn(50.0);
    when(domainAxis.getLocation('s1d1')).thenReturn(175.0);
    when(domainAxis.getLocation('s1d2')).thenReturn(125.0);
    when(domainAxis.getLocation('s1d3')).thenReturn(75.0);
    // Call fire on post process for the behavior to get the series list.
    chart.callFireOnPostprocess([_series1]);

    final nodes = behavior.createA11yNodes();

    expect(nodes, hasLength(3));
    expect(nodes[0].label, equals('s1d1'));
    expect(nodes[0].boundingBox, equals(new Rectangle(150, 20, 50, 80)));
    expect(nodes[1].label, equals('s1d2'));
    expect(nodes[1].boundingBox, equals(new Rectangle(100, 20, 50, 80)));
    expect(nodes[2].label, equals('s1d3'));
    expect(nodes[2].boundingBox, equals(new Rectangle(50, 20, 50, 80)));
  });

  test('creates nodes for horizontally drawn charts', () {
    // A LTR chart
    final context = new MockContext();
    when(context.chartContainerIsRtl).thenReturn(false);
    when(context.isRtl).thenReturn(false);
    chart.context = context;
    // Drawn horizontally
    chart.vertical = false;
    // Set step size of 20, which should be the height of the bounding box
    when(domainAxis.stepSize).thenReturn(20.0);
    when(domainAxis.getLocation('s1d1')).thenReturn(30.0);
    when(domainAxis.getLocation('s1d2')).thenReturn(50.0);
    when(domainAxis.getLocation('s1d3')).thenReturn(70.0);
    // Call fire on post process for the behavior to get the series list.
    chart.callFireOnPostprocess([_series1]);

    final nodes = behavior.createA11yNodes();

    expect(nodes, hasLength(3));
    expect(nodes[0].label, equals('s1d1'));
    expect(nodes[0].boundingBox, equals(new Rectangle(50, 20, 150, 20)));
    expect(nodes[1].label, equals('s1d2'));
    expect(nodes[1].boundingBox, equals(new Rectangle(50, 40, 150, 20)));
    expect(nodes[2].label, equals('s1d3'));
    expect(nodes[2].boundingBox, equals(new Rectangle(50, 60, 150, 20)));
  });

  test('creates nodes for horizontally drawn RTL charts', () {
    // A LTR chart
    final context = new MockContext();
    when(context.chartContainerIsRtl).thenReturn(true);
    when(context.isRtl).thenReturn(true);
    chart.context = context;
    // Drawn horizontally
    chart.vertical = false;
    // Set step size of 20, which should be the height of the bounding box
    when(domainAxis.stepSize).thenReturn(20.0);
    when(domainAxis.getLocation('s1d1')).thenReturn(30.0);
    when(domainAxis.getLocation('s1d2')).thenReturn(50.0);
    when(domainAxis.getLocation('s1d3')).thenReturn(70.0);
    // Call fire on post process for the behavior to get the series list.
    chart.callFireOnPostprocess([_series1]);

    final nodes = behavior.createA11yNodes();

    expect(nodes, hasLength(3));
    expect(nodes[0].label, equals('s1d1'));
    expect(nodes[0].boundingBox, equals(new Rectangle(50, 20, 150, 20)));
    expect(nodes[1].label, equals('s1d2'));
    expect(nodes[1].boundingBox, equals(new Rectangle(50, 40, 150, 20)));
    expect(nodes[2].label, equals('s1d3'));
    expect(nodes[2].boundingBox, equals(new Rectangle(50, 60, 150, 20)));
  });

  test('nodes ordered correctly with a series missing a domain', () {
    // A LTR chart
    final context = new MockContext();
    when(context.chartContainerIsRtl).thenReturn(false);
    when(context.isRtl).thenReturn(false);
    chart.context = context;
    // Drawn vertically
    chart.vertical = true;
    // Set step size of 50, which should be the width of the bounding box
    when(domainAxis.stepSize).thenReturn(50.0);
    when(domainAxis.getLocation('s1d1')).thenReturn(75.0);
    when(domainAxis.getLocation('s1d2')).thenReturn(125.0);
    when(domainAxis.getLocation('s1d3')).thenReturn(175.0);
    // Create a series with a missing domain
    final seriesWithMissingDomain = new MutableSeries(new Series<MyRow, String>(
      id: 'm1',
      data: [_s1D1, _s1D3],
      domainFn: (MyRow row, _) => row.campaign,
      measureFn: (MyRow row, _) => row.count,
    ))
      ..setAttr(domainAxisKey, domainAxis);

    // Call fire on post process for the behavior to get the series list.
    chart.callFireOnPostprocess([seriesWithMissingDomain, _series1]);

    final nodes = behavior.createA11yNodes();

    expect(nodes, hasLength(3));
    expect(nodes[0].label, equals('s1d1'));
    expect(nodes[0].boundingBox, equals(new Rectangle(50, 20, 50, 80)));
    expect(nodes[1].label, equals('s1d2'));
    expect(nodes[1].boundingBox, equals(new Rectangle(100, 20, 50, 80)));
    expect(nodes[2].label, equals('s1d3'));
    expect(nodes[2].boundingBox, equals(new Rectangle(150, 20, 50, 80)));
  });

  test('creates nodes with minimum width', () {
    // A behavior with minimum width of 50
    final behaviorWithMinWidth =
        new DomainA11yExploreBehavior<String>(minimumWidth: 50.0);
    behaviorWithMinWidth.attachTo(chart);

    // A LTR chart
    final context = new MockContext();
    when(context.chartContainerIsRtl).thenReturn(false);
    when(context.isRtl).thenReturn(false);
    chart.context = context;
    // Drawn vertically
    chart.vertical = true;
    // Return a step size of 20, which is less than the minimum width.
    // Expect the results to use the minimum width of 50 instead.
    when(domainAxis.stepSize).thenReturn(20.0);
    when(domainAxis.getLocation('s1d1')).thenReturn(75.0);
    when(domainAxis.getLocation('s1d2')).thenReturn(125.0);
    when(domainAxis.getLocation('s1d3')).thenReturn(175.0);
    // Call fire on post process for the behavior to get the series list.
    chart.callFireOnPostprocess([_series1]);

    final nodes = behaviorWithMinWidth.createA11yNodes();

    expect(nodes, hasLength(3));
    expect(nodes[0].label, equals('s1d1'));
    expect(nodes[0].boundingBox, equals(new Rectangle(50, 20, 50, 80)));
    expect(nodes[1].label, equals('s1d2'));
    expect(nodes[1].boundingBox, equals(new Rectangle(100, 20, 50, 80)));
    expect(nodes[2].label, equals('s1d3'));
    expect(nodes[2].boundingBox, equals(new Rectangle(150, 20, 50, 80)));
  });
}

class MyRow {
  final String campaign;
  final int count;
  final String a11yDescription;
  MyRow(this.campaign, this.count, this.a11yDescription);
}
