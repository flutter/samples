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

import 'package:charts_common/src/chart/cartesian/axis/scale.dart';
import 'package:charts_common/src/chart/cartesian/axis/simple_ordinal_scale.dart';

import 'package:test/test.dart';

const EPSILON = 0.001;

void main() {
  SimpleOrdinalScale scale;

  setUp(() {
    scale = new SimpleOrdinalScale();
    scale.addDomain('a');
    scale.addDomain('b');
    scale.addDomain('c');
    scale.addDomain('d');

    scale.range = new ScaleOutputExtent(2000, 1000);
  });

  group('conversion', () {
    test('with duplicate keys', () {
      scale.addDomain('c');
      scale.addDomain('a');

      // Current RangeBandConfig.styleAssignedPercent sets size to 0.65 percent.
      expect(scale.rangeBand, closeTo(250 * 0.65, EPSILON));
      expect(scale['a'], closeTo(2000 - 125, EPSILON));
      expect(scale['b'], closeTo(2000 - 375, EPSILON));
      expect(scale['c'], closeTo(2000 - 625, EPSILON));
    });

    test('invalid domain does not throw exception', () {
      expect(scale['e'], 0);
    });

    test('invalid domain can translate is false', () {
      expect(scale.canTranslate('e'), isFalse);
    });
  });

  group('copy', () {
    test('can convert domain', () {
      final copied = scale.copy();
      expect(copied['c'], closeTo(2000 - 625, EPSILON));
    });

    test('does not affect original', () {
      final copied = scale.copy();
      copied.addDomain('bar');

      expect(copied.canTranslate('bar'), isTrue);
      expect(scale.canTranslate('bar'), isFalse);
    });
  });

  group('reset', () {
    test('clears domains', () {
      scale.resetDomain();
      scale.addDomain('foo');
      scale.addDomain('bar');

      expect(scale['foo'], closeTo(2000 - 250, EPSILON));
    });
  });

  group('set RangeBandConfig', () {
    test('fixed pixel range band changes range band', () {
      scale.rangeBandConfig = new RangeBandConfig.fixedPixel(123.0);

      expect(scale.rangeBand, closeTo(123.0, EPSILON));

      // Adding another domain to ensure it still doesn't change.
      scale.addDomain('foo');
      expect(scale.rangeBand, closeTo(123.0, EPSILON));
    });

    test('percent range band changes range band', () {
      scale.rangeBandConfig = new RangeBandConfig.percentOfStep(0.5);
      // 125 = 0.5f * 1000pixels / 4domains
      expect(scale.rangeBand, closeTo(125.0, EPSILON));
    });

    test('space from step changes range band', () {
      scale.rangeBandConfig =
          new RangeBandConfig.fixedPixelSpaceBetweenStep(50.0);
      // 200 = 1000pixels / 4domains) - 50
      expect(scale.rangeBand, closeTo(200.0, EPSILON));
    });

    test('fixed domain throws argument exception', () {
      expect(() => scale.rangeBandConfig = new RangeBandConfig.fixedDomain(5.0),
          throwsArgumentError);
    });

    test('type of none throws argument exception', () {
      expect(() => scale.rangeBandConfig = new RangeBandConfig.none(),
          throwsArgumentError);
    });

    test('set to null throws argument exception', () {
      expect(() => scale.rangeBandConfig = null, throwsArgumentError);
    });
  });

  group('set step size config', () {
    test('to null does not throw', () {
      scale.stepSizeConfig = null;
    });

    test('to auto does not throw', () {
      scale.stepSizeConfig = new StepSizeConfig.auto();
    });

    test('to fixed domain throw arugment exception', () {
      expect(() => scale.stepSizeConfig = new StepSizeConfig.fixedDomain(1.0),
          throwsArgumentError);
    });

    test('to fixed pixel throw arugment exception', () {
      expect(() => scale.stepSizeConfig = new StepSizeConfig.fixedPixels(1.0),
          throwsArgumentError);
    });
  });

  group('set range persists', () {
    test('', () {
      expect(scale.range.start, equals(2000));
      expect(scale.range.end, equals(1000));
      expect(scale.range.min, equals(1000));
      expect(scale.range.max, equals(2000));
      expect(scale.rangeWidth, equals(1000));

      expect(scale.isRangeValueWithinViewport(1500.0), isTrue);
      expect(scale.isRangeValueWithinViewport(1000.0), isTrue);
      expect(scale.isRangeValueWithinViewport(2000.0), isTrue);

      expect(scale.isRangeValueWithinViewport(500.0), isFalse);
      expect(scale.isRangeValueWithinViewport(2500.0), isFalse);
    });
  });

  group('scale factor', () {
    test('sets', () {
      scale.setViewportSettings(2.0, -700.0);

      expect(scale.viewportScalingFactor, closeTo(2.0, EPSILON));
      expect(scale.viewportTranslatePx, closeTo(-700.0, EPSILON));
    });

    test('rangeband is scaled', () {
      scale.setViewportSettings(2.0, -700.0);
      scale.rangeBandConfig = new RangeBandConfig.percentOfStep(1.0);

      expect(scale.rangeBand, closeTo(500.0, EPSILON));
    });

    test('translate to pixels is scaled', () {
      scale.setViewportSettings(2.0, -700.0);
      scale.rangeBandConfig = new RangeBandConfig.percentOfStep(1.0);
      scale.range = new ScaleOutputExtent(1000, 2000);

      final scaledStepWidth = 500.0;
      final scaledInitialShift = 250.0;

      expect(scale['a'], closeTo(1000 + scaledInitialShift - 700, EPSILON));

      expect(scale['b'],
          closeTo(1000 + scaledInitialShift - 700 + scaledStepWidth, EPSILON));
    });

    test('only b and c should be within the viewport', () {
      scale.setViewportSettings(2.0, -700.0);
      scale.rangeBandConfig = new RangeBandConfig.percentOfStep(1.0);
      scale.range = new ScaleOutputExtent(1000, 2000);

      expect(scale.compareDomainValueToViewport('a'), equals(-1));
      expect(scale.compareDomainValueToViewport('c'), equals(0));
      expect(scale.compareDomainValueToViewport('d'), equals(1));
      expect(scale.compareDomainValueToViewport('f'), isNot(0));
    });
  });

  group('viewport', () {
    test('set adjust scale to show viewport', () {
      scale.range = new ScaleOutputExtent(1000, 2000);
      scale.rangeBandConfig = new RangeBandConfig.percentOfStep(0.5);
      scale.setViewport(2, 'b');

      expect(scale['a'], closeTo(750, EPSILON));
      expect(scale['b'], closeTo(1250, EPSILON));
      expect(scale['c'], closeTo(1750, EPSILON));
      expect(scale['d'], closeTo(2250, EPSILON));
      expect(scale.compareDomainValueToViewport('a'), equals(-1));
      expect(scale.compareDomainValueToViewport('b'), equals(0));
      expect(scale.compareDomainValueToViewport('c'), equals(0));
      expect(scale.compareDomainValueToViewport('d'), equals(1));
    });

    test('illegal to set window size less than one', () {
      expect(() => scale.setViewport(0, 'b'), throwsArgumentError);
    });

    test('set starting value if starting domain is not in domain list', () {
      scale.range = new ScaleOutputExtent(1000, 2000);
      scale.rangeBandConfig = new RangeBandConfig.percentOfStep(0.5);
      scale.setViewport(2, 'f');

      expect(scale['a'], closeTo(1250, EPSILON));
      expect(scale['b'], closeTo(1750, EPSILON));
      expect(scale['c'], closeTo(2250, EPSILON));
      expect(scale['d'], closeTo(2750, EPSILON));
    });

    test('get size returns number of full steps that fit scale range', () {
      scale.range = new ScaleOutputExtent(1000, 2000);

      scale.setViewportSettings(2.0, 0.0);
      expect(scale.viewportDataSize, equals(2));

      scale.setViewportSettings(5.0, 0.0);
      expect(scale.viewportDataSize, equals(0));
    });

    test('get starting viewport gets first fully visible domain', () {
      scale.range = new ScaleOutputExtent(1000, 2000);

      scale.setViewportSettings(2.0, -500.0);
      expect(scale.viewportStartingDomain, equals('b'));

      scale.setViewportSettings(2.0, -100.0);
      expect(scale.viewportStartingDomain, equals('b'));
    });
  });
}
