import 'package:cached_network_image/cached_network_image.dart';
import 'package:compass_model/model.dart';
import 'package:flutter/material.dart';

import '../../core/ui/custom_checkbox.dart';

class ActivityEntry extends StatelessWidget {
  const ActivityEntry({
    super.key,
    required this.activity,
    required this.selected,
    required this.onChanged,
  });

  final Activity activity;
  final bool selected;
  final ValueChanged<bool?> onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              imageUrl: activity.imageUrl,
              height: 80,
              width: 80,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  activity.timeOfDay.name.toUpperCase(),
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                Text(
                  activity.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          CustomCheckbox(
            key: ValueKey('${activity.ref}-checkbox'),
            value: selected,
            onChanged: onChanged,
          )
        ],
      ),
    );
  }
}
