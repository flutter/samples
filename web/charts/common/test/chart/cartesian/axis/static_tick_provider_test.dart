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

import 'package:charts_common/src/chart/cartesian/axis/static_tick_provider.dart';
import 'package:charts_common/src/chart/cartesian/axis/linear/linear_scale.dart';
import 'package:charts_common/src/chart/cartesian/axis/draw_strategy/base_tick_draw_strategy.dart';
import 'package:charts_common/src/common/graphics_factory.dart';
import 'package:charts_common/src/chart/common/chart_context.dart';
import 'package:charts_common/src/chart/cartesian/axis/scale.dart';
import 'package:charts_common/src/chart/cartesian/axis/spec/tick_spec.dart';
import 'package:charts_common/src/chart/cartesian/axis/tick_formatter.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockChartContext extends Mock implements ChartContext {}

class MockGraphicsFactory extends Mock implements GraphicsFactory {}

class MockNumericTickFormatter extends Mock implements TickFormatter<num> {}

class FakeNumericTickFormatter implements TickFormatter<num> {
  int calledTimes = 0;

  @override
  List<String> format(List<num> tickValues, Map<num, String> cache,
      {num stepSize}) {
    calledTimes += 1;

    return tickValues.map((value) => value.toString()).toList();
  }
}

class MockDrawStrategy extends Mock implements BaseTickDrawStrategy {}

void main() {
  ChartContext context;
  GraphicsFactory graphicsFactory;
  TickFormatter formatter;
  BaseTickDrawStrategy drawStrategy;
  LinearScale scale;

  setUp(() {
    context = new MockChartContext();
    graphicsFactory = new MockGraphicsFactory();
    formatter = new MockNumericTickFormatter();
    drawStrategy = new MockDrawStrategy();
    scale = new LinearScale()..range = new ScaleOutputExtent(0, 300);
  });

  group('scale is extended with static tick values', () {
    test('values extend existing domain values', () {
      final tickProvider = new StaticTickProvider<num>([
        new TickSpec<num>(50, label: '50'),
        new TickSpec<num>(75, label: '75'),
        new TickSpec<num>(100, label: '100'),
      ]);

      scale.addDomain(60);
      scale.addDomain(80);

      expect(scale.dataExtent.min, equals(60));
      expect(scale.dataExtent.max, equals(80));

      tickProvider.getTicks(
          context: context,
          graphicsFactory: graphicsFactory,
          scale: scale,
          formatter: formatter,
          formatterValueCache: <num, String>{},
          tickDrawStrategy: drawStrategy,
          orientation: null);

      expect(scale.dataExtent.min, equals(50));
      expect(scale.dataExtent.max, equals(100));
    });

    test('values within data extent', () {
      final tickProvider = new StaticTickProvider<num>([
        new TickSpec<num>(50, label: '50'),
        new TickSpec<num>(75, label: '75'),
        new TickSpec<num>(100, label: '100'),
      ]);

      scale.addDomain(0);
      scale.addDomain(150);

      expect(scale.dataExtent.min, equals(0));
      expect(scale.dataExtent.max, equals(150));

      tickProvider.getTicks(
          context: context,
          graphicsFactory: graphicsFactory,
          scale: scale,
          formatter: formatter,
          formatterValueCache: <num, String>{},
          tickDrawStrategy: drawStrategy,
          orientation: null);

      expect(scale.dataExtent.min, equals(0));
      expect(scale.dataExtent.max, equals(150));
    });
  });

  group('formatter', () {
    test('is not called when all ticks have labels', () {
      final tickProvider = new StaticTickProvider<num>([
        new TickSpec<num>(50, label: '50'),
        new TickSpec<num>(75, label: '75'),
        new TickSpec<num>(100, label: '100'),
      ]);

      final fakeFormatter = new FakeNumericTickFormatter();

      tickProvider.getTicks(
          context: context,
          graphicsFactory: graphicsFactory,
          scale: scale,
          formatter: fakeFormatter,
          formatterValueCache: <num, String>{},
          tickDrawStrategy: drawStrategy,
          orientation: null);

      expect(fakeFormatter.calledTimes, equals(0));
    });

    test('is called when one ticks does not have label', () {
      final tickProvider = new StaticTickProvider<num>([
        new TickSpec<num>(50, label: '50'),
        new TickSpec<num>(75),
        new TickSpec<num>(100, label: '100'),
      ]);

      final fakeFormatter = new FakeNumericTickFormatter();

      tickProvider.getTicks(
          context: context,
          graphicsFactory: graphicsFactory,
          scale: scale,
          formatter: fakeFormatter,
          formatterValueCache: <num, String>{},
          tickDrawStrategy: drawStrategy,
          orientation: null);

      expect(fakeFormatter.calledTimes, equals(1));
    });

    test('is called when all ticks do not have labels', () {
      final tickProvider = new StaticTickProvider<num>([
        new TickSpec<num>(50),
        new TickSpec<num>(75),
        new TickSpec<num>(100),
      ]);

      final fakeFormatter = new FakeNumericTickFormatter();

      tickProvider.getTicks(
          context: context,
          graphicsFactory: graphicsFactory,
          scale: scale,
          formatter: fakeFormatter,
          formatterValueCache: <num, String>{},
          tickDrawStrategy: drawStrategy,
          orientation: null);

      expect(fakeFormatter.calledTimes, equals(1));
    });
  });
}
