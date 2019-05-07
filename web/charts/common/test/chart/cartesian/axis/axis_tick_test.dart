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

import 'package:charts_common/src/common/text_element.dart';
import 'package:charts_common/src/common/text_measurement.dart';
import 'package:charts_common/src/common/text_style.dart';
import 'package:charts_common/src/chart/cartesian/axis/axis_tick.dart';
import 'package:charts_common/src/chart/cartesian/axis/tick.dart';
import 'package:test/test.dart';

/// Fake [TextElement] for testing.
class FakeTextElement implements TextElement {
  final String text;
  double opacity;

  TextMeasurement measurement;
  TextStyle textStyle;
  int maxWidth;
  MaxWidthStrategy maxWidthStrategy;
  TextDirection textDirection;

  FakeTextElement(this.text);
}

/// Helper to create a tick for testing.
Tick<String> _createTestTick(String value, double locationPx) {
  return new Tick(
      value: value,
      textElement: new FakeTextElement(value),
      locationPx: locationPx);
}

void _verify(Tick<String> tick, {double location, double opacity}) {
  expect(tick.locationPx, equals(location));
  expect((tick.textElement as FakeTextElement).opacity, equals(opacity));
}

void main() {
  // Tick first render.
  test('tick created for the first time', () {
    final tick = new AxisTicks(_createTestTick('a', 100.0));

    // Animate in the tick, there was no previous position to animated in from
    // so the tick appears in the target immediately.
    tick.setCurrentTick(0.0);
    _verify(tick, location: 100.0, opacity: 1.0);

    tick.setCurrentTick(0.25);
    _verify(tick, location: 100.0, opacity: 1.0);

    tick.setCurrentTick(0.75);
    _verify(tick, location: 100.0, opacity: 1.0);

    tick.setCurrentTick(1.0);
    _verify(tick, location: 100.0, opacity: 1.0);
  });

  // Tick that is animated in.
  test('tick created with a previous location', () {
    final tick = new AxisTicks(_createTestTick('a', 200.0))
      ..animateInFrom(100.0);

    tick.setCurrentTick(0.0);
    _verify(tick, location: 100.0, opacity: 0.0);

    tick.setCurrentTick(0.25);
    _verify(tick, location: 125.0, opacity: 0.25);

    tick.setCurrentTick(0.75);
    _verify(tick, location: 175.0, opacity: 0.75);

    tick.setCurrentTick(1.0);
    _verify(tick, location: 200.0, opacity: 1.0);
  });

  // Tick that is being animated out.
  test('tick is animated in and then out', () {
    final tick = new AxisTicks(_createTestTick('a', 100.0));

    // Animate in the tick, there was no previous position to animated in from
    // so the tick appears in the target immediately.
    tick.setCurrentTick(0.25);
    _verify(tick, location: 100.0, opacity: 1.0);

    // Change to animate the tick out.
    tick.animateOut(0.0);

    expect(tick.markedForRemoval, isTrue);

    tick.setCurrentTick(0.0);
    _verify(tick, location: 100.0, opacity: 1.0);

    tick.setCurrentTick(0.25);
    _verify(tick, location: 75.0, opacity: 0.75);

    tick.setCurrentTick(0.75);
    _verify(tick, location: 25.0, opacity: 0.25);

    tick.setCurrentTick(1.0);
    _verify(tick, location: 0.0, opacity: 0.0);
  });

  test('tick target change after reaching target', () {
    final tick = new AxisTicks(_createTestTick('a', 100.0));

    // Animate in the tick.
    tick.setCurrentTick(1.0);
    _verify(tick, location: 100.0, opacity: 1.0);

    tick.setNewTarget(200.0);

    expect(tick.markedForRemoval, isFalse);

    tick.setCurrentTick(0.0);
    _verify(tick, location: 100.0, opacity: 1.0);

    tick.setCurrentTick(0.25);
    _verify(tick, location: 125.0, opacity: 1.0);

    tick.setCurrentTick(0.75);
    _verify(tick, location: 175.0, opacity: 1.0);

    tick.setCurrentTick(1.0);
    _verify(tick, location: 200.0, opacity: 1.0);
  });

  test('tick target change before reaching initial target', () {
    final tick = new AxisTicks(_createTestTick('a', 400.0))..animateInFrom(0.0);

    // Animate in the tick.
    tick.setCurrentTick(0.25);
    _verify(tick, location: 100.0, opacity: 0.25);

    tick.setNewTarget(200.0);

    expect(tick.markedForRemoval, isFalse);

    tick.setCurrentTick(0.0);
    _verify(tick, location: 100.0, opacity: 0.25);

    tick.setCurrentTick(0.25);
    _verify(tick, location: 125.0, opacity: 0.4375);

    tick.setCurrentTick(0.75);
    _verify(tick, location: 175.0, opacity: 0.8125);

    tick.setCurrentTick(1.0);
    _verify(tick, location: 200.0, opacity: 1.0);
  });

  test('tick target animate out before reaching initial target', () {
    final tick = new AxisTicks(_createTestTick('a', 400.0))..animateInFrom(0.0);

    // Animate in the tick.
    tick.setCurrentTick(0.25);
    _verify(tick, location: 100.0, opacity: 0.25);

    tick.animateOut(200.0);

    expect(tick.markedForRemoval, isTrue);

    tick.setCurrentTick(0.0);
    _verify(tick, location: 100.0, opacity: 0.25);

    tick.setCurrentTick(0.25);
    _verify(tick, location: 125.0, opacity: 0.1875);

    tick.setCurrentTick(0.75);
    _verify(tick, location: 175.0, opacity: 0.0625);

    tick.setCurrentTick(1.0);
    _verify(tick, location: 200.0, opacity: 0.0);
  });
}
