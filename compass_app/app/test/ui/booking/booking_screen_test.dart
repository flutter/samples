// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:compass_app/domain/models/itinerary_config/itinerary_config.dart';
import 'package:compass_app/domain/use_cases/booking/booking_create_use_case.dart';
import 'package:compass_app/domain/use_cases/booking/booking_share_use_case.dart';
import 'package:compass_app/ui/booking/view_models/booking_viewmodel.dart';
import 'package:compass_app/ui/booking/widgets/booking_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../testing/app.dart';
import '../../../testing/fakes/repositories/fake_activities_repository.dart';
import '../../../testing/fakes/repositories/fake_booking_repository.dart';
import '../../../testing/fakes/repositories/fake_destination_repository.dart';
import '../../../testing/fakes/repositories/fake_itinerary_config_repository.dart';
import '../../../testing/mocks.dart';
import '../../../testing/models/activity.dart';
import '../../../testing/models/booking.dart';
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
        createBookingUseCase: BookingCreateUseCase(
          activityRepository: FakeActivityRepository(),
          destinationRepository: FakeDestinationRepository(),
          bookingRepository: bookingRepository,
        ),
        shareBookingUseCase: BookingShareUseCase.custom((text) async {
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

    testWidgets('should display booking from ID', (WidgetTester tester) async {
      // Add a booking to repository
      bookingRepository.createBooking(kBooking);

      // Load screen
      await loadScreen(tester);

      // Load booking with ID 0
      viewModel.loadBooking.execute(0);

      // Wait for booking to load
      await tester.pumpAndSettle();

      expect(find.text(kBooking.destination.name), findsOneWidget);
      expect(find.text(kBooking.destination.tags.first), findsOneWidget);
    });

    testWidgets('should create booking from itinerary config',
        (WidgetTester tester) async {
      await loadScreen(tester);

      // Create a new booking from stored itinerary config
      viewModel.createBooking.execute();

      // Wait for booking to load
      await tester.pumpAndSettle();

      expect(find.text('name1'), findsOneWidget);
      expect(find.text('tags1'), findsOneWidget);

      // Booking is saved
      expect(bookingRepository.bookings.length, 1);
    });

    testWidgets('should share booking', (WidgetTester tester) async {
      bookingRepository.createBooking(kBooking);
      await loadScreen(tester);
      viewModel.loadBooking.execute(0);
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('share-button')));
      expect(shared, true);
    });
  });
}
