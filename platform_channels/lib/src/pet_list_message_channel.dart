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
  static void addPetDetails(Map petDetails) {
    _jsonMessageCodecChannel.send(petDetails);
  }

  /// Method to remove a pet from the list.
  ///
  /// Demonstrates how to use [BasicMessageChannel] and [BinaryCodec] to
  /// send [ByteData] to platform.
  static void removePet(int index) {
    final uInt8List = utf8.encoder.convert(index.toString());
    _binaryCodecChannel.send(uInt8List.buffer.asByteData());
  }
}

/// A model class that provides [petList] which is received from platform.
class PetModel {
  PetModel({
    this.petList,
  });

  final List<PetDetails> petList;

  /// Method that maps the incoming string of json object to List of [PetDetails].
  factory PetModel.fromJson(String jsonString) {
    final jsonData = json.decode(jsonString) as Map<String, dynamic>;
    return PetModel(
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
}
