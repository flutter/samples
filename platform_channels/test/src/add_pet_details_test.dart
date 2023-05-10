// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:platform_channels/main.dart' as app;

void main() {
  group('AddPetDetails tests', () {
    var petList = <Map>[];

    testWidgets('Enter pet details', (tester) async {
      tester.binding.defaultBinaryMessenger.setMockDecodedMessageHandler(
        const BasicMessageChannel<dynamic>(
            'jsonMessageCodecDemo', JSONMessageCodec()),
        (dynamic message) async {
          petList.add(message as Map);
        },
      );
      var router = app.router('/petListScreen/addPetDetails');
      await tester.pumpWidget(
        MaterialApp.router(
          routerConfig: router,
        ),
      );

      // Enter the breed of cat.
      await tester.enterText(find.byType(TextField), 'Persian');
      // Select cat from the pet type.
      await tester.tap(find.text('Cat'));

      // Initially the list will be empty.
      expect(petList, isEmpty);
      await tester.tap(find.byIcon(Icons.add));

      expect(petList, isNotEmpty);
      expect(petList.last['breed'], 'Persian');

      // Navigate back to /petListScreen
      expect(router.location, '/petListScreen');
    });
  });
}
