// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import '../styles.dart';

/// Partially overlays and then blurs its child's background.
class FrostedBox extends StatelessWidget {
  const FrostedBox({
    this.child,
    super.key,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ui.ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: Styles.frostedBackground,
        ),
        child: child,
      ),
    );
  }
}

/// An Icon that implicitly animates changes to its color.
class ColorChangingIcon extends ImplicitlyAnimatedWidget {
  const ColorChangingIcon(
    this.icon, {
    this.color = CupertinoColors.black,
    this.size,
    required super.duration,
    super.key,
  });

  final Color color;

  final IconData icon;

  final double? size;

  @override
  AnimatedWidgetBaseState<ColorChangingIcon> createState() =>
      _ColorChangingIconState();
}

class _ColorChangingIconState
    extends AnimatedWidgetBaseState<ColorChangingIcon> {
  ColorTween? _colorTween;

  @override
  Widget build(BuildContext context) {
    return Icon(
      widget.icon,
      semanticLabel: 'Close button',
      size: widget.size,
      color: _colorTween?.evaluate(animation),
    );
  }

  @override
  void forEachTween(TweenVisitor<dynamic> visitor) {
    _colorTween = visitor(
      _colorTween,
      widget.color,
      (dynamic value) => ColorTween(begin: value as Color?),
    ) as ColorTween?;
  }
}

/// A close button that invokes a callback when pressed.
class CloseButton extends _DetailPageButton {
  const CloseButton(VoidCallback onPressed, {super.key})
      : super(onPressed, CupertinoIcons.chevron_back);
}

/// A share button that invokes a callback when pressed.
class ShareButton extends _DetailPageButton {
  const ShareButton(VoidCallback onPressed, {super.key})
      : super(onPressed, CupertinoIcons.share);
}

/// A favorite button that invokes a callback when pressed.
class FavoriteButton extends _DetailPageButton {
  const FavoriteButton(VoidCallback onPressed, bool isFavorite, {super.key})
      : super(
          onPressed,
          isFavorite ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
        );
}

class _DetailPageButton extends StatefulWidget {
  const _DetailPageButton(this.onPressed, this.icon, {super.key});

  final VoidCallback onPressed;
  final IconData icon;

  @override
  State<_DetailPageButton> createState() => _DetailPageButtonState();
}

class _DetailPageButtonState extends State<_DetailPageButton> {
  bool tapInProgress = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() => tapInProgress = true);
      },
      onTapUp: (details) {
        setState(() => tapInProgress = false);
        widget.onPressed();
      },
      onTapCancel: () {
        setState(() => tapInProgress = false);
      },
      child: ClipOval(
        child: FrostedBox(
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: ColorChangingIcon(
                widget.icon,
                duration: const Duration(milliseconds: 300),
                color: tapInProgress
                    ? Styles.closeButtonPressed
                    : Styles.closeButtonUnpressed,
                size: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
