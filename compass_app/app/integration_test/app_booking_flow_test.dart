import 'package:compass_app/config/dependencies.dart';
import 'package:compass_app/data/repositories/auth/auth_repository.dart';
import 'package:compass_app/main.dart';
import 'package:compass_app/ui/activities/widgets/activities_screen.dart';
import 'package:compass_app/ui/auth/login/widgets/login_screen.dart';
import 'package:compass_app/ui/booking/widgets/booking_screen.dart';
import 'package:compass_app/ui/core/ui/custom_checkbox.dart';
import 'package:compass_app/ui/core/ui/home_button.dart';
import 'package:compass_app/ui/home/widgets/home_screen.dart';
import 'package:compass_app/ui/results/widgets/result_card.dart';
import 'package:compass_app/ui/results/widgets/results_screen.dart';
import 'package:compass_app/ui/search_form/widgets/search_form_guests.dart';
import 'package:compass_app/ui/search_form/widgets/search_form_screen.dart';
import 'package:compass_app/ui/search_form/widgets/search_form_submit.dart';
import 'package:compass_app/utils/result.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

// mocked AuthRepository to control the authentication state in the test and trigger UI changes.
class TestAuthRepository extends AuthRepository {
  bool _authenticated = false;

  @override
  Future<bool> get isAuthenticated => Future.value(_authenticated);

  @override
  Future<Result<void>> login({
    required String email,
    required String password,
  }) async {
    _authenticated = true;
    notifyListeners();
    return const Result.ok(null);
  }

  @override
  Future<Result<void>> logout() async {
    _authenticated = false;
    notifyListeners();
    return const Result.ok(null);
  }
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end booking flow', () {
    testWidgets(
      'starts logged out, creates itinerary, and go back to home screen',
      (tester) async {
        // clears data to ensure the app starts logged out, then logs in with a test auth repository.
        final sharedPreferences = await SharedPreferences.getInstance();
        await sharedPreferences.clear();
        final testAuthRepository = TestAuthRepository();

        await tester.pumpWidget(
          MultiProvider(
            providers: [
              ...providersLocal,
              ChangeNotifierProvider<AuthRepository>.value(
                value:
                    testAuthRepository, // override the AuthRepository with our test implementation
              ),
            ],
            child: const MainApp(),
          ),
        );
        await tester.pumpAndSettle();

        // Auth-gated entry with local data.
        expect(find.byType(LoginScreen), findsOneWidget);
        await tester.tap(find.text('Login'));
        await tester.pumpAndSettle();

        expect(find.byType(HomeScreen), findsOneWidget);

        // Select create new booking
        await tester.tap(find.byKey(const ValueKey(bookingButtonKey)));
        await tester.pumpAndSettle();
        expect(find.byType(SearchFormScreen), findsOneWidget);

        // Search destinations screen
        await tester.tap(find.text('Europe'), warnIfMissed: false);

        await tester.tap(find.text('Add Dates'));
        await tester.pumpAndSettle();
        final tomorrow = DateTime.now().add(const Duration(days: 1)).day;
        final nextDay = DateTime.now().add(const Duration(days: 2)).day;
        await tester.tap(find.text(tomorrow.toString()).first);
        await tester.pumpAndSettle();
        await tester.tap(find.text(nextDay.toString()).first);
        await tester.pumpAndSettle();
        await tester.tap(find.text('Save'));
        await tester.pumpAndSettle();

        // Select guests
        await tester.tap(find.byKey(const ValueKey(addGuestsKey)));
        await tester.pumpAndSettle();

        // Perform search and navigate to next screen
        await tester.tap(find.byKey(const ValueKey(searchFormSubmitButtonKey)));
        await tester.pumpAndSettle();

        // Results Screen
        expect(find.byType(ResultsScreen), findsOneWidget);

        // Select a destination
        final firstResultCardFinder = find.byType(ResultCard).first;
        expect(firstResultCardFinder, findsOneWidget);
        final selectedDestination = tester
            .widget<ResultCard>(firstResultCardFinder)
            .destination;
        await tester.tap(firstResultCardFinder);
        await tester.pumpAndSettle();

        // Activities Screen
        expect(find.byType(ActivitiesScreen), findsOneWidget);

        // Select one activity
        await tester.tap(find.byType(CustomCheckbox).first);
        await tester.pumpAndSettle();
        expect(find.text('1 selected'), findsOneWidget);

        await tester.tap(find.byKey(const ValueKey(confirmButtonKey)));
        await tester.pumpAndSettle();
        expect(find.byType(BookingScreen), findsOneWidget);
        expect(find.text(selectedDestination.name), findsOneWidget);

        // Verify booking is visible on Home.
        await tester.tap(find.byType(HomeButton).first);
        await tester.pumpAndSettle();
        expect(find.byType(HomeScreen), findsOneWidget);
        expect(
          find.text(
            '${selectedDestination.name}, ${selectedDestination.continent}',
          ),
          findsOneWidget,
        );
      },
    );
  });
}
