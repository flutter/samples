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
        final viewModel =
            SearchFormViewModel(continentRepository: context.read());
        return SearchFormScreen(viewModel: viewModel);
      },
      routes: [
        GoRoute(
          path: 'results',
          redirect: (context, state) {
            // Check if query parameters provided
            final parameters = state.uri.queryParameters;
            if (['continent', 'checkIn', 'checkOut', 'guests']
                .any((key) => !parameters.containsKey(key))) {
              // redirect to root if query parameters are missing
              return '/';
            }
            return null;
          },
          builder: (context, state) {
            final parameters = state.uri.queryParameters;
            final viewModel = ResultsViewModel(
              destinationRepository: context.read(),
              queryParameters: parameters,
            )..search();
            return ResultsScreen(
              viewModel: viewModel,
            );
          },
        ),
        GoRoute(
          path: 'activities',
          redirect: (context, state) {
            // Check if query parameters provided
            final parameters = state.uri.queryParameters;
            if (['continent', 'checkIn', 'checkOut', 'guests', 'destination']
                .any((key) => !parameters.containsKey(key))) {
              // redirect to root if query parameters are missing
              return '/';
            }
            return null;
          },
          builder: (context, state) {
            final parameters = state.uri.queryParameters;
            final viewModel = ActivitiesViewModel(
              activityRepository: context.read(),
              queryParameters: parameters,
            )..loadActivities();
            return ActivitiesScreen(
              viewModel: viewModel,
            );
          },
        ),
      ],
    ),
  ],
);
