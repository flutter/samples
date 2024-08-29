import 'package:compass_model/model.dart';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

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
  })  : _createComponent = bookingComponent,
        _shareComponent = shareComponent,
        _itineraryConfigRepository = itineraryConfigRepository {
    createBooking = Command0(_createBooking)..execute();
    shareBooking = Command0(() => _shareComponent.shareBooking(_booking!));
  }

  final BookingCreateComponent _createComponent;
  final BookingShareComponent _shareComponent;
  final ItineraryConfigRepository _itineraryConfigRepository;
  final _log = Logger('BookingViewModel');
  Booking? _booking;

  Booking? get booking => _booking;

  /// Creates a booking from the ItineraryConfig
  /// and saves it to the user bookins
  late final Command0 createBooking;

  /// Share the current booking using the OS share dialog.
  late final Command0 shareBooking;

  Future<Result<void>> _createBooking() async {
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
}
