// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

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
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _curve = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    _animation = Tween(
      begin: 1.0,
      end: 0.0,
    ).animate(_curve);

    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) _controller.forward();
    });

    super.initState();
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
        child: FadeTransition(
          opacity: _animation,
          child: Icon(
            Icons.star,
            color: Colors.amber,
            size: 300,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => setState(() {
          _controller.forward();
        }),
        icon: Icon(
          Icons.play_arrow,
          color: Colors.white,
        ),
        label: Text(
          "Animate",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
