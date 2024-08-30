// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../data/veggie.dart';
import '../styles.dart';

/// A Card-like Widget that responds to tap events by animating changes to its
/// elevation and invoking an optional [onPressed] callback.
class PressableCard extends StatefulWidget {
  const PressableCard({
    required this.child,
    this.borderRadius = const BorderRadius.all(Radius.circular(16)),
    this.upElevation = 2,
    this.downElevation = 0,
    this.shadowColor = CupertinoColors.black,
    this.duration = const Duration(milliseconds: 100),
    this.onPressed,
    super.key,
  });

  final VoidCallback? onPressed;

  final Widget child;

  final BorderRadius borderRadius;

  final double upElevation;

  final double downElevation;

  final Color shadowColor;

  final Duration duration;

  @override
  State<PressableCard> createState() => _PressableCardState();
}

class _PressableCardState extends State<PressableCard> {
  bool cardIsDown = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() => cardIsDown = false);
        if (widget.onPressed != null) {
          widget.onPressed!();
        }
      },
      onTapDown: (details) => setState(() => cardIsDown = true),
      onTapCancel: () => setState(() => cardIsDown = false),
      child: AnimatedPhysicalModel(
        elevation: cardIsDown ? widget.downElevation : widget.upElevation,
        borderRadius: widget.borderRadius,
        shape: BoxShape.rectangle,
        shadowColor: widget.shadowColor,
        duration: widget.duration,
        color: CupertinoColors.lightBackgroundGray,
        child: ClipRRect(
          borderRadius: widget.borderRadius,
          child: widget.child,
        ),
      ),
    );
  }
}

class VeggieCard extends StatelessWidget {
  const VeggieCard(this.veggie, this.isInSeason, this.isPreferredCategory,
      {super.key});

  /// Veggie to be displayed by the card.
  final Veggie veggie;

  /// If the veggie is in season, it's displayed more prominently and the
  /// image is fully saturated. Otherwise, it's reduced and de-saturated.
  final bool isInSeason;

  /// Whether [veggie] falls into one of user's preferred [VeggieCategory]s
  final bool isPreferredCategory;

  Widget _buildDetails(BuildContext context) {
    final themeData = CupertinoTheme.of(context);
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 16, 16, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              veggie.name,
              style: Styles.cardTitleText(themeData),
            ),
            const SizedBox(height: 8),
            Text(
              veggie.shortDescription,
              style: Styles.cardDescriptionText(themeData),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PressableCard(
      onPressed: () {
        // GoRouter does not support relative routes,
        // so navigate to the absolute route.
        // see https://github.com/flutter/flutter/issues/108177
        context.go('/list/details/${veggie.id}');
      },
      child: Stack(
        children: [
          Semantics(
            label: 'A card background featuring ${veggie.name}',
            child: Container(
              height: isInSeason ? 300 : 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter:
                      isInSeason ? null : Styles.desaturatedColorFilter,
                  image: AssetImage(
                    veggie.imageAssetPath,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: _buildDetails(context),
          ),
        ],
      ),
    );
  }
}
