// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:flutter/services.dart';

/// This class includes two methods [addPetDetails] and [removePet] which are used
/// to add a new pet and remove a pet from the the list respectively.
class PetListMessageChannel {
  static final _jsonMessageCodecChannel =
      BasicMessageChannel<dynamic>('jsonMessageCodecDemo', JSONMessageCodec());

  static final _binaryCodecChannel =
      BasicMessageChannel('binaryCodecDemo', BinaryCodec());

  /// Method to add a new pet to the list.
  ///
  /// Demonstrates how to use [BasicMessageChannel] and [JSONMessageCodec] to
  /// send more structured data to platform like a [Map] in this case.
  static void addPetDetails(PetDetails petDetails) {
    _jsonMessageCodecChannel.send(petDetails.toJson());
  }

  /// Method to remove a pet from the list.
  ///
  /// Demonstrates how to use [BasicMessageChannel] and [BinaryCodec] to
  /// send [ByteData] to platform. If the reply received is null, then
  /// we will throw a [PlatformException].
  static Future<void> removePet(int index) async {
    final uInt8List = utf8.encoder.convert(index.toString());
    final reply = await _binaryCodecChannel.send(uInt8List.buffer.asByteData());
    if (reply == null) {
      throw PlatformException(
        code: 'INVALID INDEX',
        message: 'Failed to delete pet details',
        details: null,
      );
    }
  }
}

/// A model class that provides [petList] which is received from platform.
class PetListModel {
  PetListModel({
    this.petList,
  });

  final List<PetDetails> petList;

  /// Method that maps the incoming string of json object to List of [PetDetails].
  factory PetListModel.fromJson(String jsonString) {
    final jsonData = json.decode(jsonString) as Map<String, dynamic>;
    return PetListModel(
      petList: List.from((jsonData['petList'] as List).map<PetDetails>(
        (dynamic petDetailsMap) => PetDetails.fromMap(
          petDetailsMap as Map<String, dynamic>,
        ),
      )),
    );
  }
}

/// A simple model that provides pet details like [petType] and [breed] of pet.
class PetDetails {
  PetDetails({
    this.petType,
    this.breed,
  });

  final String petType;
  final String breed;

  factory PetDetails.fromMap(Map<String, dynamic> map) => PetDetails(
        petType: map['petType'] as String,
        breed: map['breed'] as String,
      );

  Map<String, String> toJson() => <String, String>{
        'petType': petType,
        'breed': breed,
      };
}
