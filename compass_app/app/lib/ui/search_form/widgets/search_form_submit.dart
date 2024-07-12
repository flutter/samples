import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../view_models/search_form_viewmodel.dart';

/// Search form submit button
class SearchFormSubmit extends StatelessWidget {
  const SearchFormSubmit({
    super.key,
    required this.viewModel,
  });

  final SearchFormViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      child: ListenableBuilder(
          listenable: viewModel,
          child: const SizedBox(
            height: 52,
            child: Center(
              child: Text('Search'),
            ),
          ),
          builder: (context, child) {
            return FilledButton(
              key: const ValueKey('submit_button'),
              onPressed: viewModel.valid
                  ? () => context.go('/results?${viewModel.searchQuery}')
                  : null,
              child: child,
            );
          }),
    );
  }
}
