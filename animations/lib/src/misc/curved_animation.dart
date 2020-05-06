// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math' as math;
import 'package:flutter/material.dart';

class CurvedAnimationDemo extends StatefulWidget {
  static const String routeName = '/misc/curved_animation';

  @override
  _CurvedAnimationDemoState createState() => _CurvedAnimationDemoState();
}

class CurveChoice {
  final Curve curve;
  final String name;
  const CurveChoice({this.curve, this.name});
}

class _CurvedAnimationDemoState extends State<CurvedAnimationDemo>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animationRotation;
  Animation<Offset> animationTranslation;
  static const _duration = Duration(seconds: 4);
  List<CurveChoice> curves = [
    CurveChoice(curve: Curves.bounceIn, name: 'Bounce In'),
    CurveChoice(curve: Curves.bounceOut, name: 'Bounce Out'),
    CurveChoice(curve: Curves.easeInCubic, name: 'Ease In Cubic'),
    CurveChoice(curve: Curves.easeOutCubic, name: 'Ease Out Cubic'),
    CurveChoice(curve: Curves.easeInExpo, name: 'Ease In Expo'),
    CurveChoice(curve: Curves.easeOutExpo, name: 'Ease Out Expo'),
    CurveChoice(curve: Curves.elasticIn, name: 'Elastic In'),
    CurveChoice(curve: Curves.elasticOut, name: 'Elastic Out'),
    CurveChoice(curve: Curves.easeInQuart, name: 'Ease In Quart'),
    CurveChoice(curve: Curves.easeOutQuart, name: 'Ease Out Quart'),
    CurveChoice(curve: Curves.easeInCirc, name: 'Ease In Circle'),
    CurveChoice(curve: Curves.easeOutCirc, name: 'Ease Out Circle'),
  ];
  CurveChoice selectedForwardCurve, selectedReverseCurve;
  CurvedAnimation curvedAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: _duration,
      vsync: this,
    );
    selectedForwardCurve = curves[0];
    selectedReverseCurve = curves[0];
    curvedAnimation = CurvedAnimation(
      parent: controller,
      curve: selectedForwardCurve.curve,
      reverseCurve: selectedReverseCurve.curve,
    );
    animationRotation = Tween<double>(
      begin: 0,
      end: 2 * math.pi,
    ).animate(curvedAnimation)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        }
      });
    animationTranslation = Tween<Offset>(
      begin: Offset(-1, 0),
      end: Offset(1, 0),
    ).animate(curvedAnimation)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Curved Animation'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20.0),
          Text(
            'Select Curve for forward motion',
            style: Theme.of(context).textTheme.headline6,
          ),
          DropdownButton<CurveChoice>(
            items: curves.map((curve) {
              return DropdownMenuItem<CurveChoice>(
                  value: curve, child: Text(curve.name));
            }).toList(),
            onChanged: (newCurve) {
              setState(() {
                selectedForwardCurve = newCurve;
                curvedAnimation.curve = selectedForwardCurve.curve;
              });
            },
            value: selectedForwardCurve,
          ),
          SizedBox(height: 15.0),
          Text(
            'Select Curve for reverse motion',
            style: Theme.of(context).textTheme.headline6,
          ),
          DropdownButton<CurveChoice>(
            items: curves.map((curve) {
              return DropdownMenuItem<CurveChoice>(
                  value: curve, child: Text(curve.name));
            }).toList(),
            onChanged: (newCurve) {
              setState(() {
                selectedReverseCurve = newCurve;
                curvedAnimation.reverseCurve = selectedReverseCurve.curve;
              });
            },
            value: selectedReverseCurve,
          ),
          SizedBox(height: 35.0),
          Transform.rotate(
            angle: animationRotation.value,
            child: Center(
              child: Container(
                child: FlutterLogo(
                  size: 100,
                ),
              ),
            ),
          ),
          SizedBox(height: 35.0),
          FractionalTranslation(
            translation: animationTranslation.value,
            child: Container(
              child: FlutterLogo(
                size: 100,
              ),
            ),
          ),
          SizedBox(height: 25.0),
          RaisedButton(
            onPressed: () {
              controller.forward();
            },
            child: Text('Animate'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
