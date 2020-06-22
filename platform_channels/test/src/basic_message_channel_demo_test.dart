// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:platform_channels/src/basic_message_channel_demo.dart';

Widget createDemoScreen() => MaterialApp(
      home: BasicMessageChannelDemo(),
    );

void main() {
  group('BasicMessageChannelDemo Tests', () {
    final message = 'Hey There';

    setUpAll(() {
      BasicMessageChannel('stringCodecDemo', StringCodec())
          .setMockMessageHandler((message) async {
        return message + ' StringCodec Demo';
      });

      BasicMessageChannel<dynamic>('jsonMessageCodecDemo', JSONMessageCodec())
          .setMockMessageHandler((dynamic message) async {
        return message.toString() + ' JSONMessageCodec Demo';
      });

      BasicMessageChannel('binaryCodecDemo', BinaryCodec())
          .setMockMessageHandler((message) async {
        final decodedMessage = utf8.decoder.convert(message.buffer
            .asUint8List(message.offsetInBytes, message.lengthInBytes));

        return utf8.encoder
            .convert(decodedMessage + ' BinaryCodec Demo')
            .buffer
            .asByteData();
      });
    });

    // Function responsible to send enter the text in TextField, and send
    // platformMessage.
    Future sendMessage(WidgetTester tester) async {
      await tester.enterText(find.byType(TextField), message);
      await tester.tap(find.byIcon(Icons.send));
    }

    testWidgets('StringCodec test', (tester) async {
      await tester.pumpWidget(createDemoScreen());

      // By default, StringCode is selected in DropDownButton.
      expect(find.text('StringCodec'), findsOneWidget);

      await sendMessage(tester);
      await tester.pumpAndSettle();

      expect(find.text(message + ' StringCodec Demo'), findsOneWidget);
    });

    testWidgets('JSONMessageCodec Demo', (tester) async {
      await tester.pumpWidget(createDemoScreen());

      await tester.tap(find.text('StringCodec'));
      await tester.pumpAndSettle();

      // Select JSONMessageCodec from DropDownButton.
      await tester.tap(find.text('JSONMessageCodec').last);
      await tester.pumpAndSettle();

      await sendMessage(tester);
      await tester.pumpAndSettle();

      expect(find.text(message + ' JSONMessageCodec Demo'), findsOneWidget);
    });

    testWidgets('BinaryCodec Demo', (tester) async {
      await tester.pumpWidget(createDemoScreen());

      await tester.tap(find.text('StringCodec'));
      await tester.pumpAndSettle();

      // Select BinaryCodec from DropDownButton.
      await tester.tap(find.text('BinaryCodec').last);
      await tester.pumpAndSettle();

      await sendMessage(tester);
      await tester.pumpAndSettle();

      expect(find.text(message + ' BinaryCodec Demo'), findsOneWidget);
    });
  });
}
