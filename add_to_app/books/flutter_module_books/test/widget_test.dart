// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_module_books/api.dart';
import 'package:flutter_module_books/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

void main() {
  testWidgets('Pressing clear calls the cancel API', (tester) async {
    MockHostBookApi mockHostApi = MockHostBookApi();

    await tester.pumpWidget(
      MaterialApp(
        home: BookDetail(hostApi: mockHostApi),
      ),
    );

    await tester.tap(find.byIcon(Icons.clear));

    verify(mockHostApi.cancel());
  });

  testWidgets('Pressing done calls the finish editing API', (tester) async {
    MockHostBookApi mockHostApi = MockHostBookApi();

    await tester.pumpWidget(
      MaterialApp(
        home: BookDetail(hostApi: mockHostApi),
      ),
    );

    await tester.tap(find.byIcon(Icons.check));

    verify(mockHostApi.finishEditingBook(any));
  });
}

class MockHostBookApi extends Mock implements HostBookApi {}
