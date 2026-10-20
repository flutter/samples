// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:compass_app/data/repositories/booking/booking_repository.dart';
import 'package:compass_app/data/repositories/user/user_repository.dart';
import 'package:compass_app/ui/auth/logout/view_models/logout_viewmodel.dart';
import 'package:compass_app/ui/core/localization/applocalization.dart';
import 'package:compass_app/ui/core/themes/theme.dart';
import 'package:compass_app/ui/home/widgets/home_screen_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../testing/fakes/repositories/fake_auth_repository.dart';
import '../../../../testing/fakes/repositories/fake_booking_repository.dart';
import '../../../../testing/fakes/repositories/fake_itinerary_config_repository.dart';
import '../../../../testing/fakes/repositories/fake_user_repository.dart';
import '../../../../testing/models/booking.dart';

void main() {
  testWidgets('reloads bookings when the home route becomes active', (
    tester,
  ) async {
    tester.view.devicePixelRatio = 1.0;
    await tester.binding.setSurfaceSize(const Size(1200, 800));

    final bookingRepository = FakeBookingRepository();
    final logoutViewModel = LogoutViewModel(
      authRepository: FakeAuthRepository(),
      itineraryConfigRepository: FakeItineraryConfigRepository(),
    );
    final router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) =>
              HomeScreenContainer(logoutViewModel: logoutViewModel),
          routes: [
            GoRoute(
              path: 'details',
              builder: (context, state) => const SizedBox(),
            ),
          ],
        ),
      ],
    );
    addTearDown(router.dispose);

    await tester.pumpWidget(
      MultiProvider(
        providers: [
          Provider<BookingRepository>.value(value: bookingRepository),
          Provider<UserRepository>.value(value: FakeUserRepository()),
        ],
        child: MaterialApp.router(
          routerConfig: router,
          localizationsDelegates: [
            GlobalWidgetsLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            AppLocalizationDelegate(),
          ],
          theme: AppTheme.lightTheme,
        ),
      ),
    );
    await tester.pumpAndSettle();

    router.go('/details');
    await tester.pumpAndSettle();
    await bookingRepository.createBooking(kBooking);

    router.go('/');
    await tester.pumpAndSettle();

    expect(find.text('name1, Europe'), findsOneWidget);
  });
}
