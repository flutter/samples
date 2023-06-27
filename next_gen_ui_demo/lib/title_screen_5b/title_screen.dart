// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../assets.dart';
import '../orb_shader/orb_shader_config.dart';
import '../orb_shader/orb_shader_widget.dart';
import '../styles.dart';
import '../title_screen/title_screen.dart';
import 'title_screen_ui.dart';

class TitleScreen extends TitleScreenBase {
  const TitleScreen({super.key, required super.callback});

  @override
  State<TitleScreen> createState() => _TitleScreenState();
}

class _TitleScreenState extends State<TitleScreen>
    with SingleTickerProviderStateMixin {
  final _orbKey = GlobalKey<OrbShaderWidgetState>();

  /// Editable Settings
  /// 0-1, receive lighting strength
  final _minReceiveLightAmt = .35;
  final _maxReceiveLightAmt = .7;

  /// 0-1, emit lighting strength
  final _minEmitLightAmt = .5;
  final _maxEmitLightAmt = 1;

  /// Internal
  var _mousePos = Offset.zero;

  Color get _emitColor =>
      AppColors.emitColors[_difficultyOverride ?? _difficulty];
  Color get _orbColor =>
      AppColors.orbColors[_difficultyOverride ?? _difficulty];

  /// Currently selected difficulty
  int _difficulty = 0;

  /// Currently focused difficulty (if any)
  int? _difficultyOverride;
  double _orbEnergy = 0;
  double _minOrbEnergy = 0;

  double get _finalReceiveLightAmt {
    final light =
        ui.lerpDouble(_minReceiveLightAmt, _maxReceiveLightAmt, _orbEnergy) ??
            0;
    return light + _pulseEffect.value * .05 * _orbEnergy;
  }

  double get _finalEmitLightAmt {
    return ui.lerpDouble(_minEmitLightAmt, _maxEmitLightAmt, _orbEnergy) ?? 0;
  }

  late final AnimationController _pulseEffect;

  Duration _getRndPulseDuration() =>
      100.ms + 200.ms * math.Random().nextDouble();

  double _getMinEnergyForDifficulty(int difficulty) {
    if (difficulty == 1) {
      return .3;
    } else if (difficulty == 2) {
      return .6;
    }
    return 0;
  }

  @override
  void initState() {
    super.initState();
    _pulseEffect = AnimationController(
      vsync: this,
      duration: _getRndPulseDuration(),
      lowerBound: -1,
      upperBound: 1,
    );
    _pulseEffect.forward();
    _pulseEffect.addListener(_handlePulseEffectUpdate);
  }

  @override
  void dispose() {
    _pulseEffect.dispose();
    super.dispose();
  }

  void _handlePulseEffectUpdate() {
    if (_pulseEffect.status == AnimationStatus.completed) {
      _pulseEffect.reverse();
      _pulseEffect.duration = _getRndPulseDuration();
    } else if (_pulseEffect.status == AnimationStatus.dismissed) {
      _pulseEffect.duration = _getRndPulseDuration();
      _pulseEffect.forward();
    }
  }

  void _handleDifficultyPressed(int value) {
    setState(() => _difficulty = value);
    _bumpMinEnergy();
  }

  Future<void> _bumpMinEnergy([double amount = 0.1]) async {
    setState(() {
      _minOrbEnergy = _getMinEnergyForDifficulty(_difficulty) + amount;
    });
    await Future<void>.delayed(.2.seconds);
    setState(() {
      _minOrbEnergy = _getMinEnergyForDifficulty(_difficulty);
    });
  }

  void _handleStartPressed() => _bumpMinEnergy(0.3);

  void _handleDifficultyFocused(int? value) {
    setState(() {
      _difficultyOverride = value;
      if (value == null) {
        _minOrbEnergy = _getMinEnergyForDifficulty(_difficulty);
      } else {
        _minOrbEnergy = _getMinEnergyForDifficulty(value);
      }
    });
  }

  /// Update mouse position so the orbWidget can use it, doing it here prevents
  /// btns from blocking the mouse-move events in the widget itself.
  void _handleMouseMove(PointerHoverEvent e) {
    setState(() {
      _mousePos = e.localPosition;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MouseRegion(
        onHover: _handleMouseMove,
        child: _AnimatedColors(
          orbColor: _orbColor,
          emitColor: _emitColor,
          builder: (_, orbColor, emitColor) {
            WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
              widget.callback(orbColor);
            });
            return Stack(
              children: [
                /// Bg-Base
                Image.asset(AssetPaths.titleBgBase),

                /// Bg-Receive
                _LitImage(
                  color: orbColor,
                  imgSrc: AssetPaths.titleBgReceive,
                  pulseEffect: _pulseEffect,
                  lightAmt: _finalReceiveLightAmt,
                ),

                /// Orb
                Positioned.fill(
                  child: Stack(
                    children: [
                      // Orb
                      OrbShaderWidget(
                        key: _orbKey,
                        mousePos: _mousePos,
                        minEnergy: _minOrbEnergy,
                        config: OrbShaderConfig(
                          ambientLightColor: orbColor,
                          materialColor: orbColor,
                          lightColor: orbColor,
                        ),
                        onUpdate: (energy) => setState(() {
                          _orbEnergy = energy;
                        }),
                      ),
                    ],
                  ),
                ),

                /// Mg-Base
                _LitImage(
                  imgSrc: AssetPaths.titleMgBase,
                  color: orbColor,
                  pulseEffect: _pulseEffect,
                  lightAmt: _finalReceiveLightAmt,
                ),

                /// Mg-Receive
                _LitImage(
                  imgSrc: AssetPaths.titleMgReceive,
                  color: orbColor,
                  pulseEffect: _pulseEffect,
                  lightAmt: _finalReceiveLightAmt,
                ),

                /// Mg-Emit
                _LitImage(
                  imgSrc: AssetPaths.titleMgEmit,
                  color: emitColor,
                  pulseEffect: _pulseEffect,
                  lightAmt: _finalEmitLightAmt,
                ),

                /// Fg-Rocks
                Image.asset(AssetPaths.titleFgBase),

                /// Fg-Receive
                _LitImage(
                  imgSrc: AssetPaths.titleFgReceive,
                  color: orbColor,
                  pulseEffect: _pulseEffect,
                  lightAmt: _finalReceiveLightAmt,
                ),

                /// Fg-Emit
                _LitImage(
                  imgSrc: AssetPaths.titleFgEmit,
                  color: emitColor,
                  pulseEffect: _pulseEffect,
                  lightAmt: _finalEmitLightAmt,
                ),

                /// UI
                Positioned.fill(
                  child: TitleScreenUi(
                    difficulty: _difficulty,
                    onDifficultyFocused: _handleDifficultyFocused,
                    onDifficultyPressed: _handleDifficultyPressed,
                    onStartPressed: _handleStartPressed,
                  ),
                ),
              ],
            ).animate().fadeIn(duration: 1.seconds, delay: .3.seconds);
          },
        ),
      ),
    );
  }
}

class _LitImage extends StatelessWidget {
  const _LitImage({
    required this.color,
    required this.imgSrc,
    required this.pulseEffect,
    required this.lightAmt,
  });
  final Color color;
  final String imgSrc;
  final AnimationController pulseEffect;
  final double lightAmt;

  @override
  Widget build(BuildContext context) {
    final hsl = HSLColor.fromColor(color);
    return ListenableBuilder(
      listenable: pulseEffect,
      child: Image.asset(imgSrc),
      builder: (context, child) {
        return ColorFiltered(
          colorFilter: ColorFilter.mode(
            hsl.withLightness(hsl.lightness * lightAmt).toColor(),
            BlendMode.modulate,
          ),
          child: child,
        );
      },
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
