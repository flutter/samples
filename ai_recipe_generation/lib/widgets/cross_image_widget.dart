import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CrossImage extends StatelessWidget {
  const CrossImage({
    super.key,
    required this.file,
    this.fit = BoxFit.cover,
    this.height = 100,
    this.width = 100,
  });

  final XFile file;
  final BoxFit fit;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return Image.network(
        file.path,
        fit: fit,
      );
    } else {
      return Image.file(
        File(file.path),
        height: height,
        width: width,
      );
    }
  }

  static DecorationImage decoration(XFile file, {BoxFit fit = BoxFit.cover}) {
    final image = kIsWeb ? NetworkImage(file.path) : FileImage(File(file.path));
    return DecorationImage(image: image as ImageProvider, fit: fit);
  }
}
