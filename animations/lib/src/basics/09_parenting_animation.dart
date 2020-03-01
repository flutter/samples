// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ParentingAnimation extends StatefulWidget {
  static const String routeName = '/basics/parenting_animation';

  @override
  ParentingAnimationWidgetState createState() =>
      ParentingAnimationWidgetState();
}

class ParentingAnimationWidgetState extends State<ParentingAnimation>
    with TickerProviderStateMixin {
  Animation<double> growingAnimation;
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    growingAnimation = Tween(begin: 10.0, end: 100.0)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeIn));
    animation = Tween(begin: -0.10, end: 0.0).animate(CurvedAnimation(
      parent: controller,
      curve: Curves.easeIn,
    ))
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        }
        if (status == AnimationStatus.dismissed) {
          Navigator.pop(context);
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    controller.forward();
    return AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return Scaffold(
              body: Align(
                  alignment: Alignment.center,
                  child: Container(
                      child: Center(
                          child: ListView(shrinkWrap: true, children: <Widget>[
                    Transform(
                        transform: Matrix4.translationValues(
                            animation.value * width, 0.0, 0.0),
                        child: Center(
                            child: Container(
                          height: growingAnimation.value,
                          width: growingAnimation.value * 2,
                          color: Colors.black12,
                        ))),
                    Transform(
                        transform: Matrix4.translationValues(
                          animation.value * width,
                          0.0,
                          0.0,
                        ),
                        child: Center(
                            child: Container(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Container(
                            width: 200.0,
                            height: 100.0,
                            color: Colors.black12,
                          ),
                        ))),
                  ])))));
        });
  }
}
