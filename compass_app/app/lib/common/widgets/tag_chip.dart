import 'package:compass_app/common/themes/colors.dart';
import 'package:compass_app/common/themes/text_styles.dart';
import 'package:flutter/material.dart';

class TagChip extends StatelessWidget {
  const TagChip({
    super.key,
    required this.tag,
  });

  final String tag;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: AppColors.grey2,
        ),
        child: SizedBox(
          height: 20.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  tag,
                  textAlign: TextAlign.center,
                  style: TextStyles.chipTagStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  
}
