// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BorderTabIndicator extends Decoration {
  BorderTabIndicator({this.indicatorHeight, this.textScaleFactor}) : super();

  final double indicatorHeight;
  final double textScaleFactor;

  @override
  _BorderPainter createBoxPainter([VoidCallback onChanged]) {
    return _BorderPainter(
        this, indicatorHeight, this.textScaleFactor, onChanged);
  }
}

class _BorderPainter extends BoxPainter {
  _BorderPainter(
    this.decoration,
    this.indicatorHeight,
    this.textScaleFactor,
    VoidCallback onChanged,
  )   : assert(decoration != null),
        assert(indicatorHeight >= 0),
        super(onChanged);

  final BorderTabIndicator decoration;
  final double indicatorHeight;
  final double textScaleFactor;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration != null);
    assert(configuration.size != null);
    final horizontalInset = 16 - 4 * textScaleFactor;
    final rect = Offset(offset.dx + horizontalInset,
            (configuration.size.height / 2) - indicatorHeight / 2 - 1) &
        Size(configuration.size.width - 2 * horizontalInset, indicatorHeight);
    final paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 2;
    canvas.drawRRect(
      RRect.fromRectAndRadius(rect, Radius.circular(56)),
      paint,
    );
  }
}
