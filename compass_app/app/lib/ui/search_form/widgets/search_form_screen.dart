// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../routing/routes.dart';
import '../../core/themes/dimens.dart';
import '../../core/ui/search_bar.dart';
import '../../results/widgets/results_screen.dart';
import '../view_models/search_form_viewmodel.dart';
import 'search_form_continent.dart';
import 'search_form_date.dart';
import 'search_form_guests.dart';
import 'search_form_submit.dart';

/// Search form screen
///
/// Displays a search form with continent, date and guests selection.
/// Tapping on the submit button opens the [ResultsScreen] screen
/// passing the search options as query parameters.
class SearchFormScreen extends StatelessWidget {
  const SearchFormScreen({
    super.key,
    required this.viewModel,
  });

  final SearchFormViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, r) {
        if (!didPop) context.go(Routes.home);
      },
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SafeArea(
              top: true,
              bottom: false,
              child: Padding(
                padding: EdgeInsets.only(
                  top: Dimens.of(context).paddingScreenVertical,
                  left: Dimens.of(context).paddingScreenHorizontal,
                  right: Dimens.of(context).paddingScreenHorizontal,
                  bottom: Dimens.paddingVertical,
                ),
                child: const AppSearchBar(),
              ),
            ),
            SearchFormContinent(viewModel: viewModel),
            SearchFormDate(viewModel: viewModel),
            SearchFormGuests(viewModel: viewModel),
            const Spacer(),
            SearchFormSubmit(viewModel: viewModel),
          ],
        ),
      ),
    );
  }
}
