import 'package:flutter/material.dart';
import 'package:compass_model/model.dart';

import '../../../data/repositories/continent/continent_repository.dart';
import '../../../data/repositories/itinerary_config/itinerary_config_repository.dart';
import '../../../utils/command.dart';
import '../../../utils/result.dart';

/// View model for the search form.
///
/// Contains the form selected options
/// and the logic to load the list of regions.
class SearchFormViewModel extends ChangeNotifier {
  SearchFormViewModel({
    required ContinentRepository continentRepository,
    required ItineraryConfigRepository itineraryConfigRepository,
  })  : _continentRepository = continentRepository,
        _itineraryConfigRepository = itineraryConfigRepository {
    updateItineraryConfig = Command0(_updateItineraryConfig, () => valid);
    load = Command0(_load)..execute();
  }

  final ContinentRepository _continentRepository;
  final ItineraryConfigRepository _itineraryConfigRepository;
  List<Continent> _continents = [];
  String? _selectedContinent;
  DateTimeRange? _dateRange;
  int _guests = 0;

  /// True if the form is valid and can be submitted
  bool get valid =>
      _guests > 0 && _selectedContinent != null && _dateRange != null;

  /// List of continents.
  /// Loaded in [loadContinents] method.
  List<Continent> get continents => _continents;

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

  /// Load the list of continents and current itinerary config.
  late final Command load;

  /// Store ViewModel data into [ItineraryConfigRepository] before navigating.
  late final Command0<bool> updateItineraryConfig;

  Future<void> _load() async {
    await _loadContinents();
    await _loadItineraryConfig();
  }

  Future<void> _loadContinents() async {
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

  Future<void> _loadItineraryConfig() async {
    final result = await _itineraryConfigRepository.getItineraryConfig();
    switch (result) {
      case Ok<ItineraryConfig>():
        {
          final itineraryConfig = result.value;
          _selectedContinent = itineraryConfig.continent;
          if (itineraryConfig.startDate != null &&
              itineraryConfig.endDate != null) {
            _dateRange = DateTimeRange(
              start: itineraryConfig.startDate!,
              end: itineraryConfig.endDate!,
            );
          }
          _guests = itineraryConfig.guests ?? 0;
          notifyListeners();
        }
      case Error<ItineraryConfig>():
        {
          // TODO: Handle error
          // ignore: avoid_print
          print(result.error);
        }
    }
  }

  Future<bool> _updateItineraryConfig() async {
    final result =
        await _itineraryConfigRepository.setItineraryConfig(ItineraryConfig(
      continent: _selectedContinent,
      startDate: _dateRange!.start,
      endDate: _dateRange!.end,
      guests: _guests,
    ));
    switch (result) {
      case Ok<void>():
        {
          // Nothing
          return true;
        }
      case Error<void>():
        {
          // TODO: Handle error
          // ignore: avoid_print
          print(result.error);
          return false;
        }
    }
  }
}
