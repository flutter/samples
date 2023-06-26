// Copyright 2023 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';

class WonkyChar extends StatefulWidget {
  final String text;
  final double size;
  final double baseRotation;
  final int animDurationMillis;
  final List<WonkyAnimSetting> animationSettings;
  const WonkyChar({
    super.key,
    required this.text,
    required this.size,
    this.baseRotation = 0,
    this.animDurationMillis = 1000,
    this.animationSettings = const <WonkyAnimSetting>[],
  });

  @override
  State<WonkyChar> createState() => WonkyCharState();
}

class WonkyCharState extends State<WonkyChar>
    with SingleTickerProviderStateMixin {
  bool loopingAnimation = true;
  late AnimationController _animController;
  final List<Animation<double>> _curves = [];
  late final List<Animation> _fvAnimations = [];
  final List<String> _fvAxes = [];
  // default curve and animations in case user sets nothing for them
  late final defaultCurve = CurvedAnimation(
      parent: _animController,
      curve: const Interval(0, 1, curve: Curves.linear));
  late Animation _scaleAnimation =
      Tween<double>(begin: 1, end: 1).animate(defaultCurve);
  late Animation _offsetXAnimation =
      Tween<double>(begin: 0, end: 0).animate(defaultCurve);
  late Animation _offsetYAnimation =
      Tween<double>(begin: 0, end: 0).animate(defaultCurve);
  late Animation _rotationAnimation =
      Tween<double>(begin: 0, end: 0).animate(defaultCurve);
  late Animation _colorAnimation =
      ColorTween(begin: Colors.black, end: Colors.black).animate(defaultCurve);

  @override
  void initState() {
    super.initState();
    initAnimations(widget.animationSettings);
    _animController
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed && loopingAnimation) {
          _animController.reverse();
        } else if (status == AnimationStatus.dismissed && loopingAnimation) {
          _animController.forward();
        }
      });
    _animController.forward();
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
  }

  void stopAnimation() {
    _animController.stop();
  }

  @override
  Widget build(BuildContext context) {
    List<ui.FontVariation> fontVariations = [];
    for (int i = 0; i < _fvAxes.length; i++) {
      fontVariations
          .add(ui.FontVariation(_fvAxes[i], _fvAnimations[i].value as double));
    }
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.translationValues(_offsetXAnimation.value as double,
          _offsetYAnimation.value as double, 0)
        ..scale(_scaleAnimation.value)
        ..rotateZ(widget.baseRotation + (_rotationAnimation.value as double)),
      child: IgnorePointer(
        child: Text(
          widget.text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: _colorAnimation.value as Color?,
            fontFamily: 'Amstelvar',
            fontSize: widget.size,
            fontVariations: fontVariations,
          ),
        ),
      ),
    );
  }

  void initAnimations(List<WonkyAnimSetting> settings) {
    _animController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.animDurationMillis),
    );
    for (WonkyAnimSetting s in settings) {
      final curve = CurvedAnimation(
        parent: _animController,
        curve: Interval(s.startAt, s.endAt, curve: s.curve),
      );
      late Animation animation;
      if (s.property == 'color') {
        animation = ColorTween(
                begin: s.fromTo.fromValue() as Color?,
                end: s.fromTo.toValue() as Color?)
            .animate(curve);
      } else {
        animation = Tween<double>(
                begin: s.fromTo.fromValue() as double,
                end: s.fromTo.toValue() as double)
            .animate(curve);
      }
      if (s.type == 'fv') {
        _fvAxes.add(s.property);
        _fvAnimations.add(animation);
      } else if (s.type == 'basic') {
        switch (s.property) {
          case 'scale':
            {
              _scaleAnimation = animation;
            }
          case 'rotation':
            {
              _rotationAnimation = animation;
            }
          case 'offsetX':
            {
              _offsetXAnimation = animation;
            }
          case 'offsetY':
            {
              _offsetYAnimation = animation;
            }
          case 'color':
            {
              _colorAnimation = animation;
            }
          default:
            {
              if (kDebugMode) {
                print(
                    '**ERROR** unrecognized property to animate: ${s.property}');
              }
            }
            break;
        }
      }
      // save refs to all curves just to persist in mem, don't need to touch them again
      _curves.add(curve);
    }
  }
}

abstract class WCRange<T> {
  WCRange();
  T fromValue();
  T toValue();
}

class RangeColor implements WCRange<Color> {
  Color from;
  Color to;
  RangeColor({required this.from, required this.to});
  @override
  Color fromValue() {
    return from;
  }

  @override
  Color toValue() {
    return to;
  }
}

class RangeDbl implements WCRange<double> {
  double from;
  double to;

  RangeDbl({required this.from, required this.to});

  @override
  double fromValue() {
    return from;
  }

  @override
  double toValue() {
    return to;
  }
}

class WonkyAnimSetting {
  // just the animation
  String type; // 'fv' for fontVariation, 'basic' for everything else
  String property; //font variation axis, or 'size'/'rotation'/etc.
  WCRange fromTo;
  double startAt; // 0 to 1 rel to controller
  double endAt; // same as start
  Curve curve;
  WonkyAnimSetting({
    required this.type,
    required this.property,
    required this.fromTo,
    required this.startAt,
    required this.endAt,
    required this.curve,
  });
}
