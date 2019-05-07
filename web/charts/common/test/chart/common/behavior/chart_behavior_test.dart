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

import 'package:charts_common/src/chart/common/series_renderer.dart';
import 'package:mockito/mockito.dart';

import 'package:charts_common/src/chart/common/base_chart.dart';
import 'package:charts_common/src/chart/common/behavior/chart_behavior.dart';
import 'package:charts_common/src/chart/common/datum_details.dart';
import 'package:charts_common/src/chart/common/selection_model/selection_model.dart';

import 'package:test/test.dart';

class MockBehavior extends Mock implements ChartBehavior<String> {}

class ParentBehavior implements ChartBehavior<String> {
  final ChartBehavior<String> child;

  ParentBehavior(this.child);

  String get role => null;

  @override
  void attachTo(BaseChart chart) {
    chart.addBehavior(child);
  }

  @override
  void removeFrom(BaseChart chart) {
    chart.removeBehavior(child);
  }
}

class ConcreteChart extends BaseChart<String> {
  @override
  SeriesRenderer<String> makeDefaultRenderer() => null;

  @override
  List<DatumDetails<String>> getDatumDetails(SelectionModelType _) => null;
}

void main() {
  ConcreteChart chart;
  MockBehavior namedBehavior;
  MockBehavior unnamedBehavior;

  setUp(() {
    chart = new ConcreteChart();

    namedBehavior = new MockBehavior();
    when(namedBehavior.role).thenReturn('foo');

    unnamedBehavior = new MockBehavior();
    when(unnamedBehavior.role).thenReturn(null);
  });

  group('Attach & Detach', () {
    test('attach is called once', () {
      chart.addBehavior(namedBehavior);
      verify(namedBehavior.attachTo(chart)).called(1);

      verify(namedBehavior.role);
      verifyNoMoreInteractions(namedBehavior);
    });

    test('deteach is called once', () {
      chart.addBehavior(namedBehavior);
      verify(namedBehavior.attachTo(chart)).called(1);

      chart.removeBehavior(namedBehavior);
      verify(namedBehavior.removeFrom(chart)).called(1);

      verify(namedBehavior.role);
      verifyNoMoreInteractions(namedBehavior);
    });

    test('detach is called when name is reused', () {
      final otherBehavior = new MockBehavior();
      when(otherBehavior.role).thenReturn('foo');

      chart.addBehavior(namedBehavior);
      verify(namedBehavior.attachTo(chart)).called(1);

      chart.addBehavior(otherBehavior);
      verify(namedBehavior.removeFrom(chart)).called(1);
      verify(otherBehavior.attachTo(chart)).called(1);

      verify(namedBehavior.role);
      verify(otherBehavior.role);
      verifyNoMoreInteractions(namedBehavior);
      verifyNoMoreInteractions(otherBehavior);
    });

    test('detach is not called when name is null', () {
      chart.addBehavior(namedBehavior);
      verify(namedBehavior.attachTo(chart)).called(1);

      chart.addBehavior(unnamedBehavior);
      verify(unnamedBehavior.attachTo(chart)).called(1);

      verify(namedBehavior.role);
      verify(unnamedBehavior.role);
      verifyNoMoreInteractions(namedBehavior);
      verifyNoMoreInteractions(unnamedBehavior);
    });

    test('detach is not called when name is different', () {
      final otherBehavior = new MockBehavior();
      when(otherBehavior.role).thenReturn('bar');

      chart.addBehavior(namedBehavior);
      verify(namedBehavior.attachTo(chart)).called(1);

      chart.addBehavior(otherBehavior);
      verify(otherBehavior.attachTo(chart)).called(1);

      verify(namedBehavior.role);
      verify(otherBehavior.role);
      verifyNoMoreInteractions(namedBehavior);
      verifyNoMoreInteractions(otherBehavior);
    });

    test('behaviors are removed when chart is destroyed', () {
      final parentBehavior = new ParentBehavior(unnamedBehavior);

      chart.addBehavior(parentBehavior);
      // The parent should add the child behavoir.
      verify(unnamedBehavior.attachTo(chart)).called(1);

      chart.destroy();

      // The parent should remove the child behavior.
      verify(unnamedBehavior.removeFrom(chart)).called(1);

      // Remove should only be called once and shouldn't trigger a concurrent
      // modification exception.
      verify(unnamedBehavior.role);
      verifyNoMoreInteractions(unnamedBehavior);
    });
  });
}
