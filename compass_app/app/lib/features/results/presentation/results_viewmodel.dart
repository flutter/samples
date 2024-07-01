import 'package:compass_app/common/utils/result.dart';
import 'package:compass_app/features/results/business/model/destination.dart';
import 'package:compass_app/features/results/business/usecases/search_destination_usecase.dart';
import 'package:flutter/cupertino.dart';

/// Results screen view model
/// Based on https://docs.flutter.dev/get-started/fwe/state-management#using-mvvm-for-your-applications-architecture
class ResultsViewModel extends ChangeNotifier {
  ResultsViewModel({
    required SearchDestinationUsecase searchDestinationUsecase,
  }) : _searchDestinationUsecase = searchDestinationUsecase {
    // Preload a search result
    search(continent: 'Europe');
  }

  final SearchDestinationUsecase _searchDestinationUsecase;

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

    // Call the search usecase and request data
    final result = await _searchDestinationUsecase.search(continent: continent);
    // Set loading state to false
    _loading = false;
    switch (result) {
      case Ok(): {
        // If the result is Ok, update the list of destinations
        _destinations = result.value;
      }
      case Error(): {
        // TODO: Handle error
        print(result.error);
      }
    }

    // After finish loading results, notify the view
    notifyListeners();
  }
}
