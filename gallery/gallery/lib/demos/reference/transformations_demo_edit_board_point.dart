// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'transformations_demo_board.dart';
import 'transformations_demo_color_picker.dart';

// The panel for editing a board point.
@immutable
class EditBoardPoint extends StatelessWidget {
  const EditBoardPoint({
    Key key,
    @required this.boardPoint,
    this.onColorSelection,
  })  : assert(boardPoint != null),
        super(key: key);

  final BoardPoint boardPoint;
  final ValueChanged<Color> onColorSelection;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          '${boardPoint.q}, ${boardPoint.r}',
          textAlign: TextAlign.right,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        ColorPicker(
          colors: boardPointColors,
          selectedColor: boardPoint.color,
          onColorSelection: onColorSelection,
        ),
      ],
    );
  }
}
