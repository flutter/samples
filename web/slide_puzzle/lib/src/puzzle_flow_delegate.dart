// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'core/puzzle_proxy.dart';
import 'flutter.dart';

class PuzzleFlowDelegate extends FlowDelegate {
  final Size _tileSize;
  final PuzzleProxy _puzzleProxy;

  PuzzleFlowDelegate(this._tileSize, this._puzzleProxy, Listenable repaint)
      : super(repaint: repaint);

  @override
  Size getSize(BoxConstraints constraints) => Size(
      _tileSize.width * _puzzleProxy.width,
      _tileSize.height * _puzzleProxy.height);

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) =>
      BoxConstraints.tight(_tileSize);

  @override
  void paintChildren(FlowPaintingContext context) {
    for (var i = 0; i < _puzzleProxy.length; i++) {
      final tileLocation = _puzzleProxy.location(i);
      context.paintChild(
        i,
        transform: Matrix4.translationValues(
          tileLocation.x * _tileSize.width,
          tileLocation.y * _tileSize.height,
          i.toDouble(),
        ),
      );
    }
  }

  @override
  bool shouldRepaint(covariant PuzzleFlowDelegate oldDelegate) =>
      _tileSize != oldDelegate._tileSize ||
      !identical(oldDelegate._puzzleProxy, _puzzleProxy);
}
