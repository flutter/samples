// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:platform_channels/src/event_channel_demo.dart';

void main() {
  group('EventChannel Demo tests', () {
    final sensorValues = [1.3556, 2.3, -0.12];
    setUpAll(() {
      // By default EventChannel uses StandardMethodCodec to communicate with
      // platform.
      const standardMethod = StandardMethodCodec();

      // This function handles the incoming messages from the platform. It
      // calls the BinaryMessenger.setMessageHandler registered for the EventChannel
      // and add the incoming message to the StreamController used by the EventChannel
      // after decoding the message with codec used by the EventChannel.
      void emitValues(ByteData event) {
        ServicesBinding.instance.defaultBinaryMessenger.handlePlatformMessage(
          'eventChannelDemo',
          event,
          (reply) {},
        );
      }

      // Register a mock for EventChannel. EventChannel under the hood uses
      // MethodChannel to listen and cancel the created stream.
      ServicesBinding.instance.defaultBinaryMessenger
          .setMockMessageHandler('eventChannelDemo', (message) async {
        // Decode the message into MethodCallHandler.
        final methodCall = standardMethod.decodeMethodCall(message);

        if (methodCall.method == 'listen') {
          // Emit new sensor values.
          emitValues(standardMethod.encodeSuccessEnvelope(sensorValues));
          emitValues(null);
          return standardMethod.encodeSuccessEnvelope(null);
        } else if (methodCall.method == 'cancel') {
          return standardMethod.encodeSuccessEnvelope(null);
        } else {
          fail('Expected listen or cancel');
        }
      });
    });

    testWidgets('EventChannel AccelerometerReadings Stream test',
        (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: EventChannelDemo(),
      ));

      await tester.pumpAndSettle();

      // Check the values of axis. The value is rounded to 3 decimal places.
      expect(
        find.text('x axis: ' + sensorValues[0].toStringAsFixed(3)),
        findsOneWidget,
      );
      expect(
        find.text('y axis: ' + sensorValues[1].toStringAsFixed(3)),
        findsOneWidget,
      );
      expect(
        find.text('z axis: ' + sensorValues[2].toStringAsFixed(3)),
        findsOneWidget,
      );
    });
  });
}
