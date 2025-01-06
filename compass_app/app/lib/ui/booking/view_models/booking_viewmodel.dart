// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

import '../../../data/repositories/booking/booking_repository.dart';
import '../../../data/repositories/itinerary_config/itinerary_config_repository.dart';
import '../../../domain/models/booking/booking.dart';
import '../../../domain/models/itinerary_config/itinerary_config.dart';
import '../../../domain/use_cases/booking/booking_create_use_case.dart';
import '../../../domain/use_cases/booking/booking_share_use_case.dart';
import '../../../utils/command.dart';
import '../../../utils/result.dart';

class BookingViewModel extends ChangeNotifier {
  BookingViewModel({
    required BookingCreateUseCase createBookingUseCase,
    required BookingShareUseCase shareBookingUseCase,
    required ItineraryConfigRepository itineraryConfigRepository,
    required BookingRepository bookingRepository,
  })  : _createUseCase = createBookingUseCase,
        _shareUseCase = shareBookingUseCase,
        _itineraryConfigRepository = itineraryConfigRepository,
        _bookingRepository = bookingRepository {
    createBooking = Command0(_createBooking);
    shareBooking = Command0(() => _shareUseCase.shareBooking(_booking!));
    loadBooking = Command1(_load);
  }

  final BookingCreateUseCase _createUseCase;
  final BookingShareUseCase _shareUseCase;
  final ItineraryConfigRepository _itineraryConfigRepository;
  final BookingRepository _bookingRepository;
  final _log = Logger('BookingViewModel');
  Booking? _booking;

  Booking? get booking => _booking;

  /// Creates a booking from the ItineraryConfig
  /// and saves it to the user bookins
  late final Command0 createBooking;

  /// Loads booking by id
  late final Command1<void, int> loadBooking;

  /// Share the current booking using the OS share dialog.
  late final Command0 shareBooking;

  Future<Result<void>> _createBooking() async {
    _log.fine('Loading booking');
    final itineraryConfig =
        await _itineraryConfigRepository.getItineraryConfig();
    switch (itineraryConfig) {
      case Ok<ItineraryConfig>():
        _log.fine('Loaded stored ItineraryConfig');
        final result = await _createUseCase.createFrom(itineraryConfig.value);
        switch (result) {
          case Ok<Booking>():
            _log.fine('Created Booking');
            _booking = result.value;
            notifyListeners();
            return const Result.ok(null);
          case Error<Booking>():
            _log.warning('Booking error: ${result.error}');
            notifyListeners();
            return Result.error(result.error);
        }
      case Error<ItineraryConfig>():
        _log.warning('ItineraryConfig error: ${itineraryConfig.error}');
        notifyListeners();
        return Result.error(itineraryConfig.error);
    }
  }

  Future<Result<void>> _load(int id) async {
    final result = await _bookingRepository.getBooking(id);
    switch (result) {
      case Ok<Booking>():
        _log.fine('Loaded booking $id');
        _booking = result.value;
        notifyListeners();
      case Error<Booking>():
        _log.warning('Failed to load booking $id');
    }
    return result;
  }
}
