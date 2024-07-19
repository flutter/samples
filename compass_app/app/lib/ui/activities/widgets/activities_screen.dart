import 'package:flutter/material.dart';

import '../../core/ui/back_button.dart';
import '../../core/ui/home_button.dart';
import '../view_models/activities_viewmodel.dart';

class ActivitiesScreen extends StatelessWidget {
  const ActivitiesScreen({
    super.key,
    required this.viewModel,
  });

  final ActivitiesViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListenableBuilder(
        listenable: viewModel,
        builder: (context, child) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 24, bottom: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CustomBackButton(),
                        const HomeButton(),
                      ],
                    ),
                  ),
                ),
                // TODO: Display "activities" here
              ],
            ),
          );
        },
      ),
    );
  }
}
