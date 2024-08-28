import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

import '../../../data/repositories/booking/booking_repository.dart';
import '../../../domain/models/booking/booking_summary.dart';
import '../../../utils/command.dart';
import '../../../utils/result.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel({
    required BookingRepository bookingRepository,
  }) : _bookingRepository = bookingRepository {
    load = Command0(_load)..execute();
  }

  final BookingRepository _bookingRepository;
  final _log = Logger('HomeViewModel');

  late Command0 load;

  List<BookingSummary> _bookings = [];

  List<BookingSummary> get bookings => _bookings;

  Future<Result> _load() async {
    try {
      final result = await _bookingRepository.getBookingsList();
      switch (result) {
        case Ok<List<BookingSummary>>():
          _bookings = result.value;
          _log.fine('Loaded bookings');
        case Error<List<BookingSummary>>():
          _log.warning('Failed to load bookings', result.error);
      }
      return result;
    } finally {
      notifyListeners();
    }
  }
}
