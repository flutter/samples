import 'package:compass_app/domain/components/booking/booking_create_component.dart';
import 'package:compass_model/model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../testing/fakes/repositories/fake_activities_repository.dart';
import '../../../../testing/fakes/repositories/fake_booking_repository.dart';
import '../../../../testing/fakes/repositories/fake_destination_repository.dart';
import '../../../../testing/models/activity.dart';
import '../../../../testing/models/booking.dart';
import '../../../../testing/models/destination.dart';

void main() {
  group('BookingCreateComponent tests', () {
    test('Create booking', () async {
      final component = BookingCreateComponent(
        activityRepository: FakeActivityRepository(),
        destinationRepository: FakeDestinationRepository(),
        bookingRepository: FakeBookingRepository(),
      );

      final booking = await component.createFrom(
        ItineraryConfig(
          startDate: DateTime(2024, 01, 01),
          endDate: DateTime(2024, 02, 12),
          destination: kDestination1.ref,
          activities: [kActivity.ref],
        ),
      );

      expect(booking.asOk.value, kBooking);
    });
  });
}
