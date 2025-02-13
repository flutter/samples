// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'constants.dart';

class ExpandedImageColorAction extends StatelessWidget {
  const ExpandedImageColorAction({
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
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 150.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(
            ColorImageProvider.values.length,
            (i) => _ImageButton(
              index: i,
              select:
                  imageSelected == ColorImageProvider.values[i] &&
                          colorSelectionMethod == ColorSelectionMethod.image
                      ? null
                      : () => handleImageSelect(i),
            ),
          ),
        ),
      ),
    );
  }
}

class _ImageButton extends StatelessWidget {
  const _ImageButton({required this.index, required this.select});

  final void Function()? select;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: ColorImageProvider.values[index].name,
      child: InkWell(
        borderRadius: BorderRadius.circular(4.0),
        onTap: select,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            borderRadius: BorderRadius.circular(4.0),
            elevation: select != null ? 3 : 0,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4.0),
                child: Image(
                  image: NetworkImage(ColorImageProvider.values[index].url),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
