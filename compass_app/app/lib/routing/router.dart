import '../ui/results/widgets/results_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../ui/results/view_models/results_viewmodel.dart';

/// Top go_router entry point
final router = GoRouter(
  initialLocation: '/results',
  routes: [
    GoRoute(
      path: '/results',
      builder: (context, state) {
        final viewModel = ResultsViewModel(
          destinationRepository: context.read(),
        );
        return ResultsScreen(viewModel: viewModel);
      },
    ),
  ],
);
