// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EasingAnimation extends StatefulWidget {
  static const String routeName = '/basics/easing';

  @override
  EasingAnimationWidgetState createState() => EasingAnimationWidgetState();
}

class EasingAnimationWidgetState extends State<EasingAnimation>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    _controller.forward();
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Scaffold(
              body: Transform(
            transform:
                Matrix4.translationValues(_animation.value * width, 0.0, 0.0),
            child: Center(
                child: Container(
              width: 200.0,
              height: 200.0,
              color: Colors.black12,
            )),
          ));
        });
  }

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    _animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    ))
      ..addStatusListener(handler);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void handler(dynamic status) {
    if (status == AnimationStatus.completed) {
      _animation.removeStatusListener(handler);
      _controller.reset();
      _animation = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.fastOutSlowIn,
      ))
        ..addStatusListener((status) {
          if (status == AnimationStatus.completed) {
            Navigator.pop(context);
          }
        });
      _controller.forward();
    }
  }
}
