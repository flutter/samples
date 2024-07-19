import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        listenable: viewModel,
        builder: (context, child) {
          if (viewModel.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 24, bottom: 24),
                    child: AppSearchBar(
                      query: viewModel.filters,
                      onTap: () {
                        // Navigate to SearchFormScreen and edit search
                        context.go(
                          Uri(
                            path: '/',
                            queryParameters:
                                GoRouterState.of(context).uri.queryParameters,
                          ).toString(),
                        );
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
              context.push(
                  '/activities?${viewModel.searchQuery(destination.ref)}');
            },
          );
        },
        childCount: viewModel.destinations.length,
      ),
    );
  }
}
