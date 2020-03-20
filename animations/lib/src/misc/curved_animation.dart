// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'dart:math' as math;

class CurvedAnimationDemo extends StatefulWidget {
  static const String routeName = '/misc/curved_animation';
  @override
  _CurvedAnimationDemoState createState() => _CurvedAnimationDemoState();
}

class _CurvedAnimationDemoState extends State<CurvedAnimationDemo>
    with SingleTickerProviderStateMixin {
  static const String routeName = '/misc/curved_animation';
  AnimationController animController;
  Animation<double> animation;
  static const _duration = Duration(seconds: 4);
  List<Curve> forwardCurves = [
    Curves.bounceIn,
    Curves.easeInCubic,
    Curves.easeInExpo,
    Curves.elasticIn,
    Curves.easeInSine,
    Curves.easeInQuart,
    Curves.easeInCirc
  ];
  List<Curve> reverseCurves = [
    Curves.bounceOut,
    Curves.easeOut,
    Curves.easeOutExpo,
    Curves.elasticOut,
    Curves.easeOutSine,
    Curves.easeOutQuart,
    Curves.easeOutCirc
  ];
  var random = math.Random();
  CurvedAnimation curvedAnimation;
  @override
  void initState() {
    super.initState();
    animController = AnimationController(
      duration: _duration,
      vsync: this,
    );
    curvedAnimation = CurvedAnimation(
      parent: animController,
      curve: forwardCurves[0],
      reverseCurve: reverseCurves[0],
    );
    animation = Tween<double>(
      begin: 0,
      end: 2 * math.pi,
    ).animate(curvedAnimation)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          animController.reverse();
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Curved Animation')),
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height / 5),
          Transform.rotate(
            angle: animation.value,
            child: Center(
              child: CircleAvatar(
                backgroundColor: Colors.grey[200],
                radius: 100,
                child: Center(
                  child: FlutterLogo(
                    size: 100,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 25.0),
          RaisedButton(
            onPressed: () {
              curvedAnimation.curve =
                  forwardCurves[random.nextInt(forwardCurves.length)];
              curvedAnimation.reverseCurve =
                  reverseCurves[random.nextInt(reverseCurves.length)];
              animController.forward();
            },
            child: Text('Animate'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    animController.dispose();
    super.dispose();
  }
}
