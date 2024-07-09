import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../ui/results/view_models/results_viewmodel.dart';
import '../ui/results/widgets/results_screen.dart';
import '../ui/search_form/widgets/search_form_screen.dart';

/// Top go_router entry point
final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const SearchFormScreen();
      },
      routes: [
        GoRoute(
          path: 'results',
          builder: (context, state) {
            final viewModel = ResultsViewModel(
              destinationRepository: context.read(),
            );
            return ResultsScreen(viewModel: viewModel);
          },
        ),
      ],
    ),
  ],
);
