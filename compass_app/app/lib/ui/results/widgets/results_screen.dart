import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/result.dart';
import '../../core/ui/search_bar.dart';
import '../view_models/results_viewmodel.dart';
import 'result_card.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.viewModel,
  });

  final ResultsViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListenableBuilder(
        listenable: viewModel.search,
        builder: (context, child) {
          if (viewModel.search.running) {
            return const Center(child: CircularProgressIndicator());
          }
          return child!;
        },
        child: ListenableBuilder(
          listenable: viewModel,
          builder: (context, child) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 24, bottom: 24),
                      child: AppSearchBar(
                        config: viewModel.config,
                        onTap: () {
                          // Navigate to SearchFormScreen and edit search
                          context.go('/');
                        },
                      ),
                    ),
                  ),
                  _Grid(viewModel: viewModel),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _Grid extends StatelessWidget {
  const _Grid({
    required this.viewModel,
  });

  final ResultsViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 182 / 222,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final destination = viewModel.destinations[index];
          return ResultCard(
            key: ValueKey(destination.ref),
            destination: destination,
            onTap: () {
              viewModel.updateItineraryConfig.execute(
                argument: destination.ref,
                onComplete: (result) {
                  if (result) {
                    context.go('/activities');
                  }
                },
              );
            },
          );
        },
        childCount: viewModel.destinations.length,
      ),
    );
  }
}
