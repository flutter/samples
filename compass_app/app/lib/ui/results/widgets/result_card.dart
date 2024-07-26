import 'package:compass_model/model.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../core/themes/text_styles.dart';
import '../../core/ui/tag_chip.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({
    super.key,
    required this.destination,
    required this.onTap,
  });

  final Destination destination;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Stack(
        fit: StackFit.expand,
        children: [
          CachedNetworkImage(
            imageUrl: destination.imageUrl,
            fit: BoxFit.fitHeight,
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          Positioned(
            bottom: 12.0,
            left: 12.0,
            right: 12.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  destination.name.toUpperCase(),
                  style: TextStyles.cardTitleStyle,
                ),
                const SizedBox(
                  height: 6,
                ),
                Wrap(
                  spacing: 4.0,
                  runSpacing: 4.0,
                  direction: Axis.horizontal,
                  children:
                      destination.tags.map((e) => TagChip(tag: e)).toList(),
                ),
              ],
            ),
          ),
          // Handle taps
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
