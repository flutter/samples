import 'dart:io';

import 'package:compass_app/config/dependencies.dart';
import 'package:compass_app/main.dart';
import 'package:compass_app/ui/activities/widgets/activities_screen.dart';
import 'package:compass_app/ui/auth/login/widgets/login_screen.dart';
import 'package:compass_app/ui/auth/logout/widgets/logout_button.dart';
import 'package:compass_app/ui/booking/widgets/booking_screen.dart';
import 'package:compass_app/ui/core/ui/custom_checkbox.dart';
import 'package:compass_app/ui/core/ui/home_button.dart';
import 'package:compass_app/ui/home/widgets/home_screen.dart';
import 'package:compass_app/ui/results/widgets/result_card.dart';
import 'package:compass_app/ui/results/widgets/results_screen.dart';
import 'package:compass_app/ui/search_form/widgets/search_form_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// This Integration Test starts the Dart server
/// before launching the Compass-App with the remote configuration.
/// The app connects to its endpoints to perform login and create a booking.
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test with remote data', () {
    const port = '8080';
    late Process p;

    setUpAll(() async {
      // Clear any stored shared preferences
      final sharedPreferences = await SharedPreferences.getInstance();
      await sharedPreferences.clear();

      // Start the dart server
      p = await Process.start(
        'dart',
        ['run', 'bin/compass_server.dart'],
        environment: {'PORT': port},
        // Relative to the app/ folder
        workingDirectory: '../server',
      );
      // Wait for server to start and print to stdout.
      await p.stdout.first;
    });

    tearDownAll(() => p.kill());

    testWidgets('should load app', (tester) async {
      // Load app widget.
      await tester.pumpWidget(
        MultiProvider(
          providers: providersRemote,
          child: const MainApp(),
        ),
      );

      await tester.pumpAndSettle();

      // Login screen because logget out
      expect(find.byType(LoginScreen), findsOneWidget);
    });

    testWidgets('Open a booking', (tester) async {
      // Load app widget with local configuration
      await tester.pumpWidget(
        MultiProvider(
          providers: providersRemote,
          child: const MainApp(),
        ),
      );

      await tester.pumpAndSettle();

      // Login screen because logget out
      expect(find.byType(LoginScreen), findsOneWidget);

      // Perform login (credentials are prefilled)
      await tester.tap(find.text('Login'));
      await tester.pumpAndSettle();

      // Home screen
      expect(find.byType(HomeScreen), findsOneWidget);
      await tester.pumpAndSettle();

      // Should show user name
      expect(find.text('Sofie\'s Trips'), findsOneWidget);

      // Tap on booking (Alaska is created by default)
      await tester.tap(find.text('Alaska, North America'));
      await tester.pumpAndSettle();

      // Should be at booking screen
      expect(find.byType(BookingScreen), findsOneWidget);
      expect(find.text('Alaska'), findsOneWidget);

      // Navigate back to home
      await tester.tap(find.byType(HomeButton).first);
      await tester.pumpAndSettle();

      // Home screen
      expect(find.byType(HomeScreen), findsOneWidget);

      // Perform logout
      await tester.tap(find.byType(LogoutButton).first);
      await tester.pumpAndSettle();
      expect(find.byType(LoginScreen), findsOneWidget);
    });

    testWidgets('Create booking', (tester) async {
      // Load app widget with local configuration
      await tester.pumpWidget(
        MultiProvider(
          providers: providersRemote,
          child: const MainApp(),
        ),
      );

      await tester.pumpAndSettle();

      // Login screen because logget out
      expect(find.byType(LoginScreen), findsOneWidget);

      // Perform login (credentials are prefilled)
      await tester.tap(find.text('Login'));
      await tester.pumpAndSettle();

      // Home screen
      expect(find.byType(HomeScreen), findsOneWidget);
      await tester.pumpAndSettle();

      // Select create new booking
      await tester.tap(find.byKey(const ValueKey('booking-button')));
      await tester.pumpAndSettle();

      // Search destinations screen
      expect(find.byType(SearchFormScreen), findsOneWidget);

      // Select Europe because it is always the first result
      await tester.tap(find.text('Europe'), warnIfMissed: false);

      // Select dates
      await tester.tap(find.text('Add Dates'));
      await tester.pumpAndSettle();
      final tomorrow = DateTime.now().add(const Duration(days: 1)).day;
      final nextDay = DateTime.now().add(const Duration(days: 2)).day;
      // Select first and last widget that matches today number
      //and tomorrow number, sort of ensures a valid range
      await tester.tap(find.text(tomorrow.toString()).first);
      await tester.pumpAndSettle();
      await tester.tap(find.text(nextDay.toString()).first);
      await tester.pumpAndSettle();
      await tester.tap(find.text('Save'));
      await tester.pumpAndSettle();

      // Select guests
      await tester.tap(find.byKey(const ValueKey('add_guests')),
          warnIfMissed: false);

      // Refresh screen state
      await tester.pumpAndSettle();

      // Perform search and navigate to next screen
      await tester.tap(find.byKey(const ValueKey('submit_button')));
      await tester.pumpAndSettle();

      // Results Screen
      expect(find.byType(ResultsScreen), findsOneWidget);

      // Amalfi Coast should be the first result for Europe
      // Tap and navigate to activities screen
      await tester.tap(find.byType(ResultCard).first);
      await tester.pumpAndSettle();

      // Activities Screen
      expect(find.byType(ActivitiesScreen), findsOneWidget);

      // Select one activity
      await tester.tap(find.byType(CustomCheckbox).first);
      await tester.pumpAndSettle();
      expect(find.text('1 selected'), findsOneWidget);

      // Submit selection
      await tester.tap(find.byKey(const ValueKey('confirm-button')));
      await tester.pumpAndSettle();

      // Should be at booking screen
      expect(find.byType(BookingScreen), findsOneWidget);
      expect(find.text('Amalfi Coast'), findsOneWidget);

      // Navigate back to home
      await tester.tap(find.byType(HomeButton).first);
      await tester.pumpAndSettle();

      // Home screen
      expect(find.byType(HomeScreen), findsOneWidget);

      // New Booking should appear
      expect(find.text('Amalfi Coast, Europe'), findsOneWidget);

      // Perform logout
      await tester.tap(find.byType(LogoutButton).first);
      await tester.pumpAndSettle();
      expect(find.byType(LoginScreen), findsOneWidget);
    });
  });
}
