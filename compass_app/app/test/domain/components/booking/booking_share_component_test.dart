import 'package:compass_app/domain/components/booking/booking_share_component.dart';
import 'package:compass_model/model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../testing/models/activity.dart';
import '../../../../testing/models/destination.dart';

void main() {
  group('BookingShareComponent tests', () {
    test('Share booking', () async {
      String? sharedText;
      final component = BookingShareComponent.custom((text) async {
        sharedText = text;
      });
      final booking = Booking(
        startDate: DateTime(2024, 01, 01),
        endDate: DateTime(2024, 02, 12),
        destination: kDestination1,
        activity: [kActivity],
      );
      await component.shareBooking(booking);
      expect(
        sharedText,
        'Trip to name1\n'
        'on 1 Jan - 12 Feb\n'
        'Activities:\n'
        ' - NAME.',
      );
    });
  });
}
