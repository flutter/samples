import 'package:compass_app/domain/components/booking/booking_create_component.dart';
import 'package:compass_app/domain/components/booking/booking_share_component.dart';
import 'package:compass_app/ui/booking/view_models/booking_viewmodel.dart';
import 'package:compass_app/ui/booking/widgets/booking_screen.dart';
import 'package:compass_model/model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../testing/app.dart';
import '../../../testing/fakes/repositories/fake_activities_repository.dart';
import '../../../testing/fakes/repositories/fake_booking_repository.dart';
import '../../../testing/fakes/repositories/fake_destination_repository.dart';
import '../../../testing/fakes/repositories/fake_itinerary_config_repository.dart';
import '../../../testing/mocks.dart';
import '../../../testing/models/activity.dart';
import '../../../testing/models/destination.dart';

void main() {
  group('BookingScreen widget tests', () {
    late MockGoRouter goRouter;
    late BookingViewModel viewModel;
    late bool shared;
    late FakeBookingRepository bookingRepository;

    setUp(() {
      shared = false;
      bookingRepository = FakeBookingRepository();
      viewModel = BookingViewModel(
        itineraryConfigRepository: FakeItineraryConfigRepository(
          itineraryConfig: ItineraryConfig(
            continent: 'Europe',
            startDate: DateTime(2024, 01, 01),
            endDate: DateTime(2024, 01, 31),
            guests: 2,
            destination: kDestination1.ref,
            activities: [kActivity.ref],
          ),
        ),
        bookingComponent: BookingCreateComponent(
          activityRepository: FakeActivityRepository(),
          destinationRepository: FakeDestinationRepository(),
        ),
        shareComponent: BookingShareComponent.custom((text) async {
          shared = true;
        }),
        bookingRepository: bookingRepository,
      );
      goRouter = MockGoRouter();
    });

    Future<void> loadScreen(WidgetTester tester) async {
      await testApp(
        tester,
        BookingScreen(viewModel: viewModel),
        goRouter: goRouter,
      );
    }

    testWidgets('should load screen', (WidgetTester tester) async {
      await loadScreen(tester);
      expect(find.byType(BookingScreen), findsOneWidget);
    });

    testWidgets('should display booking', (WidgetTester tester) async {
      await loadScreen(tester);

      // Wait for list to load
      await tester.pumpAndSettle();

      expect(find.text('name1'), findsOneWidget);
      expect(find.text('tags1'), findsOneWidget);
    });

    testWidgets('should share booking', (WidgetTester tester) async {
      await loadScreen(tester);
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('share-button')));
      expect(shared, true);
    });

    testWidgets('should save booking and exit', (WidgetTester tester) async {
      // No bookings saved yet
      expect(bookingRepository.bookings, isEmpty);

      await loadScreen(tester);
      await tester.pumpAndSettle();

      // Perform save
      await tester.tap(find.byKey(const Key('save-button')));
      await tester.pumpAndSettle();

      // Booking is saved
      expect(bookingRepository.bookings.length, 1);

      // Should navigate to home screen
      verify(() => goRouter.go('/')).called(1);
    });
  });
}
