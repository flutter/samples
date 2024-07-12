import '../../../data/repositories/destination/destination_repository.dart';
import '../../../utils/result.dart';
import '../../../data/models/destination.dart';
import 'package:flutter/cupertino.dart';

/// Results screen view model
/// Based on https://docs.flutter.dev/get-started/fwe/state-management#using-mvvm-for-your-applications-architecture
class ResultsViewModel extends ChangeNotifier {
  ResultsViewModel({
    required DestinationRepository destinationRepository,
  }) : _destinationRepository = destinationRepository;

  final DestinationRepository _destinationRepository;

  // Setters are private
  List<Destination> _destinations = [];
  bool _loading = false;
  String? _continent;

  /// List of destinations, may be empty but never null
  List<Destination> get destinations => _destinations;

  /// Loading state
  bool get loading => _loading;

  /// Return a formatted String with all the filter options
  String get filters => _continent ?? '';

  /// Perform search
  Future<void> search({String? continent}) async {
    // Set loading state and notify the view
    _loading = true;
    _continent = continent;
    notifyListeners();

    final result = await _destinationRepository.getDestinations();
    // Set loading state to false
    _loading = false;
    switch (result) {
      case Ok():
        {
          // If the result is Ok, update the list of destinations
          _destinations = result.value
              .where((destination) => _filter(destination, continent))
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
  }

  bool _filter(Destination destination, String? continent) {
    return (continent == null || destination.continent == continent);
  }
}
