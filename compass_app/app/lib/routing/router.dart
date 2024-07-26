import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../ui/activities/view_models/activities_viewmodel.dart';
import '../ui/activities/widgets/activities_screen.dart';
import '../ui/results/view_models/results_viewmodel.dart';
import '../ui/results/widgets/results_screen.dart';
import '../ui/search_form/view_models/search_form_viewmodel.dart';
import '../ui/search_form/widgets/search_form_screen.dart';

/// Top go_router entry point
final router = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        final viewModel = SearchFormViewModel(
          continentRepository: context.read(),
          itineraryConfigRepository: context.read(),
        );
        return SearchFormScreen(viewModel: viewModel);
      },
      routes: [
        GoRoute(
          path: 'results',
          builder: (context, state) {
            final viewModel = ResultsViewModel(
              destinationRepository: context.read(),
              itineraryConfigRepository: context.read(),
            );
            return ResultsScreen(
              viewModel: viewModel,
            );
          },
        ),
        GoRoute(
          path: 'activities',
          builder: (context, state) {
            final viewModel = ActivitiesViewModel(
              activityRepository: context.read(),
              itineraryConfigRepository: context.read(),
            );
            return ActivitiesScreen(
              viewModel: viewModel,
            );
          },
        ),
      ],
    ),
  ],
);
