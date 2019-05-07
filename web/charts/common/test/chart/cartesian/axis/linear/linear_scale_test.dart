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

import 'package:charts_common/src/chart/cartesian/axis/numeric_extents.dart'
    show NumericExtents;
import 'package:charts_common/src/chart/cartesian/axis/linear/linear_scale.dart';
import 'package:charts_common/src/chart/cartesian/axis/scale.dart'
    show RangeBandConfig, ScaleOutputExtent, StepSizeConfig;

import 'package:test/test.dart';

const EPSILON = 0.001;

void main() {
  group('Stacking bars', () {
    test('basic apply survives copy and reset', () {
      LinearScale scale = new LinearScale();
      scale.addDomain(100.0);
      scale.addDomain(130.0);
      scale.addDomain(200.0);
      scale.addDomain(170.0);
      scale.range = new ScaleOutputExtent(2000, 1000);

      expect(scale.range.start, equals(2000));
      expect(scale.range.end, equals(1000));
      expect(scale.range.diff, equals(-1000));

      expect(scale.dataExtent.min, equals(100.0));
      expect(scale.dataExtent.max, equals(200.0));

      expect(scale[100.0], closeTo(2000, EPSILON));
      expect(scale[200.0], closeTo(1000, EPSILON));
      expect(scale[166.0], closeTo(1340, EPSILON));
      expect(scale[0.0], closeTo(3000, EPSILON));
      expect(scale[300.0], closeTo(0, EPSILON));

      // test copy
      LinearScale other = scale.copy();
      expect(other[166.0], closeTo(1340, EPSILON));
      expect(other.range.start, equals(2000));
      expect(other.range.end, equals(1000));

      // test reset
      other.resetDomain();
      other.resetViewportSettings();
      other.addDomain(10.0);
      other.addDomain(20.0);
      expect(other.dataExtent.min, equals(10.0));
      expect(other.dataExtent.max, equals(20.0));
      expect(other.viewportDomain.min, equals(10.0));
      expect(other.viewportDomain.max, equals(20.0));

      expect(other[15.0], closeTo(1500, EPSILON));
      // original scale shouldn't have been touched.
      expect(scale[166.0], closeTo(1340, EPSILON));

      // should always return true.
      expect(scale.canTranslate(3.14), isTrue);
    });

    test('viewport assigned domain extent applies to scale', () {
      LinearScale scale = new LinearScale()..keepViewportWithinData = false;
      scale.addDomain(50.0);
      scale.addDomain(70.0);
      scale.viewportDomain = new NumericExtents(100.0, 200.0);
      scale.range = new ScaleOutputExtent(0, 200);

      expect(scale[200.0], closeTo(200, EPSILON));
      expect(scale[100.0], closeTo(0, EPSILON));
      expect(scale[50.0], closeTo(-100, EPSILON));
      expect(scale[150.0], closeTo(100, EPSILON));

      scale.resetDomain();
      scale.resetViewportSettings();
      scale.addDomain(50.0);
      scale.addDomain(100.0);
      scale.viewportDomain = new NumericExtents(0.0, 100.0);
      scale.range = new ScaleOutputExtent(0, 200);

      expect(scale[0.0], closeTo(0, EPSILON));
      expect(scale[100.0], closeTo(200, EPSILON));
      expect(scale[50.0], closeTo(100, EPSILON));
      expect(scale[200.0], closeTo(400, EPSILON));
    });

    test('comparing domain and range to viewport handles extent edges', () {
      LinearScale scale = new LinearScale();
      scale.range = new ScaleOutputExtent(1000, 1400);
      scale.domainOverride = new NumericExtents(100.0, 300.0);
      scale.viewportDomain = new NumericExtents(200.0, 300.0);

      expect(scale.viewportDomain, equals(new NumericExtents(200.0, 300.0)));

      expect(scale[210.0], closeTo(1040, EPSILON));
      expect(scale[400.0], closeTo(1800, EPSILON));
      expect(scale[100.0], closeTo(600, EPSILON));

      expect(scale.compareDomainValueToViewport(199.0), equals(-1));
      expect(scale.compareDomainValueToViewport(200.0), equals(0));
      expect(scale.compareDomainValueToViewport(201.0), equals(0));
      expect(scale.compareDomainValueToViewport(299.0), equals(0));
      expect(scale.compareDomainValueToViewport(300.0), equals(0));
      expect(scale.compareDomainValueToViewport(301.0), equals(1));

      expect(scale.isRangeValueWithinViewport(999.0), isFalse);
      expect(scale.isRangeValueWithinViewport(1100.0), isTrue);
      expect(scale.isRangeValueWithinViewport(1401.0), isFalse);
    });

    test('scale applies in reverse', () {
      LinearScale scale = new LinearScale();
      scale.range = new ScaleOutputExtent(1000, 1400);
      scale.domainOverride = new NumericExtents(100.0, 300.0);
      scale.viewportDomain = new NumericExtents(200.0, 300.0);

      expect(scale.reverse(1040.0), closeTo(210.0, EPSILON));
      expect(scale.reverse(1800.0), closeTo(400.0, EPSILON));
      expect(scale.reverse(600.0), closeTo(100.0, EPSILON));
    });

    test('scale works with a range from larger to smaller', () {
      LinearScale scale = new LinearScale();
      scale.range = new ScaleOutputExtent(1400, 1000);
      scale.domainOverride = new NumericExtents(100.0, 300.0);
      scale.viewportDomain = new NumericExtents(200.0, 300.0);

      expect(scale[200.0], closeTo(1400.0, EPSILON));
      expect(scale[250.0], closeTo(1200.0, EPSILON));
      expect(scale[300.0], closeTo(1000.0, EPSILON));
    });

    test('scaleFactor and translate applies to scale', () {
      LinearScale scale = new LinearScale();
      scale.range = new ScaleOutputExtent(1000, 1200);
      scale.domainOverride = new NumericExtents(100.0, 200.0);
      scale.setViewportSettings(4.0, -50.0);

      expect(scale[100.0], closeTo(950.0, EPSILON));
      expect(scale[200.0], closeTo(1750.0, EPSILON));
      expect(scale[150.0], closeTo(1350.0, EPSILON));
      expect(scale[106.25], closeTo(1000.0, EPSILON));
      expect(scale[131.25], closeTo(1200.0, EPSILON));

      expect(scale.compareDomainValueToViewport(106.0), equals(-1));
      expect(scale.compareDomainValueToViewport(106.25), equals(0));
      expect(scale.compareDomainValueToViewport(107.0), equals(0));

      expect(scale.compareDomainValueToViewport(131.0), equals(0));
      expect(scale.compareDomainValueToViewport(131.25), equals(0));
      expect(scale.compareDomainValueToViewport(132.0), equals(1));

      expect(scale.isRangeValueWithinViewport(999.0), isFalse);
      expect(scale.isRangeValueWithinViewport(1100.0), isTrue);
      expect(scale.isRangeValueWithinViewport(1201.0), isFalse);
    });

    test('scale handles single point', () {
      LinearScale domainScale = new LinearScale();
      domainScale.range = new ScaleOutputExtent(1000, 1200);
      domainScale.addDomain(50.0);

      // A single point should render in the middle of the scale.
      expect(domainScale[50.0], closeTo(1100.0, EPSILON));
    });

    test('testAllZeros', () {
      LinearScale measureScale = new LinearScale();
      measureScale.range = new ScaleOutputExtent(1000, 1200);
      measureScale.addDomain(0.0);

      expect(measureScale[0.0], closeTo(1100.0, EPSILON));
    });

    test('scale calculates step size', () {
      LinearScale scale = new LinearScale();
      scale.rangeBandConfig = new RangeBandConfig.percentOfStep(1.0);
      scale.addDomain(1.0);
      scale.addDomain(3.0);
      scale.addDomain(11.0);
      scale.range = new ScaleOutputExtent(100, 200);

      // 1 - 11 has 6 steps of size 2, 0 - 12
      expect(scale.rangeBand, closeTo(100.0 / 6.0, EPSILON));
    });

    test('scale applies rangeBand to detected step size', () {
      LinearScale scale = new LinearScale();
      scale.rangeBandConfig = new RangeBandConfig.percentOfStep(0.5);
      scale.addDomain(1.0);
      scale.addDomain(2.0);
      scale.addDomain(10.0);
      scale.range = new ScaleOutputExtent(100, 200);

      // 100 range / 10 steps * 0.5percentStep = 5
      expect(scale.rangeBand, closeTo(5.0, EPSILON));
    });

    test('scale stepSize calculation survives copy', () {
      LinearScale scale = new LinearScale();
      scale.stepSizeConfig = new StepSizeConfig.fixedDomain(1.0);
      scale.rangeBandConfig = new RangeBandConfig.percentOfStep(1.0);
      scale.addDomain(1.0);
      scale.addDomain(3.0);
      scale.range = new ScaleOutputExtent(100, 200);
      expect(scale.copy().rangeBand, closeTo(100.0 / 3.0, EPSILON));
    });

    test('scale rangeBand calculation survives copy', () {
      LinearScale scale = new LinearScale();
      scale.rangeBandConfig = new RangeBandConfig.fixedPixel(123.0);
      scale.addDomain(1.0);
      scale.addDomain(3.0);
      scale.range = new ScaleOutputExtent(100, 200);

      expect(scale.copy().rangeBand, closeTo(123, EPSILON));
    });

    test('scale rangeBand works for single domain value', () {
      LinearScale scale = new LinearScale();
      scale.rangeBandConfig = new RangeBandConfig.percentOfStep(1.0);
      scale.addDomain(1.0);
      scale.range = new ScaleOutputExtent(100, 200);

      expect(scale.rangeBand, closeTo(100, EPSILON));
    });

    test('scale rangeBand works for multiple domains of the same value', () {
      LinearScale scale = new LinearScale();
      scale.rangeBandConfig = new RangeBandConfig.percentOfStep(1.0);
      scale.addDomain(1.0);
      scale.addDomain(1.0);
      scale.range = new ScaleOutputExtent(100, 200);

      expect(scale.rangeBand, closeTo(100.0, EPSILON));
    });

    test('scale rangeBand is zero when no domains are added', () {
      LinearScale scale = new LinearScale();
      scale.range = new ScaleOutputExtent(100, 200);

      expect(scale.rangeBand, closeTo(0.0, EPSILON));
    });

    test('scale domain info reset on resetDomain', () {
      LinearScale scale = new LinearScale();
      scale.addDomain(1.0);
      scale.addDomain(3.0);
      scale.range = new ScaleOutputExtent(100, 200);
      scale.setViewportSettings(1000.0, 2000.0);

      scale.resetDomain();
      scale.resetViewportSettings();
      expect(scale.viewportScalingFactor, closeTo(1.0, EPSILON));
      expect(scale.viewportTranslatePx, closeTo(0, EPSILON));
      expect(scale.range, equals(new ScaleOutputExtent(100, 200)));
    });

    test('scale handles null domain values', () {
      LinearScale scale = new LinearScale();
      scale.rangeBandConfig = new RangeBandConfig.percentOfStep(1.0);
      scale.addDomain(1.0);
      scale.addDomain(null);
      scale.addDomain(3.0);
      scale.addDomain(11.0);
      scale.range = new ScaleOutputExtent(100, 200);

      expect(scale.rangeBand, closeTo(100.0 / 6.0, EPSILON));
    });

    test('scale domainOverride survives copy', () {
      LinearScale scale = new LinearScale()..keepViewportWithinData = false;
      scale.addDomain(1.0);
      scale.addDomain(3.0);
      scale.range = new ScaleOutputExtent(100, 200);
      scale.setViewportSettings(2.0, 10.0);
      scale.domainOverride = new NumericExtents(0.0, 100.0);

      LinearScale other = scale.copy();

      expect(other.domainOverride, equals(new NumericExtents(0.0, 100.0)));
      expect(other[5.0], closeTo(120.0, EPSILON));
    });

    test('scale calculates a scaleFactor given a domain window', () {
      LinearScale scale = new LinearScale();
      scale.addDomain(100.0);
      scale.addDomain(130.0);
      scale.addDomain(200.0);
      scale.addDomain(170.0);

      expect(scale.computeViewportScaleFactor(10.0), closeTo(10, EPSILON));
      expect(scale.computeViewportScaleFactor(100.0), closeTo(1, EPSILON));
    });
  });
}
