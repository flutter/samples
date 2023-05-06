// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../assets.dart';

class TitleScreen extends StatelessWidget {
  const TitleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          /// Bg-Base
          Image.asset(AssetPaths.titleBgBase),

          /// Bg-Receive
          Image.asset(AssetPaths.titleBgReceive),

          /// Mg-Base
          Image.asset(AssetPaths.titleMgBase),

          /// Mg-Receive
          Image.asset(AssetPaths.titleMgReceive),

          /// Mg-Emit
          Image.asset(AssetPaths.titleMgEmit),

          /// Fg-Rocks
          Image.asset(AssetPaths.titleFgBase),

          /// Fg-Receive
          Image.asset(AssetPaths.titleFgReceive),

          /// Fg-Emit
          Image.asset(AssetPaths.titleFgEmit),
        ],
      ),
    );
  }
}

class _LitImage extends StatelessWidget {
  const _LitImage({
    required this.color,
    required this.imgSrc,
    required this.lightAmt,
  });
  final Color color;
  final String imgSrc;
  final double lightAmt;

  @override
  Widget build(BuildContext context) {
    final hsl = HSLColor.fromColor(color);
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        hsl.withLightness(hsl.lightness * lightAmt).toColor(),
        BlendMode.modulate,
      ),
      child: Image.asset(imgSrc),
    );
  }
}
