// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:flutter/services.dart';

/// This class manages three [BasicMessageChannel]s which uses [StringCodec],
/// [JSONMessageCodec], and [BinaryCodec] respectively to send the message to
/// platform and receive a reply.
class PlatformMessages {
  static final _stringCodecChannel =
      BasicMessageChannel('stringCodecDemo', StringCodec());

  static final _jsonMessageCodecChannel =
      BasicMessageChannel<dynamic>('jsonMessageCodecDemo', JSONMessageCodec());

  static final _binaryCodecChannel =
      BasicMessageChannel('binaryCodecDemo', BinaryCodec());

  /// Method responsible for sending a message to platform and receive a reply
  /// using different [MessageCodec]s.
  static Future<String> sendPlatformMessage(
      String message, String messageCodec) async {
    String platformReply;
    switch (messageCodec) {
      case 'StringCodec':
        platformReply = await _stringCodecChannel.send(message);
        break;
      case 'JSONMessageCodec':
        platformReply = await _jsonMessageCodecChannel.send(message) as String;
        break;
      case 'BinaryCodec':
        final uInt8List = utf8.encoder.convert(message);
        final byteData =
            await _binaryCodecChannel.send(uInt8List.buffer.asByteData());
        platformReply = utf8.decoder.convert(byteData.buffer
            .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
        break;
    }

    if (platformReply == null) {
      throw PlatformException(
          code: 'INVALID REPLY',
          message: 'Something went wrong, no reply received.',
          details: null);
    }

    return platformReply;
  }
}
