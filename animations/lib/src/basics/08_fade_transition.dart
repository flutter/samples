// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

// Refer to the AnimatedWidget docs here - https://api.flutter.dev/flutter/widgets/AnimatedWidget-class.html
// for examples of other common animated widgets.
class FadeTransitionDemo extends StatefulWidget {
  static const String routeName = '/basics/fade_transition';

  @override
  _FadeTransitionDemoState createState() => _FadeTransitionDemoState();
}

class _FadeTransitionDemoState extends State<FadeTransitionDemo>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;
  CurvedAnimation _curve;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _curve = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    _animation = Tween(
      begin: 1.0,
      end: 0.0,
    ).animate(_curve);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Animated Widget',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FadeTransition(
              opacity: _animation,
              child: Icon(
                Icons.star,
                color: Colors.amber,
                size: 300,
              ),
            ),
            RaisedButton(
              child: Text('animate'),
              onPressed: () => setState(() {
                _controller.animateTo(1.0).then<TickerFuture>(
                    (value) => _controller.animateBack(0.0));
              }),
            ),
          ],
        ),
      ),
    );
  }
}
