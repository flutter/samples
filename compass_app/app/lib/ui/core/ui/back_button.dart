import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../themes/colors.dart';

/// Custom back button to pop navigation.
class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
    this.onTap,
  });

  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      width: 40.0,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.grey1),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(8.0),
          onTap: () {
            if (onTap != null) {
              onTap!();
            } else {
              context.pop();
            }
          },
          child: Center(
            child: Icon(
              size: 24.0,
              Icons.arrow_back,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
      ),
    );
  }
}
