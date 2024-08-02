import 'package:compass_model/model.dart';
import 'package:share_plus/share_plus.dart';

import '../../../utils/result.dart';

/// Component for sharing a booking.
class BookingShareComponent {
  Future<Result<void>> shareBooking(Booking booking) async {
    final text = 'Trip to ${booking.destination.name}\n '
        'from ${booking.startDate.toIso8601String()}\n '
        'to ${booking.endDate.toIso8601String()}.\n'
        'Activities: '
        '${booking.activity.map((a) => a.name).join(', ')}.';
    try {
      await Share.share(text);
      return Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}
