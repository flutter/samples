// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';

import 'color_options.dart';
import 'event_symbol.dart';

class SymbolEditor extends StatefulWidget {
  final IconData icon;
  final ColorOptions color;

  const SymbolEditor(this.icon, this.color, {super.key});

  @override
  State<SymbolEditor> createState() => _SymbolEditorState();
}

class _SymbolEditorState extends State<SymbolEditor> {
  late IconData _currentIcon = widget.icon;
  late ColorOptions _currentColor = widget.color;
  _SymbolEditorState();

  @override
  Widget build(BuildContext context) {
    // TODO(mit-mit): Should use a Sheet
    // https://github.com/flutter/flutter/issues/42560
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  const Spacer(),
                  CupertinoButton(
                    padding: EdgeInsets.zero,
                    child: const Text('Done'),
                    onPressed: () =>
                        Navigator.pop(context, (_currentIcon, _currentColor)),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Icon(
                _currentIcon,
                size: 48,
                color: _currentColor.color,
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (ColorOptions color in ColorOptions.values)
                    // TODO(mit-mit): Circles should be bigger and have less padding between them.
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      minSize: 0,
                      child: Icon(
                        CupertinoIcons.circle_fill,
                        color: color.color,
                      ),
                      onPressed: () {
                        setState(() {
                          _currentColor = color;
                        });
                      },
                    ),
                ],
              ),
              const SizedBox(height: 16),
              // TODO(mit-mit): File issue for missing Cupertino Divider widget.
              // Should have something similar to the Material devider.
              // https://api.flutter.dev/flutter/material/Divider-class.html
              const Text('. . . . . . . . . . . . . . . '),
              const SizedBox(height: 16),
              Expanded(
                child: GridView.count(
                  primary: false,
                  crossAxisCount: 6,
                  mainAxisSpacing: 10,
                  children: [
                    for (var icon in eventSymbols)
                      CupertinoButton(
                        padding: EdgeInsets.zero,
                        child: Icon(
                          icon,
                          size: 32,
                        ),
                        onPressed: () {
                          setState(() {
                            _currentIcon = icon;
                          });
                        },
                      )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
