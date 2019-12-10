// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// [HighlightFocus] is a helper widget for giving a child focus
/// allowing tab-navigation.
/// Wrap your widget as [child] of a [HighlightFocus] widget.
class HighlightFocus extends StatefulWidget {
  const HighlightFocus({
    @required this.onPressed,
    @required this.child,
    this.highlightColor,
    this.borderColor,
    this.hasFocus = true,
  });

  /// [onPressed] is called when you press space, enter, or numpad-enter
  /// when the widget is focused.
  final VoidCallback onPressed;

  /// [child] is your widget.
  final Widget child;

  /// [highlightColor] is the color filled in the border when the widget
  /// is focused.
  /// Use [Colors.transparent] if you do not want one.
  /// Use an opacity less than 1 to make the underlying widget visible.
  final Color highlightColor;

  /// [borderColor] is the color of the border when the widget is focused.
  final Color borderColor;

  /// [hasFocus] is true when focusing on the widget is allowed.
  /// Set to false if you want the child to skip focus.
  final bool hasFocus;

  @override
  _HighlightFocusState createState() => _HighlightFocusState();
}

class _HighlightFocusState extends State<HighlightFocus> {
  bool isFocused;

  @override
  void initState() {
    isFocused = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color _highlightColor = widget.highlightColor ??
        Theme.of(context).colorScheme.primary.withOpacity(0.5);
    Color _borderColor =
        widget.borderColor ?? Theme.of(context).colorScheme.onPrimary;

    BoxDecoration _highlightedDecoration = BoxDecoration(
      color: _highlightColor,
      border: Border.all(
        color: _borderColor,
        width: 2,
      ),
    );

    return Focus(
      canRequestFocus: widget.hasFocus,
      onFocusChange: (newValue) {
        setState(() {
          isFocused = newValue;
        });
      },
      onKey: (node, event) {
        if (event is RawKeyDownEvent &&
            (event.logicalKey == LogicalKeyboardKey.space ||
                event.logicalKey == LogicalKeyboardKey.enter ||
                event.logicalKey == LogicalKeyboardKey.numpadEnter)) {
          widget.onPressed();
          return true;
        } else {
          return false;
        }
      },
      child: Container(
        foregroundDecoration: isFocused ? _highlightedDecoration : null,
        child: widget.child,
      ),
    );
  }
}
