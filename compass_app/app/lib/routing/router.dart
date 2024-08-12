import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../data/components/auth_component.dart';
import '../ui/activities/view_models/activities_viewmodel.dart';
import '../ui/activities/widgets/activities_screen.dart';
import '../ui/booking/widgets/booking_screen.dart';
import '../ui/booking/view_models/booking_viewmodel.dart';
import '../ui/results/view_models/results_viewmodel.dart';
import '../ui/results/widgets/results_screen.dart';
import '../ui/search_form/view_models/search_form_viewmodel.dart';
import '../ui/search_form/widgets/search_form_screen.dart';

/// Top go_router entry point
final router = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  redirect: _redirect,
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
        GoRoute(
          path: 'booking',
          builder: (context, state) {
            final viewModel = BookingViewModel(
              itineraryConfigRepository: context.read(),
              bookingComponent: context.read(),
              shareComponent: context.read(),
            );
            return BookingScreen(
              viewModel: viewModel,
            );
          },
        ),
      ],
    ),
  ],
);

// From https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/redirection.dart
Future<String?> _redirect(BuildContext context, GoRouterState state) async {
  // if the user is not logged in, they need to login
  final bool loggedIn = await context.read<AuthComponent>().isSignedIn();
  final bool loggingIn = state.matchedLocation == '/login';
  if (!loggedIn) {
    return '/login';
  }

  // if the user is logged in but still on the login page, send them to
  // the home page
  if (loggingIn) {
    return '/';
  }

  // no need to redirect at all
  return null;
}
