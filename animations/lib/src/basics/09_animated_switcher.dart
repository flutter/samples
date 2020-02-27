// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:flutter/material.dart';

double generateHeight() => Random().nextDouble() * 200;

double generateWidth() => Random().nextDouble() * 200;

Widget generateContainer() => Container(
      key: GlobalKey(),
      height: generateHeight(),
      width: generateWidth(),
      color: Colors.purple,
    );

class AnimatedSwitcherDemo extends StatefulWidget {
  static String routeName = '/basics/09_animated_switcher';

  _AnimatedSwitcherDemoState createState() => _AnimatedSwitcherDemoState();
}

class _AnimatedSwitcherDemoState extends State<AnimatedSwitcherDemo> {
  Widget container;

  void initState() {
    container = generateContainer();
    super.initState();
  }

  void changeWidget() {
    setState(() {
      container = generateContainer();
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //AnimatedSwitcher Widget is used to switch between different widgets with a
            //given transition. You can change the transitions by using transitionBuilder property.
            AnimatedSwitcher(
              duration: Duration(seconds: 1),
              child: container,
              transitionBuilder: (child, animation) => ScaleTransition(
                child: child,
                scale: animation,
              ),
            ),
            RaisedButton(
              onPressed: () => changeWidget(),
              child: Text(
                "Change Widget",
              ),
            )
          ],
        ),
      ),
    );
  }
}
