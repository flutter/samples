import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/ui/back_button.dart';
import '../../core/ui/home_button.dart';

class ActivitiesHeader extends StatelessWidget {
  const ActivitiesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 24,
        bottom: 24,
        left: 20,
        right: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomBackButton(
            onTap: () {
              // Navigate to ResultsScreen and edit search
              context.go('/results');
            },
          ),
          Text(
            'Activities',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const HomeButton(),
        ],
      ),
    );
  }
}
