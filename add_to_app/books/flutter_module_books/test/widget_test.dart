// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_module_books/api.dart';
import 'package:flutter_module_books/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Pressing clear calls the cancel API', (tester) async {
    MockHostBookApi mockHostApi = MockHostBookApi();

    await tester.pumpWidget(
      MaterialApp(
        home: BookDetail(hostApi: mockHostApi),
      ),
    );

    await tester.tap(find.byIcon(Icons.clear));

    expect(mockHostApi.cancelCalls, 1);
  });

  testWidgets('Pressing done calls the finish editing API', (tester) async {
    MockHostBookApi mockHostApi = MockHostBookApi();

    await tester.pumpWidget(
      MaterialApp(
        home: BookDetail(hostApi: mockHostApi),
      ),
    );

    await tester.tap(find.byIcon(Icons.check));

    expect(mockHostApi.booksFinished.length, 1);
  });
}

// A super-simple mock for testing that calls are made to the API.
class MockHostBookApi implements HostBookApi {
  int cancelCalls = 0;
  final booksFinished = <Book>[];

  @override
  Future<void> cancel() async {
    cancelCalls++;
  }

  @override
  Future<void> finishEditingBook(Book arg) async {
    booksFinished.add(arg);
  }
}
