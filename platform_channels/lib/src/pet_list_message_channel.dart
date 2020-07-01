// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:flutter/services.dart';

class PetListMessageChannel {
  static final _jsonMessageCodecChannel =
      BasicMessageChannel<dynamic>('jsonMessageCodecDemo', JSONMessageCodec());

  static final _binaryCodecChannel =
      BasicMessageChannel('binaryCodecDemo', BinaryCodec());

  static void addPetDetails(Map petDetails) {
    _jsonMessageCodecChannel.send(petDetails);
  }

  static void removePet(int index) {
    final uInt8List = utf8.encoder.convert(index.toString());
    _binaryCodecChannel.send(uInt8List.buffer.asByteData());
  }
}

class PetModel {
  PetModel({
    this.petList,
  });

  final List<PetDetails> petList;

  factory PetModel.fromJson(String jsonString) {
    final jsonData = json.decode(jsonString) as Map<String, dynamic>;
    return PetModel(
      petList: List.from((jsonData['petList'] as List).map<PetDetails>(
        (dynamic petDetailsMap) => PetDetails.fromJson(
          petDetailsMap as Map<String, dynamic>,
        ),
      )),
    );
  }
}

class PetDetails {
  PetDetails({
    this.petType,
    this.breed,
  });

  final String petType;
  final String breed;

  factory PetDetails.fromJson(Map<String, dynamic> map) => PetDetails(
        petType: map['petType'] as String,
        breed: map['breed'] as String,
      );
}
