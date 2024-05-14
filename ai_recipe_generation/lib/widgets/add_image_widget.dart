import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../theme.dart';

class AddImage extends StatefulWidget {
  const AddImage({
    super.key,
    required this.onTap,
    this.height = 100,
    this.width = 100,
  });

  final VoidCallback onTap;
  final double height;
  final double width;

  @override
  State<AddImage> createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  bool hovered = false;
  bool tappedDown = false;

  Color get buttonColor {
    var state = (hovered, tappedDown);
    return switch (state) {
      // tapped down state
      (_, true) => MarketplaceTheme.secondary.withOpacity(.7),
      // hovered
      (true, _) => MarketplaceTheme.secondary.withOpacity(.3),
      // base color
      (_, _) => MarketplaceTheme.secondary.withOpacity(.3),
    };
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          hovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          hovered = false;
        });
      },
      child: GestureDetector(
        onTapDown: (details) {
          setState(() {
            tappedDown = true;
          });
        },
        onTapUp: (details) {
          setState(() {
            tappedDown = false;
          });
          widget.onTap();
        },
        child: SizedBox(
          width: widget.width,
          height: widget.height,
          child: ClipRRect(
            borderRadius:
                BorderRadius.circular(MarketplaceTheme.defaultBorderRadius),
            child: Container(
              decoration: BoxDecoration(
                color: buttonColor,
              ),
              child: const Center(
                child: Icon(
                  Symbols.add_photo_alternate_rounded,
                  size: 32,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
