import 'package:compass_model/model.dart';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

import '../../../data/repositories/booking/booking_repository.dart';
import '../../../data/repositories/itinerary_config/itinerary_config_repository.dart';
import '../../../utils/command.dart';
import '../../../utils/result.dart';
import '../../../domain/components/booking/booking_create_component.dart';
import '../../../domain/components/booking/booking_share_component.dart';

class BookingViewModel extends ChangeNotifier {
  BookingViewModel({
    required BookingCreateComponent bookingComponent,
    required BookingShareComponent shareComponent,
    required ItineraryConfigRepository itineraryConfigRepository,
    required BookingRepository bookingRepository,
  })  : _createComponent = bookingComponent,
        _shareComponent = shareComponent,
        _itineraryConfigRepository = itineraryConfigRepository,
        _bookingRepository = bookingRepository {
    loadBooking = Command0(_loadBooking)..execute();
    shareBooking = Command0(() => _shareComponent.shareBooking(_booking!));
    saveBooking = Command0(_saveBooking);
  }

  final BookingCreateComponent _createComponent;
  final BookingShareComponent _shareComponent;
  final ItineraryConfigRepository _itineraryConfigRepository;
  final BookingRepository _bookingRepository;
  final _log = Logger('BookingViewModel');
  Booking? _booking;

  Booking? get booking => _booking;

  late final Command0 loadBooking;

  /// Share the current booking using the OS share dialog.
  late final Command0 shareBooking;

  /// Store booking
  late final Command0 saveBooking;

  Future<Result<void>> _loadBooking() async {
    _log.fine('Loading booking');
    final itineraryConfig =
        await _itineraryConfigRepository.getItineraryConfig();
    switch (itineraryConfig) {
      case Ok<ItineraryConfig>():
        _log.fine('Loaded stored ItineraryConfig');
        final result = await _createComponent.createFrom(itineraryConfig.value);
        switch (result) {
          case Ok<Booking>():
            _log.fine('Created Booking');
            _booking = result.value;
            notifyListeners();
            return Result.ok(null);
          case Error<Booking>():
            _log.warning('Booking error: ${result.error}');
            notifyListeners();
            return Result.error(result.asError.error);
        }
      case Error<ItineraryConfig>():
        _log.warning('ItineraryConfig error: ${itineraryConfig.error}');
        notifyListeners();
        return Result.error(itineraryConfig.error);
    }
  }

  Future<Result<void>> _saveBooking() async {
    assert(_booking != null);
    final result = await _bookingRepository.createBooking(_booking!);
    return result;
  }
}
