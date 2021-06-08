// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:platform_channels/src/pet_list_message_channel.dart';
import 'package:platform_channels/src/pet_list_screen.dart';

void main() {
  group('PetListScreen tests', () {
    const basicMessageChannel =
        BasicMessageChannel<String?>('stringCodecDemo', StringCodec());

    var petList = [
      {
        'petType': 'Dog',
        'breed': 'Pug',
      }
    ];

    PetListModel? petListModel;

    setUpAll(() {
      // Mock for the pet list received from the platform.
      basicMessageChannel.setMockMessageHandler((message) async {
        petListModel = PetListModel.fromJson(message!);
        return null;
      });

      // Mock for the index received from the Dart to delete the pet details,
      // and send the updated pet list back to Dart.
      const BasicMessageChannel<ByteData?>('binaryCodecDemo', BinaryCodec())
          .setMockMessageHandler((message) async {
        // Convert the ByteData to String.
        final index = utf8.decoder.convert(message!.buffer
            .asUint8List(message.offsetInBytes, message.lengthInBytes));

        // Remove the pet details at the given index.
        petList.removeAt(int.parse(index));

        // Send the updated petList back.
        final map = {'petList': petList};
        await basicMessageChannel.send(json.encode(map));

        return null;
      });
    });

    test('convert json message to PetListModel', () {
      TestWidgetsFlutterBinding.ensureInitialized();

      // Initially petListModel will be null.
      expect(petListModel, isNull);

      // Send the pet list using BasicMessageChannel.
      final map = {'petList': petList};
      basicMessageChannel.send(json.encode(map));

      // Get the details of first pet.
      final petDetails = petListModel!.petList.first;
      expect(petDetails.petType, 'Dog');
      expect(petDetails.breed, 'Pug');
    });

    testWidgets('BuildPetList test', (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: BuildPetList(petListModel!.petList),
        ),
      ));

      expect(find.text('Pet type: Dog'), findsOneWidget);
      expect(find.text('Pet breed: Pug'), findsOneWidget);

      // Delete the pet details.
      await tester.tap(find.byIcon(Icons.delete).first);
      expect(petListModel!.petList, isEmpty);
    });
  });
}
