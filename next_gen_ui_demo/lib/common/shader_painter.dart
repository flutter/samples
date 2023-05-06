// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui';

import 'package:flutter/material.dart';

class ShaderPainter extends CustomPainter {
  ShaderPainter(this.shader, {this.update});

  final FragmentShader shader;
  final void Function(FragmentShader, Size)? update;

  @override
  void paint(Canvas canvas, Size size) {
    update?.call(shader, size);
    canvas.drawRect(
      Rect.fromLTWH(0, 0, size.width, size.height),
      Paint()..shader = shader,
    );
  }

  @override
  bool shouldRepaint(covariant ShaderPainter oldDelegate) {
    return oldDelegate.shader != shader || oldDelegate.update != update;
  }
}
