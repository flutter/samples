import 'package:compass_model/model.dart';

import '../../../data/repositories/destination/destination_repository.dart';
import '../../../data/repositories/itinerary_config/itinerary_config_repository.dart';
import '../../../utils/command.dart';
import '../../../utils/result.dart';
import 'package:flutter/cupertino.dart';

/// Results screen view model
/// Based on https://docs.flutter.dev/get-started/fwe/state-management#using-mvvm-for-your-applications-architecture
class ResultsViewModel extends ChangeNotifier {
  ResultsViewModel({
    required DestinationRepository destinationRepository,
    required ItineraryConfigRepository itineraryConfigRepository,
  })  : _destinationRepository = destinationRepository,
        _itineraryConfigRepository = itineraryConfigRepository {
    updateItineraryConfig = Command1<void, String>(_updateItineraryConfig);
    search = Command0(_search)..execute();
  }

  final DestinationRepository _destinationRepository;

  final ItineraryConfigRepository _itineraryConfigRepository;

  // Setters are private
  List<Destination> _destinations = [];

  /// List of destinations, may be empty but never null
  List<Destination> get destinations => _destinations;

  ItineraryConfig? _itineraryConfig;

  /// Filter options to display on search bar
  ItineraryConfig get config => _itineraryConfig ?? const ItineraryConfig();

  /// Perform search
  late final Command0 search;

  /// Store ViewModel data into [ItineraryConfigRepository] before navigating.
  late final Command1<void, String> updateItineraryConfig;

  Future<Result<void>> _search() async {
    // Load current itinerary config
    final resultConfig = await _itineraryConfigRepository.getItineraryConfig();
    if (resultConfig is Error) {
      // TODO: Handle error
      // ignore: avoid_print
      print(resultConfig.asError.error);
      return resultConfig;
    }
    _itineraryConfig = resultConfig.asOk.value;
    notifyListeners();

    final result = await _destinationRepository.getDestinations();
    switch (result) {
      case Ok():
        {
          // If the result is Ok, update the list of destinations
          _destinations = result.value
              .where((destination) =>
                  destination.continent == _itineraryConfig!.continent)
              .toList();
        }
      case Error():
        {
          // TODO: Handle error
          // ignore: avoid_print
          print(result.error);
        }
    }

    // After finish loading results, notify the view
    notifyListeners();
    return result;
  }

  Future<Result<void>> _updateItineraryConfig(String destinationRef) async {
    assert(destinationRef.isNotEmpty, "destinationRef should not be empty");

    final resultConfig = await _itineraryConfigRepository.getItineraryConfig();
    if (resultConfig is Error) {
      // TODO: Handle error
      // ignore: avoid_print
      print(resultConfig.asError.error);
      return resultConfig;
    }

    final itineraryConfig = resultConfig.asOk.value;
    final result = await _itineraryConfigRepository.setItineraryConfig(
        itineraryConfig.copyWith(destination: destinationRef));
    return result;
  }
}
