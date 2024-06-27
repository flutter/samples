import 'package:compass_app/features/results/presentation/results_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ResultsViewModel>(
        builder: (context, viewModel, child) {
          if (viewModel.loading) {
            return const CircularProgressIndicator();
          }
          return const Placeholder();
        },
      ),
    );
  }
}
