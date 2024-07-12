import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../ui/results/view_models/results_viewmodel.dart';
import '../ui/results/widgets/results_screen.dart';
import '../ui/search_form/view_models/search_form_viewmodel.dart';
import '../ui/search_form/widgets/search_form_screen.dart';

/// Top go_router entry point
final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        final viewModel = SearchFormViewModel(continentRepository: context.read());
        return SearchFormScreen(viewModel: viewModel);
      },
      routes: [
        GoRoute(
          path: 'results',
          builder: (context, state) {
            final viewModel = ResultsViewModel(
              destinationRepository: context.read(),
            );
            final parameters = state.uri.queryParameters;
            // TODO: Pass the rest of query parameters to the ViewModel
            viewModel.search(continent: parameters['continent']);
            return ResultsScreen(viewModel: viewModel);
          },
        ),
      ],
    ),
  ],
);
