import 'package:compass_model/model.dart';

import '../../../data/repositories/destination/destination_repository.dart';
import '../../../utils/result.dart';
import 'package:flutter/cupertino.dart';

import '../../activities/widgets/activities_screen.dart';

/// Results screen view model
/// Based on https://docs.flutter.dev/get-started/fwe/state-management#using-mvvm-for-your-applications-architecture
class ResultsViewModel extends ChangeNotifier {
  ResultsViewModel({
    required DestinationRepository destinationRepository,
    required Map<String, String> queryParameters,
  })  : _destinationRepository = destinationRepository,
        _queryParameters = queryParameters;

  final DestinationRepository _destinationRepository;

  final Map<String, String> _queryParameters;

  // Setters are private
  List<Destination> _destinations = [];
  bool _loading = false;

  /// List of destinations, may be empty but never null
  List<Destination> get destinations => _destinations;

  /// Loading state
  bool get loading => _loading;

  /// Return a formatted String with all the filter options
  /// TODO: Format the string nicely
  String get filters => '${_queryParameters['continent']} - '
      '${_queryParameters['checkIn']} - '
      '${_queryParameters['checkOut']} - '
      '${_queryParameters['guests']}';

  /// Returns the search query string to navigate to [ActivitiesScreen]
  /// adding the 'destination' parameter
  /// to the existing list of query parameters.
  /// e.g. 'destination=Europe&checkIn=2024-05-09&checkOut=2024-05-24&guests=1&destination=alaska',
  String searchQuery(String destinationRef) {
    assert(
      destinationRef.isNotEmpty,
      'destination should not be empty',
    );
    final params = Map<String, String>.from(_queryParameters)
      ..addAll({'destination': destinationRef});
    final uri = Uri(queryParameters: params);
    return uri.query;
  }

  /// Perform search
  Future<void> search() async {
    assert(
      _queryParameters.containsKey('continent'),
      '"continent" missing in query parameters',
    );
    // Set loading state and notify the view
    _loading = true;
    notifyListeners();

    final result = await _destinationRepository.getDestinations();
    // Set loading state to false
    _loading = false;
    switch (result) {
      case Ok():
        {
          // If the result is Ok, update the list of destinations
          _destinations = result.value
              .where((destination) =>
                  destination.continent == _queryParameters['continent'])
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
}
