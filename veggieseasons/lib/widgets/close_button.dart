// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:veggieseasons/styles.dart';

class FrostedBox extends StatelessWidget {
  const FrostedBox({
    this.child,
    Key key,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Styles.frostedBackground,
        ),
        child: child,
      ),
    );
  }
}

class CloseButton extends StatelessWidget {
  const CloseButton(this.onPressed);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: ClipOval(
        child: FrostedBox(
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Icon(
                CupertinoIcons.clear_thick,
                size: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
