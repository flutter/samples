// Copyright 2023 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart' show kDebugMode;

class WonkyChar extends StatefulWidget {
  final String text;
  final double size;
  final double baseRotation;
  final int animDurationMillis;
  final List<WonkyAnimSetting> animationSettings;
  const WonkyChar({
    Key? key,
    required this.text,
    required this.size,
    this.baseRotation = 0,
    this.animDurationMillis = 1000,
    this.animationSettings = const <WonkyAnimSetting>[],
  }) : super(key: key);

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
    List<FontVariation> fontVariations = [];
    for (int i = 0; i < _fvAxes.length; i++) {
      fontVariations.add(FontVariation(_fvAxes[i], _fvAnimations[i].value));
    }
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.translationValues(
          _offsetXAnimation.value, _offsetYAnimation.value, 0)
        ..scale(_scaleAnimation.value)
        ..rotateZ(widget.baseRotation + _rotationAnimation.value),
      child: IgnorePointer(
        child: Text(
          widget.text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: _colorAnimation.value,
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
        animation =
            ColorTween(begin: s.fromTo.fromValue(), end: s.fromTo.toValue())
                .animate(curve);
      } else {
        animation =
            Tween<double>(begin: s.fromTo.fromValue(), end: s.fromTo.toValue())
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
            break;
          case 'rotation':
            {
              _rotationAnimation = animation;
            }
            break;
          case 'offsetX':
            {
              _offsetXAnimation = animation;
            }
            break;
          case 'offsetY':
            {
              _offsetYAnimation = animation;
            }
            break;
          case 'color':
            {
              _colorAnimation = animation;
            }
            break;
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

abstract class WCRange {
  WCRange();
  fromValue() {}
  toValue() {}
}

class RangeColor implements WCRange {
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

class RangeDbl implements WCRange {
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

// Inspect variable font files at https://wakamaifondue.com/beta/
/*  Roboto Flex axes and ranges
      opsz [ 8..144 ]     optical size 
      wght [ 100..1000 ]  weight       
      GRAD [ -200..150 ]  grade        
      wdth [ 25..151 ]    width        
      slnt [ -10..0 ]     slant        
      XOPQ [ 27..175 ]    parametric thick stroke  
      YOPQ [ 25..135 ]    parametric thin stroke
      XTRA [ 323..603 ]   parametric counter width
      YTUC [ 528..760 ]   parametric uppercase height
      YTLC [ 416..570 ]   parametric lowercase height
      YTAS [ 649..854 ]   parametric ascender height
      YTDE [ -305..-98 ]  parametric descender depth
      YTFI [ 560..788 ]   parametric figure height
  */

/* 
    Amstelvar axes and ranges
      opsz [ 8..144 ]     optical size 
      wght [ 100..1000 ]  weight       
      GRAD [ -300..500 ]  grade        
      wdth [ 50..125 ]    width        
      XOPQ [ 18..263 ]    parametric thick stroke  
      YOPQ [ 15..132 ]    parametric thin stroke
      XTRA [ 324..640 ]   parametric counter width
      YTUC [ 500..1000 ]   parametric uppercase height
      YTLC [ 420..570 ]   parametric lowercase height
      YTAS [ 500..983 ]   parametric ascender height
      YTDE [ -500..-138 ]  parametric descender depth
      YTFI [ 425..1000 ]   parametric figure height  
*/