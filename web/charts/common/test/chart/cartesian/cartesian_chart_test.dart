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

import 'package:charts_common/src/chart/cartesian/cartesian_chart.dart';
import 'package:charts_common/src/chart/cartesian/axis/spec/date_time_axis_spec.dart';
import 'package:charts_common/src/chart/cartesian/axis/spec/ordinal_axis_spec.dart';
import 'package:charts_common/src/chart/cartesian/axis/spec/numeric_axis_spec.dart';
import 'package:charts_common/src/chart/common/chart_context.dart';
import 'package:charts_common/src/chart/time_series/time_series_chart.dart';
import 'package:charts_common/src/common/graphics_factory.dart';

import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockContext extends Mock implements ChartContext {}

class MockGraphicsFactory extends Mock implements GraphicsFactory {}

class FakeNumericChart extends NumericCartesianChart {
  FakeNumericChart() {
    context = new MockContext();
    graphicsFactory = new MockGraphicsFactory();
  }

  @override
  void initDomainAxis() {
    // Purposely bypass the renderer code.
  }
}

class FakeOrdinalChart extends OrdinalCartesianChart {
  FakeOrdinalChart() {
    context = new MockContext();
    graphicsFactory = new MockGraphicsFactory();
  }

  @override
  void initDomainAxis() {
    // Purposely bypass the renderer code.
  }
}

class FakeTimeSeries extends TimeSeriesChart {
  FakeTimeSeries() {
    context = new MockContext();
    graphicsFactory = new MockGraphicsFactory();
  }

  @override
  void initDomainAxis() {
    // Purposely bypass the renderer code.
  }
}

void main() {
  group('Axis reset with new axis spec', () {
    test('for ordinal chart', () {
      final chart = new FakeOrdinalChart();
      chart.configurationChanged();
      final domainAxis = chart.domainAxis;
      expect(domainAxis, isNotNull);

      chart.domainAxisSpec = new OrdinalAxisSpec();
      chart.configurationChanged();

      expect(domainAxis, isNot(chart.domainAxis));
    });

    test('for numeric chart', () {
      final chart = new FakeNumericChart();
      chart.configurationChanged();
      final domainAxis = chart.domainAxis;
      expect(domainAxis, isNotNull);

      chart.domainAxisSpec = new NumericAxisSpec();
      chart.configurationChanged();

      expect(domainAxis, isNot(chart.domainAxis));
    });

    test('for time series chart', () {
      final chart = new FakeTimeSeries();
      chart.configurationChanged();
      final domainAxis = chart.domainAxis;
      expect(domainAxis, isNotNull);

      chart.domainAxisSpec = new DateTimeAxisSpec();
      chart.configurationChanged();

      expect(domainAxis, isNot(chart.domainAxis));
    });
  });
}
