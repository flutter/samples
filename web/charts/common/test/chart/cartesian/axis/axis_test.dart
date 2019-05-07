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

import 'package:charts_common/src/chart/cartesian/axis/axis.dart';
import 'package:charts_common/src/chart/cartesian/axis/draw_strategy/tick_draw_strategy.dart';
import 'package:charts_common/src/chart/cartesian/axis/scale.dart';
import 'package:charts_common/src/chart/cartesian/axis/spec/tick_spec.dart';
import 'package:charts_common/src/chart/cartesian/axis/static_tick_provider.dart';
import 'package:charts_common/src/common/graphics_factory.dart';
import 'package:charts_common/src/common/text_element.dart';

import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockTickDrawStrategy extends Mock implements TickDrawStrategy<num> {}

class MockGraphicsFactory extends Mock implements GraphicsFactory {
  TextElement createTextElement(String _) {
    return MockTextElement();
  }
}

class MockTextElement extends Mock implements TextElement {}

StaticTickProvider<num> _createProvider(List<num> values) =>
    StaticTickProvider<num>(values.map((v) => TickSpec(v)).toList());

void main() {
  test('changing first tick only', () {
    var axis = NumericAxis(
      tickProvider: _createProvider([1, 10]),
    );

    var tester = AxisTester(axis);
    axis.tickDrawStrategy = MockTickDrawStrategy();
    axis.graphicsFactory = MockGraphicsFactory();
    tester.scale.range = new ScaleOutputExtent(0, 300);

    axis.updateTicks();

    axis.tickProvider = _createProvider([5, 10]);
    axis.updateTicks();

    // The old value should still be there as it gets animated out, but the
    // values should be sorted by their position.
    expect(tester.axisValues, equals([1, 5, 10]));
  });
}
