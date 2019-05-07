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

import 'package:charts_common/src/chart/layout/layout_config.dart';
import 'package:charts_common/src/chart/layout/layout_manager_impl.dart';

import 'package:test/test.dart';

void main() {
  test('default layout', () {
    var layout = LayoutManagerImpl();
    layout.measure(400, 300);

    expect(layout.marginTop, equals(0));
    expect(layout.marginRight, equals(0));
    expect(layout.marginBottom, equals(0));
    expect(layout.marginLeft, equals(0));
  });

  test('all fixed margin', () {
    var layout = LayoutManagerImpl(
      config: LayoutConfig(
        topSpec: MarginSpec.fixedPixel(12),
        rightSpec: MarginSpec.fixedPixel(11),
        bottomSpec: MarginSpec.fixedPixel(10),
        leftSpec: MarginSpec.fixedPixel(9),
      ),
    );
    layout.measure(400, 300);

    expect(layout.marginTop, equals(12));
    expect(layout.marginRight, equals(11));
    expect(layout.marginBottom, equals(10));
    expect(layout.marginLeft, equals(9));
  });
}
