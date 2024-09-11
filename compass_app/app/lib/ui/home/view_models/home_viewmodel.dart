import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

import '../../../data/repositories/booking/booking_repository.dart';
import '../../../data/repositories/user/user_repository.dart';
import '../../../domain/models/booking/booking_summary.dart';
import '../../../domain/models/user/user.dart';
import '../../../utils/command.dart';
import '../../../utils/result.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel({
    required BookingRepository bookingRepository,
    required UserRepository userRepository,
  })  : _bookingRepository = bookingRepository,
        _userRepository = userRepository {
    load = Command0(_load)..execute();
  }

  final BookingRepository _bookingRepository;
  final UserRepository _userRepository;
  final _log = Logger('HomeViewModel');
  List<BookingSummary> _bookings = [];
  User? _user;

  late Command0 load;

  List<BookingSummary> get bookings => _bookings;

  User? get user => _user;

  Future<Result> _load() async {
    try {
      final result = await _bookingRepository.getBookingsList();
      switch (result) {
        case Ok<List<BookingSummary>>():
          _bookings = result.value;
          _log.fine('Loaded bookings');
        case Error<List<BookingSummary>>():
          _log.warning('Failed to load bookings', result.error);
          return result;
      }

      final userResult = await _userRepository.getUser();
      switch (userResult) {
        case Ok<User>():
          _user = userResult.value;
          _log.fine('Loaded user');
        case Error<User>():
          _log.warning('Failed to load user', userResult.error);
      }

      return userResult;
    } finally {
      notifyListeners();
    }
  }
}
