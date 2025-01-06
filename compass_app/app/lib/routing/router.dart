// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../data/repositories/auth/auth_repository.dart';
import '../ui/activities/view_models/activities_viewmodel.dart';
import '../ui/activities/widgets/activities_screen.dart';
import '../ui/auth/login/view_models/login_viewmodel.dart';
import '../ui/auth/login/widgets/login_screen.dart';
import '../ui/booking/view_models/booking_viewmodel.dart';
import '../ui/booking/widgets/booking_screen.dart';
import '../ui/home/view_models/home_viewmodel.dart';
import '../ui/home/widgets/home_screen.dart';
import '../ui/results/view_models/results_viewmodel.dart';
import '../ui/results/widgets/results_screen.dart';
import '../ui/search_form/view_models/search_form_viewmodel.dart';
import '../ui/search_form/widgets/search_form_screen.dart';
import 'routes.dart';

/// Top go_router entry point.
///
/// Listens to changes in [AuthTokenRepository] to redirect the user
/// to /login when the user logs out.
GoRouter router(
  AuthRepository authRepository,
) =>
    GoRouter(
      initialLocation: Routes.home,
      debugLogDiagnostics: true,
      redirect: _redirect,
      refreshListenable: authRepository,
      routes: [
        GoRoute(
          path: Routes.login,
          builder: (context, state) {
            return LoginScreen(
              viewModel: LoginViewModel(
                authRepository: context.read(),
              ),
            );
          },
        ),
        GoRoute(
          path: Routes.home,
          builder: (context, state) {
            final viewModel = HomeViewModel(
              bookingRepository: context.read(),
              userRepository: context.read(),
            );
            return HomeScreen(viewModel: viewModel);
          },
          routes: [
            GoRoute(
              path: Routes.searchRelative,
              builder: (context, state) {
                final viewModel = SearchFormViewModel(
                  continentRepository: context.read(),
                  itineraryConfigRepository: context.read(),
                );
                return SearchFormScreen(viewModel: viewModel);
              },
            ),
            GoRoute(
              path: Routes.resultsRelative,
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
              path: Routes.activitiesRelative,
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
              path: Routes.bookingRelative,
              builder: (context, state) {
                final viewModel = BookingViewModel(
                  itineraryConfigRepository: context.read(),
                  createBookingUseCase: context.read(),
                  shareBookingUseCase: context.read(),
                  bookingRepository: context.read(),
                );

                // When opening the booking screen directly
                // create a new booking from the stored ItineraryConfig.
                viewModel.createBooking.execute();

                return BookingScreen(
                  viewModel: viewModel,
                );
              },
              routes: [
                GoRoute(
                  path: ':id',
                  builder: (context, state) {
                    final id = int.parse(state.pathParameters['id']!);
                    final viewModel = BookingViewModel(
                      itineraryConfigRepository: context.read(),
                      createBookingUseCase: context.read(),
                      shareBookingUseCase: context.read(),
                      bookingRepository: context.read(),
                    );

                    // When opening the booking screen with an existing id
                    // load and display that booking.
                    viewModel.loadBooking.execute(id);

                    return BookingScreen(
                      viewModel: viewModel,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    );

// From https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/redirection.dart
Future<String?> _redirect(BuildContext context, GoRouterState state) async {
  // if the user is not logged in, they need to login
  final loggedIn = await context.read<AuthRepository>().isAuthenticated;
  final loggingIn = state.matchedLocation == Routes.login;
  if (!loggedIn) {
    return Routes.login;
  }

  // if the user is logged in but still on the login page, send them to
  // the home page
  if (loggingIn) {
    return Routes.home;
  }

  // no need to redirect at all
  return null;
}
