// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'constants.dart';
import 'expanded_color_seed_action.dart';
import 'expanded_image_color_action.dart';

class ExpandedTrailingActions extends StatelessWidget {
  const ExpandedTrailingActions({
    super.key,
    required this.useLightMode,
    required this.handleBrightnessChange,
    required this.useMaterial3,
    required this.handleMaterialVersionChange,
    required this.handleColorSelect,
    required this.handleImageSelect,
    required this.imageSelected,
    required this.colorSelected,
    required this.colorSelectionMethod,
  });

  final void Function(bool) handleBrightnessChange;
  final void Function() handleMaterialVersionChange;
  final void Function(int) handleImageSelect;
  final void Function(int) handleColorSelect;

  final bool useLightMode;
  final bool useMaterial3;

  final ColorImageProvider imageSelected;
  final ColorSeed colorSelected;
  final ColorSelectionMethod colorSelectionMethod;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final trailingActionsBody = Container(
      constraints: const BoxConstraints.tightFor(width: 250),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              const Text('Brightness'),
              Expanded(child: Container()),
              Switch(
                value: useLightMode,
                onChanged: (value) {
                  handleBrightnessChange(value);
                },
              ),
            ],
          ),
          Row(
            children: [
              useMaterial3
                  ? const Text('Material 3')
                  : const Text('Material 2'),
              Expanded(child: Container()),
              Switch(
                value: useMaterial3,
                onChanged: (_) {
                  handleMaterialVersionChange();
                },
              ),
            ],
          ),
          const Divider(),
          ExpandedColorSeedAction(
            handleColorSelect: handleColorSelect,
            colorSelected: colorSelected,
            colorSelectionMethod: colorSelectionMethod,
          ),
          const Divider(),
          ExpandedImageColorAction(
            handleImageSelect: handleImageSelect,
            imageSelected: imageSelected,
            colorSelectionMethod: colorSelectionMethod,
          ),
        ],
      ),
    );
    return screenHeight > 740
        ? trailingActionsBody
        : SingleChildScrollView(child: trailingActionsBody);
  }
}
