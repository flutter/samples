// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:typed_data';

import 'package:flutter/services.dart';

/// This class manages a [BasicMessageChannel] that can return an image loaded
/// from a native asset. The [BasicMessageChannel] uses [StandardMessageCodec]
/// since it supports [Uint8List], which is used to transport the image data.
class PlatformImageFetcher {
  static final _basicMessageChannel = const BasicMessageChannel<dynamic>(
      'platformImageDemo', StandardMessageCodec());

  /// Method responsible for providing the platform image.
  static Future<Uint8List> getImage() async {
    final reply = await _basicMessageChannel.send('getImage') as Uint8List;
    if (reply == null) {
      throw PlatformException(
        code: 'Error',
        message: 'Failed to load Platform Image',
        details: null,
      );
    }
    return reply;
  }
}
