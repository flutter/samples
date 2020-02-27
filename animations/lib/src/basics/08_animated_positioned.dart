// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedPositionedDemo extends StatefulWidget {
  static String routeName = '/basics/08_animated_positioned';

  _AnimatedPositionedDemoState createState() => _AnimatedPositionedDemoState();
}

class _AnimatedPositionedDemoState extends State<AnimatedPositionedDemo> {
  double topPosition;
  double rightPosition;

  double generateTopPosition(double top) => Random().nextDouble() * top;

  double generateRightPosition(double right) => Random().nextDouble() * right;

  void initState() {
    super.initState();
    topPosition = generateTopPosition(30);
    rightPosition = generateRightPosition(30);
  }

  void changePosition(double top, double right) {
    setState(() {
      topPosition = generateTopPosition(top);
      rightPosition = generateRightPosition(right);
      print(topPosition);
      print(rightPosition);
    });
  }

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // AnimatedPositioned animates position of the given child over the given duration of time.
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: size.height,
        width: size.width,
        padding: EdgeInsets.all(8),
        child: Stack(
          children: <Widget>[
            AnimatedPositioned(
              top: topPosition,
              right: rightPosition,
              duration: Duration(seconds: 1),
              child: RaisedButton(
                color: Colors.purple,
                child: Text(
                  'Change Position',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () =>
                    changePosition(size.height / 2, size.width / 2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
