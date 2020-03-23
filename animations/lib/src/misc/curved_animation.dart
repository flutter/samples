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

class MyCurve {
  Curve curve;
  String curveName;
  MyCurve({this.curve, this.curveName});
}

class _CurvedAnimationDemoState extends State<CurvedAnimationDemo>
    with SingleTickerProviderStateMixin {
  static const String routeName = '/misc/curved_animation';
  AnimationController animController;
  Animation<double> animation;
  static const _duration = Duration(seconds: 4);
  TextStyle style = TextStyle(fontSize: 18.0);
  List<MyCurve> forwardCurves = [
    MyCurve(curve: Curves.bounceIn, curveName: 'Bounce In'),
    MyCurve(curve: Curves.easeInCubic, curveName: 'Ease In Cubic'),
    MyCurve(curve: Curves.easeInExpo, curveName: 'Ease In Expo'),
    MyCurve(curve: Curves.elasticIn, curveName: 'Elastic In'),
    MyCurve(curve: Curves.easeInQuart, curveName: 'Ease In Quart'),
    MyCurve(curve: Curves.easeInCirc, curveName: 'Ease In Circ'),
  ];
  List<MyCurve> reverseCurves = [
    MyCurve(curve: Curves.bounceOut, curveName: 'Bounce Out'),
    MyCurve(curve: Curves.easeOutCubic, curveName: 'Ease Out Cubic'),
    MyCurve(curve: Curves.easeOutExpo, curveName: 'Ease Out Expo'),
    MyCurve(curve: Curves.elasticOut, curveName: 'Elastic Out'),
    MyCurve(curve: Curves.easeOutQuart, curveName: 'Ease Out Quart'),
    MyCurve(curve: Curves.easeOutCirc, curveName: 'Ease Out Circ')
  ];
  MyCurve selectedForwardCurve, selectedReverseCurve;
  CurvedAnimation curvedAnimation;
  @override
  void initState() {
    super.initState();
    animController = AnimationController(
      duration: _duration,
      vsync: this,
    );
    selectedForwardCurve = forwardCurves[0];
    selectedReverseCurve = reverseCurves[0];
    curvedAnimation = CurvedAnimation(
      parent: animController,
      curve: selectedForwardCurve.curve,
      reverseCurve: selectedReverseCurve.curve,
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
          SizedBox(height: 20.0),
          Text(
            'Select Curve for forward rotation',
            style: style,
          ),
          DropdownButton<MyCurve>(
            items: forwardCurves.map((dropDownItem) {
              return DropdownMenuItem<MyCurve>(
                  value: dropDownItem, child: Text(dropDownItem.curveName));
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
            'Select Curve for reverse rotation',
            style: style,
          ),
          DropdownButton<MyCurve>(
            items: reverseCurves.map((dropDownItem) {
              return DropdownMenuItem<MyCurve>(
                  value: dropDownItem, child: Text(dropDownItem.curveName));
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
                animController.forward();
              },
              child: Text('Animate'))
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
