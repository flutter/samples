import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../view_models/search_form_viewmodel.dart';

class SearchFormButton extends StatelessWidget {
  const SearchFormButton({
    super.key,
    required this.viewModel,
  });

  final SearchFormViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, _) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: FilledButton(
            onPressed: viewModel.valid
                ? () {
                    context.go(
                      '/results?${viewModel.searchQuery}',
                    );
                  }
                : null,
            child: const SizedBox(
              height: 52,
              child: Center(
                child: Text('Search'),
              ),
            ),
          ),
        );
      },
    );
  }
}
