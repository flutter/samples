// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui';

class AssetPaths {
  /// Images
  static const String _images = 'assets/images';

  static const String titleBgBase = '$_images/bg-base.jpg';
  static const String titleBgReceive = '$_images/bg-light-receive.png';
  static const String titleFgEmit = '$_images/fg-light-emit.png';
  static const String titleFgReceive = '$_images/fg-light-receive.png';
  static const String titleFgBase = '$_images/fg-base.png';
  static const String titleMgEmit = '$_images/mg-light-emit.png';
  static const String titleMgReceive = '$_images/mg-light-receive.png';
  static const String titleMgBase = '$_images/mg-base.png';
  static const String titleStartBtn = '$_images/button-start.png';
  static const String titleStartBtnHover = '$_images/button-start-hover.png';
  static const String titleStartArrow = '$_images/button-start-arrow.png';
  static const String titleSelectedLeft = '$_images/select-left.png';
  static const String titleSelectedRight = '$_images/select-right.png';
  static const String pulseParticle = '$_images/particle3.png';

  /// Shaders
  static const String _shaders = 'assets/shaders';
  static const String orbShader = '$_shaders/orb_shader.frag';
  static const String uiShader = '$_shaders/ui_glitch.frag';
}

typedef Shaders = ({FragmentShader orb, FragmentShader ui});

Future<Shaders> loadShaders() async => (
      orb: (await _loadShader(AssetPaths.orbShader)),
      ui: (await _loadShader(AssetPaths.uiShader)),
    );

Future<FragmentShader> _loadShader(String path) async {
  return (await FragmentProgram.fromAsset(path)).fragmentShader();
}
