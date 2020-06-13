import 'dart:typed_data';
import 'package:flutter/services.dart';

/// This class includes the implementation for [BasicMessageChannel] to get
/// a platform image. The [BasicMessageChannel] uses [StandardMessageCodec]
/// since it supports [Uint8List] which can be easily used to get the image data
/// from platform and display an image using [Image.memory].
class PlatformImage {
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
