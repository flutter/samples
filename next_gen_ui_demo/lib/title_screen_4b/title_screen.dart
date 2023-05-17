// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../assets.dart';
import '../styles.dart';
import '../title_screen/title_screen.dart';
import 'title_screen_ui.dart';

class TitleScreen extends TitleScreenBase {
  const TitleScreen({super.key, required super.callback});

  @override
  State<TitleScreen> createState() => _TitleScreenState();
}

class _TitleScreenState extends State<TitleScreen> {
  Color get _emitColor =>
      AppColors.emitColors[_difficultyOverride ?? _difficulty];
  Color get _orbColor =>
      AppColors.orbColors[_difficultyOverride ?? _difficulty];

  /// Currently selected difficulty
  int _difficulty = 0;

  /// Currently focused difficulty (if any)
  int? _difficultyOverride;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((duration) => widget.callback(_orbColor));
  }

  void _handleDifficultyPressed(int value) {
    setState(() => _difficulty = value);
    widget.callback(_orbColor);
  }

  void _handleDifficultyFocused(int? value) {
    setState(() => _difficultyOverride = value);
    widget.callback(_orbColor);
  }

  final _finalReceiveLightAmt = 0.7;
  final _finalEmitLightAmt = 0.5;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          /// Bg-Base
          Image.asset(AssetPaths.titleBgBase),

          /// Bg-Receive
          _LitImage(
            color: _orbColor,
            imgSrc: AssetPaths.titleBgReceive,
            lightAmt: _finalReceiveLightAmt,
          ),

          /// Mg-Base
          _LitImage(
            imgSrc: AssetPaths.titleMgBase,
            color: _orbColor,
            lightAmt: _finalReceiveLightAmt,
          ),

          /// Mg-Receive
          _LitImage(
            imgSrc: AssetPaths.titleMgReceive,
            color: _orbColor,
            lightAmt: _finalReceiveLightAmt,
          ),

          /// Mg-Emit
          _LitImage(
            imgSrc: AssetPaths.titleMgEmit,
            color: _emitColor,
            lightAmt: _finalEmitLightAmt,
          ),

          /// Fg-Rocks
          Image.asset(AssetPaths.titleFgBase),

          /// Fg-Receive
          _LitImage(
            imgSrc: AssetPaths.titleFgReceive,
            color: _orbColor,
            lightAmt: _finalReceiveLightAmt,
          ),

          /// Fg-Emit
          _LitImage(
            imgSrc: AssetPaths.titleFgEmit,
            color: _emitColor,
            lightAmt: _finalEmitLightAmt,
          ),

          /// UI
          Positioned.fill(
            child: TitleScreenUi(
              difficulty: _difficulty,
              onDifficultyFocused: _handleDifficultyFocused,
              onDifficultyPressed: _handleDifficultyPressed,
            ),
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
