import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../themes/colors.dart';

/// Home button to navigate back to the '/' path.
class HomeButton extends StatelessWidget {
  const HomeButton({super.key});

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
            context.go('/');
          },
          child: Center(
            child: Icon(
              size: 24.0,
              Icons.home_outlined,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
      ),
    );
  }
}
