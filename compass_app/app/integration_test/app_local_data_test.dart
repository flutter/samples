import 'package:compass_app/config/dependencies.dart';
import 'package:compass_app/main.dart';
import 'package:compass_app/ui/activities/widgets/activities_screen.dart';
import 'package:compass_app/ui/booking/widgets/booking_screen.dart';
import 'package:compass_app/ui/core/ui/custom_checkbox.dart';
import 'package:compass_app/ui/core/ui/home_button.dart';
import 'package:compass_app/ui/home/widgets/home_screen.dart';
import 'package:compass_app/ui/results/widgets/result_card.dart';
import 'package:compass_app/ui/results/widgets/results_screen.dart';
import 'package:compass_app/ui/search_form/widgets/search_form_guests.dart';
import 'package:compass_app/ui/search_form/widgets/search_form_screen.dart';
import 'package:compass_app/ui/search_form/widgets/search_form_submit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:provider/provider.dart';

/// This Integration Test launches the Compass-App with the local configuration.
/// The app uses data from the assets folder to create a booking.
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test with local data', () {
    testWidgets('should load app', (tester) async {
      // Load app widget.
      await tester.pumpWidget(
        MultiProvider(
          providers: providersLocal,
          child: const MainApp(),
        ),
      );
    });

    testWidgets('Open a booking', (tester) async {
      // Load app widget with local configuration
      await tester.pumpWidget(
        MultiProvider(
          providers: providersLocal,
          child: const MainApp(),
        ),
      );

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
    });

    testWidgets('Create booking', (tester) async {
      // Load app widget with local configuration
      await tester.pumpWidget(
        MultiProvider(
          providers: providersLocal,
          child: const MainApp(),
        ),
      );
      await tester.pumpAndSettle();

      // Home screen
      expect(find.byType(HomeScreen), findsOneWidget);
      await tester.pumpAndSettle();

      // Select create new booking
      await tester.tap(find.byKey(const ValueKey(bookingButtonKey)));
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
      await tester.tap(find.byKey(const ValueKey(addGuestsKey)),
          warnIfMissed: false);

      // Refresh screen state
      await tester.pumpAndSettle();

      // Perform search and navigate to next screen
      await tester.tap(find.byKey(const ValueKey(searchFormSubmitButtonKey)));
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
      await tester.tap(find.byKey(const ValueKey(confirmButtonKey)));
      await tester.pumpAndSettle();

      // Should be at booking screen
      expect(find.byType(BookingScreen), findsOneWidget);
      expect(find.text('Amalfi Coast'), findsOneWidget);

      // Navigate back home
      await tester.tap(find.byType(HomeButton));
      await tester.pumpAndSettle();

      // Home screen
      expect(find.byType(HomeScreen), findsOneWidget);

      // New Booking should appear
      expect(find.text('Amalfi Coast, Europe'), findsOneWidget);
    });
  });
}
