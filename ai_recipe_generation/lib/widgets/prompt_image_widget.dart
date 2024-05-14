import 'package:ai_recipe_generation/theme.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_symbols_icons/symbols.dart';

import 'cross_image_widget.dart';

typedef OnTapRemoveImageCallback = void Function(XFile);

class PromptImage extends StatelessWidget {
  const PromptImage({
    super.key,
    required this.file,
    this.onTapIcon,
    this.width = 100,
  });

  final XFile file;
  final VoidCallback? onTapIcon;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Stack(
        children: [
          Positioned(
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  MarketplaceTheme.defaultBorderRadius,
                ),
              ),
              child: Container(
                foregroundDecoration: BoxDecoration(
                  image: CrossImage.decoration(file),
                ),
              ),
            ),
          ),
          if (onTapIcon != null)
            Positioned(
              right: 5,
              top: 5,
              child: GestureDetector(
                onTap: onTapIcon,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Symbols.remove,
                    size: 16,
                    color: Colors.red.shade400,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
