import 'package:compass_app/features/results/presentation/results_viewmodel.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.resultsViewModel,
  });

  final ResultsViewModel resultsViewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListenableBuilder(
        listenable: resultsViewModel,
        builder: (BuildContext context, Widget? child) {
          if (resultsViewModel.loading) {
            return const CircularProgressIndicator();
          }
          return const Placeholder();
        },
      ),
    );
  }
}
