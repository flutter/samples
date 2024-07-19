import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:compass_model/model.dart';

import '../../../data/repositories/continent/continent_repository.dart';
import '../../../routing/queries/search_query_parameters.dart';
import '../../../utils/result.dart';

/// View model for the search form.
///
/// Contains the form selected options
/// and the logic to load the list of regions.
class SearchFormViewModel extends ChangeNotifier {
  SearchFormViewModel({
    required ContinentRepository continentRepository,
    SearchQueryParameters? queryParameters,
  }) : _continentRepository = continentRepository {
    load();
    // If query parameters are passed in, preload ViewModel state
    if (queryParameters != null) {
      _selectedContinent = queryParameters.continent;
      _dateRange = DateTimeRange(
          start: queryParameters.startDate, end: queryParameters.endDate);
      _guests = queryParameters.guests;
      notifyListeners();
    }
  }

  final ContinentRepository _continentRepository;
  List<Continent> _continents = [];
  String? _selectedContinent;
  DateTimeRange? _dateRange;
  int _guests = 0;

  /// True if the form is valid and can be submitted
  bool get valid =>
      _guests > 0 && _selectedContinent != null && _dateRange != null;

  /// Returns the search query string to call the Results screen
  /// e.g. 'destination=Europe&checkIn=2024-05-09&checkOut=2024-05-24&guests=1',
  /// Must be called only if [valid] is true
  get searchQuery {
    assert(valid, "Called searchQuery when the form is not valid");
    assert(
        _selectedContinent != null, "Called searchQuery without a continent");
    assert(_dateRange != null, "Called searchQuery without a date range");
    assert(_guests > 0, "Called searchQuery without guests");
    final startDate = _dateRange!.start;
    final endDate = _dateRange!.end;

    return SearchQueryParameters(
      continent: _selectedContinent!,
      startDate: startDate,
      endDate: endDate,
      guests: _guests,
    ).query;
  }

  /// List of continents.
  /// Loaded in [load] method.
  List<Continent> get continents => _continents;

  /// Load the list of continents.
  Future<void> load() async {
    final result = await _continentRepository.getContinents();
    switch (result) {
      case Ok():
        {
          _continents = result.value;
        }
      case Error():
        {
          // TODO: Handle error
          // ignore: avoid_print
          print(result.error);
        }
    }
    notifyListeners();
  }

  /// Selected continent.
  /// Null means no continent is selected.
  String? get selectedContinent => _selectedContinent;

  /// Set selected continent.
  /// Set to null to clear the selection.
  set selectedContinent(String? continent) {
    _selectedContinent = continent;
    notifyListeners();
  }

  /// Date range.
  /// Null means no range is selected.
  DateTimeRange? get dateRange => _dateRange;

  /// Set date range.
  /// Can be set to null to clear selection.
  set dateRange(DateTimeRange? dateRange) {
    _dateRange = dateRange;
    notifyListeners();
  }

  /// Number of guests
  int get guests => _guests;

  /// Set number of guests
  /// If the quantity is negative, it will be set to 0
  set guests(int quantity) {
    if (quantity < 0) {
      _guests = 0;
    } else {
      _guests = quantity;
    }
    notifyListeners();
  }
}
