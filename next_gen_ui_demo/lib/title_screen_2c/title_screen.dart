// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../assets.dart';
import '../styles.dart';
import '../title_screen/title_screen.dart';

class TitleScreen extends TitleScreenBase {
  const TitleScreen({super.key, required super.callback});

  final _finalReceiveLightAmt = 0.7;
  final _finalEmitLightAmt = 0.5;

  @override
  State<TitleScreen> createState() => _TitleScreenState();
}

class _TitleScreenState extends State<TitleScreen> {
  @override
  Widget build(BuildContext context) {
    final orbColor = AppColors.orbColors[0];
    final emitColor = AppColors.emitColors[0];
    WidgetsBinding.instance
        .addPostFrameCallback((duration) => widget.callback(orbColor));

    return Center(
      child: Stack(
        children: [
          /// Bg-Base
          Image.asset(AssetPaths.titleBgBase),

          /// Bg-Receive
          _LitImage(
            color: orbColor,
            imgSrc: AssetPaths.titleBgReceive,
            lightAmt: widget._finalReceiveLightAmt,
          ),

          /// Mg-Base
          _LitImage(
            imgSrc: AssetPaths.titleMgBase,
            color: orbColor,
            lightAmt: widget._finalReceiveLightAmt,
          ),

          /// Mg-Receive
          _LitImage(
            imgSrc: AssetPaths.titleMgReceive,
            color: orbColor,
            lightAmt: widget._finalReceiveLightAmt,
          ),

          /// Mg-Emit
          _LitImage(
            imgSrc: AssetPaths.titleMgEmit,
            color: emitColor,
            lightAmt: widget._finalEmitLightAmt,
          ),

          /// Fg-Rocks
          Image.asset(AssetPaths.titleFgBase),

          /// Fg-Receive
          _LitImage(
            imgSrc: AssetPaths.titleFgReceive,
            color: orbColor,
            lightAmt: widget._finalReceiveLightAmt,
          ),

          /// Fg-Emit
          _LitImage(
            imgSrc: AssetPaths.titleFgEmit,
            color: emitColor,
            lightAmt: widget._finalEmitLightAmt,
          ),
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
