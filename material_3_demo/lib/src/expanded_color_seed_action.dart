// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'constants.dart';

class ExpandedColorSeedAction extends StatelessWidget {
  const ExpandedColorSeedAction({
    super.key,
    required this.handleColorSelect,
    required this.colorSelected,
    required this.colorSelectionMethod,
  });

  final void Function(int) handleColorSelect;
  final ColorSeed colorSelected;
  final ColorSelectionMethod colorSelectionMethod;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 200.0),
      child: GridView.count(
        crossAxisCount: 3,
        children: List.generate(
          ColorSeed.values.length,
          (i) => IconButton(
            icon: const Icon(Icons.radio_button_unchecked),
            color: ColorSeed.values[i].color,
            isSelected:
                colorSelected.color == ColorSeed.values[i].color &&
                colorSelectionMethod == ColorSelectionMethod.colorSeed,
            selectedIcon: const Icon(Icons.circle),
            onPressed: () {
              handleColorSelect(i);
            },
            tooltip: ColorSeed.values[i].label,
          ),
        ),
      ),
    );
  }
}
