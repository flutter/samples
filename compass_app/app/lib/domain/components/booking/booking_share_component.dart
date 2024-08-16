import 'package:compass_model/model.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:share_plus/share_plus.dart';

import '../../../utils/result.dart';
import '../../../ui/core/ui/date_format_start_end.dart';

typedef ShareFunction = Future<void> Function(String text);

/// Component for sharing a booking.
class BookingShareComponent {
  BookingShareComponent._(this._share);

  /// Create a [BookingShareComponent] that uses `share_plus` package.
  factory BookingShareComponent.withSharePlus() =>
      BookingShareComponent._(Share.share);

  /// Create a [BookingShareComponent] with a custom share function.
  factory BookingShareComponent.custom(ShareFunction share) =>
      BookingShareComponent._(share);

  final ShareFunction _share;
  final _log = Logger('BookingShareComponent');

  Future<Result<void>> shareBooking(Booking booking) async {
    final text = 'Trip to ${booking.destination.name}\n'
        'on ${dateFormatStartEnd(DateTimeRange(start: booking.startDate, end: booking.endDate))}\n'
        'Activities:\n'
        '${booking.activity.map((a) => ' - ${a.name}').join('\n')}.';

    _log.info('Sharing booking: $text');
    try {
      await _share(text);
      _log.fine('Shared booking');
      return Result.ok(null);
    } on Exception catch (error) {
      _log.severe('Failed to share booking', error);
      return Result.error(error);
    }
  }
}
