// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'constants.dart';

class BrightnessButton extends StatelessWidget {
  const BrightnessButton({
    super.key,
    required this.handleBrightnessChange,
    this.showTooltipBelow = true,
  });

  final void Function(bool useLightMode) handleBrightnessChange;
  final bool showTooltipBelow;

  @override
  Widget build(BuildContext context) {
    final isBright = Theme.of(context).brightness == Brightness.light;
    return Tooltip(
      preferBelow: showTooltipBelow,
      message: 'Toggle brightness',
      child: IconButton(
        icon:
            isBright
                ? const Icon(Icons.dark_mode_outlined)
                : const Icon(Icons.light_mode_outlined),
        onPressed: () => handleBrightnessChange(!isBright),
      ),
    );
  }
}

class Material3Button extends StatelessWidget {
  const Material3Button({
    super.key,
    required this.handleMaterialVersionChange,
    this.showTooltipBelow = true,
  });

  final void Function() handleMaterialVersionChange;
  final bool showTooltipBelow;

  @override
  Widget build(BuildContext context) {
    final useMaterial3 = Theme.of(context).useMaterial3;
    return Tooltip(
      preferBelow: showTooltipBelow,
      message: 'Switch to Material ${useMaterial3 ? 2 : 3}',
      child: IconButton(
        icon:
            useMaterial3
                ? const Icon(Icons.filter_2)
                : const Icon(Icons.filter_3),
        onPressed: handleMaterialVersionChange,
      ),
    );
  }
}

class ColorSeedButton extends StatelessWidget {
  const ColorSeedButton({
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
    return PopupMenuButton(
      icon: const Icon(Icons.palette_outlined),
      tooltip: 'Select a seed color',
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      itemBuilder: (context) {
        return List.generate(ColorSeed.values.length, (index) {
          ColorSeed currentColor = ColorSeed.values[index];

          return PopupMenuItem(
            value: index,
            enabled:
                currentColor != colorSelected ||
                colorSelectionMethod != ColorSelectionMethod.colorSeed,
            child: Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(
                    currentColor == colorSelected &&
                            colorSelectionMethod != ColorSelectionMethod.image
                        ? Icons.color_lens
                        : Icons.color_lens_outlined,
                    color: currentColor.color,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(currentColor.label),
                ),
              ],
            ),
          );
        });
      },
      onSelected: handleColorSelect,
    );
  }
}

class ColorImageButton extends StatelessWidget {
  const ColorImageButton({
    super.key,
    required this.handleImageSelect,
    required this.imageSelected,
    required this.colorSelectionMethod,
  });

  final void Function(int) handleImageSelect;
  final ColorImageProvider imageSelected;
  final ColorSelectionMethod colorSelectionMethod;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.image_outlined),
      tooltip: 'Select a color extraction image',
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      itemBuilder: (context) {
        return List.generate(ColorImageProvider.values.length, (index) {
          final currentImageProvider = ColorImageProvider.values[index];

          return PopupMenuItem(
            value: index,
            enabled:
                currentImageProvider != imageSelected ||
                colorSelectionMethod != ColorSelectionMethod.image,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 48),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image(
                          image: NetworkImage(currentImageProvider.url),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(currentImageProvider.label),
                ),
              ],
            ),
          );
        });
      },
      onSelected: handleImageSelect,
    );
  }
}
