// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

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
      child: _AnimatedColors(
        orbColor: _orbColor,
        emitColor: _emitColor,
        builder: (_, orbColor, emitColor) {
          return Stack(
            children: [
              /// Bg-Base
              Image.asset(AssetPaths.titleBgBase),

              /// Bg-Receive
              _LitImage(
                color: orbColor,
                imgSrc: AssetPaths.titleBgReceive,
                lightAmt: _finalReceiveLightAmt,
              ),

              /// Mg-Base
              _LitImage(
                imgSrc: AssetPaths.titleMgBase,
                color: orbColor,
                lightAmt: _finalReceiveLightAmt,
              ),

              /// Mg-Receive
              _LitImage(
                imgSrc: AssetPaths.titleMgReceive,
                color: orbColor,
                lightAmt: _finalReceiveLightAmt,
              ),

              /// Mg-Emit
              _LitImage(
                imgSrc: AssetPaths.titleMgEmit,
                color: emitColor,
                lightAmt: _finalEmitLightAmt,
              ),

              /// Fg-Rocks
              Image.asset(AssetPaths.titleFgBase),

              /// Fg-Receive
              _LitImage(
                imgSrc: AssetPaths.titleFgReceive,
                color: orbColor,
                lightAmt: _finalReceiveLightAmt,
              ),

              /// Fg-Emit
              _LitImage(
                imgSrc: AssetPaths.titleFgEmit,
                color: emitColor,
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
          ).animate().fadeIn(duration: 1.seconds, delay: .3.seconds);
        },
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

class _AnimatedColors extends StatelessWidget {
  const _AnimatedColors({
    required this.emitColor,
    required this.orbColor,
    required this.builder,
  });

  final Color emitColor;
  final Color orbColor;

  final Widget Function(BuildContext context, Color orbColor, Color emitColor)
      builder;

  @override
  Widget build(BuildContext context) {
    final duration = .5.seconds;
    return TweenAnimationBuilder(
      tween: ColorTween(begin: emitColor, end: emitColor),
      duration: duration,
      builder: (_, emitColor, __) {
        return TweenAnimationBuilder(
          tween: ColorTween(begin: orbColor, end: orbColor),
          duration: duration,
          builder: (context, orbColor, __) {
            return builder(context, orbColor!, emitColor!);
          },
        );
      },
    );
  }
}
