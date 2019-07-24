// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class FocusImageDemo extends StatelessWidget {
  static String routeName = '/misc/focus_image';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Focus Image')),
      body: Grid(),
    );
  }
}

class Grid extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 40,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (context, index) {
          return (index >= 20)
              ? SmallCard('assets/eat_cape_town_sm.jpg')
              : SmallCard('assets/eat_new_orleans_sm.jpg');
        },
      ),
    );
  }
}

Route _expandToPageRoute(BuildContext parentContext, String image) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) {
      return _SecondPage(image);
    },
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var rectAnimation = _rectTween(parentContext)
          .chain(CurveTween(curve: Curves.ease))
          .animate(animation);

      return Stack(
        children: [
          PositionedTransition(rect: rectAnimation, child: child),
        ],
      );
    },
  );
}

Tween<RelativeRect> _rectTween(BuildContext context) {
  var windowSize = MediaQuery.of(context).size;
  var box = context.findRenderObject() as RenderBox;
  var rect = box.localToGlobal(Offset.zero) & box.size;
  var relativeRect = RelativeRect.fromSize(rect, windowSize);

  return RelativeRectTween(
    begin: relativeRect,
    end: RelativeRect.fill,
  );
}

class SmallCard extends StatelessWidget {
  final String image;

  SmallCard(this.image);

  Widget build(BuildContext context) {
    return Card(
      child: Material(
        child: InkWell(
          onTap: () {
            var nav = Navigator.of(context);
            nav.push(_expandToPageRoute(context, image));
          },
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class _SecondPage extends StatelessWidget {
  final String image;

  _SecondPage(this.image);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
