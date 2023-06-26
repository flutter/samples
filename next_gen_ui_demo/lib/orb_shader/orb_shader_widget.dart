// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';

import '../assets.dart';
import '../common/reactive_widget.dart';
import 'orb_shader_config.dart';
import 'orb_shader_painter.dart';

class OrbShaderWidget extends StatefulWidget {
  const OrbShaderWidget({
    super.key,
    required this.config,
    this.onUpdate,
    required this.mousePos,
    required this.minEnergy,
  });

  final double minEnergy;
  final OrbShaderConfig config;
  final Offset mousePos;
  final void Function(double energy)? onUpdate;

  @override
  State<OrbShaderWidget> createState() => OrbShaderWidgetState();
}

class OrbShaderWidgetState extends State<OrbShaderWidget>
    with SingleTickerProviderStateMixin {
  final _heartbeatSequence = TweenSequence(
    [
      TweenSequenceItem(tween: ConstantTween(0), weight: 40),
      TweenSequenceItem(
          tween: Tween(begin: 0.0, end: 1.0)
              .chain(CurveTween(curve: Curves.easeInOutCubic)),
          weight: 8),
      TweenSequenceItem(
          tween: Tween(begin: 1.0, end: 0.2)
              .chain(CurveTween(curve: Curves.easeInOutCubic)),
          weight: 12),
      TweenSequenceItem(
          tween: Tween(begin: 0.2, end: 0.8)
              .chain(CurveTween(curve: Curves.easeInOutCubic)),
          weight: 6),
      TweenSequenceItem(
          tween: Tween(begin: 0.8, end: 0.0)
              .chain(CurveTween(curve: Curves.easeInOutCubic)),
          weight: 10),
    ],
  );

  late final AnimationController _heartbeatAnim;

  @override
  void initState() {
    super.initState();
    _heartbeatAnim = AnimationController(vsync: this, duration: 3000.ms)
      ..repeat();
  }

  @override
  void dispose() {
    _heartbeatAnim.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Consumer<Shaders?>(
        builder: (context, shaders, _) {
          if (shaders == null) return const SizedBox.expand();
          return ListenableBuilder(
            listenable: _heartbeatAnim,
            builder: (_, __) {
              final heartbeatEnergy =
                  _heartbeatAnim.drive(_heartbeatSequence).value;
              return TweenAnimationBuilder(
                tween: Tween<double>(
                    begin: widget.minEnergy, end: widget.minEnergy),
                duration: 300.ms,
                curve: Curves.easeOutCubic,
                builder: (context, minEnergy, child) {
                  return ReactiveWidget(
                    builder: (context, time, size) {
                      double energyLevel = 0;
                      if (size.shortestSide != 0) {
                        final d = (Offset(size.width, size.height) / 2 -
                                widget.mousePos)
                            .distance;
                        final hitSize = size.shortestSide * .5;
                        energyLevel = 1 - math.min(1, (d / hitSize));
                        scheduleMicrotask(
                            () => widget.onUpdate?.call(energyLevel));
                      }
                      energyLevel +=
                          (1.3 - energyLevel) * heartbeatEnergy * 0.1;
                      energyLevel = ui.lerpDouble(minEnergy, 1, energyLevel)!;
                      return CustomPaint(
                        size: size,
                        painter: OrbShaderPainter(
                          shaders.orb,
                          config: widget.config,
                          time: time,
                          mousePos: widget.mousePos,
                          energy: energyLevel,
                        ),
                      );
                    },
                  );
                },
              );
            },
          );
        },
      );
}
