import 'package:compass_app/common/themes/text_styles.dart';
import 'package:compass_app/features/results/business/model/destination.dart';
import 'package:flutter/material.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({
    super.key,
    required this.destination,
  });

  final Destination destination;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      // TODO: Improve image loading and caching
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            destination.imageUrl,
            fit: BoxFit.fitHeight,
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
                  style: cardTitleStyle,
                ),
                Wrap(
                  direction: Axis.horizontal,
                  children: destination.tags
                      .map((e) => Chip(label: Text(e)))
                      .toList(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
