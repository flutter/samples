// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:platform_channels/src/platform_image_demo.dart';

void main() {
  group('Platform Image Demo tests', () {
    setUpAll(() {
      // Register a mock for MessageHandler.
      BasicMessageChannel<dynamic>('platformImageDemo', StandardMessageCodec())
          .setMockMessageHandler((dynamic message) async {
        var byteData = await rootBundle.load('assets/eat_new_orleans.jpg');
        return byteData.buffer.asUint8List();
      });
    });

    testWidgets('Platform Image test', (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: PlatformImageDemo(),
      ));

      // Initially a PlaceHolder is displayed when imageData is null.
      expect(find.byType(Placeholder), findsOneWidget);
      expect(find.byType(Image), findsNothing);

      // Tap on RaisedButton to get Image.
      await tester.tap(find.byType(RaisedButton));
      await tester.pumpAndSettle();

      expect(find.byType(Placeholder), findsNothing);
      expect(find.byType(Image), findsOneWidget);
    });
  });
}
