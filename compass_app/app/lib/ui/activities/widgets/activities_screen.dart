import 'package:flutter/material.dart';

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
          return const Placeholder();
        },
      ),
    );
  }
}
