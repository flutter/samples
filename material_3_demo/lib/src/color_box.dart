// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ColorBox extends StatefulWidget {
  const ColorBox({
    super.key,
    required this.label,
    required this.tone,
    required this.color,
    required this.onColor,
    required this.height,
    required this.width,
    this.displayPaletteInfo = false,
  });

  final String label;
  final String tone;
  final Color color, onColor;
  final double height, width;
  final bool displayPaletteInfo;

  @override
  State<ColorBox> createState() => _ColorBoxState();
}

class _ColorBoxState extends State<ColorBox> {
  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    final fonts = Theme.of(context).textTheme;
    return MouseRegion(
      onEnter: (_) {
        if (mounted) setState(() => hovered = true);
      },
      onExit: (_) {
        if (mounted) setState(() => hovered = false);
      },
      child: Container(
        color: widget.color,
        height: widget.height,
        width: widget.width,
        child: DefaultTextStyle(
          style: fonts.labelSmall!.copyWith(color: widget.onColor),
          child: Stack(
            children: [
              Positioned(top: 10, left: 10, child: Text(widget.label)),
              Positioned(
                bottom: 10,
                right: 10,
                child: Text(widget.displayPaletteInfo ? widget.tone : ''),
              ),
              if (hovered)
                Positioned(
                  top: 0,
                  right: 0,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    color: widget.onColor,
                    tooltip: 'Copy hex color',
                    icon: const Icon(Icons.copy, size: 24),
                    onPressed: () async {
                      final messenger = ScaffoldMessenger.of(context);
                      // Copy color as hex to clipboard
                      final c = widget.color;

                      final hex =
                          '#${_colorChannelToHex(c.r)}'
                          '${_colorChannelToHex(c.g)}'
                          '${_colorChannelToHex(c.b)}';

                      final data = ClipboardData(text: hex);
                      await Clipboard.setData(data);
                      messenger.hideCurrentSnackBar();
                      messenger.showSnackBar(
                        SnackBar(content: Text('Copied $hex to clipboard')),
                      );
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

String _colorChannelToHex(double value) {
  final intVal = (value * 255).round();
  return intVal.toRadixString(16).padLeft(2, '0');
}
