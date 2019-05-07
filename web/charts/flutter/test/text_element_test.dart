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

import 'package:flutter_web/material.dart' show BuildContext;
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:charts_flutter/src/graphics_factory.dart';
import 'package:charts_flutter/src/text_element.dart';

class MockContext extends Mock implements BuildContext {}

class MockGraphicsFactoryHelper extends Mock implements GraphicsFactoryHelper {}

void main() {
  test('Text element gets assigned scale factor', () {
    final helper = new MockGraphicsFactoryHelper();
    when(helper.getTextScaleFactorOf(any)).thenReturn(3.0);
    final graphicsFactory =
        new GraphicsFactory(new MockContext(), helper: helper);

    final textElement =
        graphicsFactory.createTextElement('test') as TextElement;

    expect(textElement.text, equals('test'));
    expect(textElement.textScaleFactor, equals(3.0));
  });
}
