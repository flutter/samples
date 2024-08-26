import 'dart:async';

import 'package:flutter/material.dart';
import 'package:compass_model/model.dart';
import 'package:logging/logging.dart';

import '../../../data/models/continent.dart';
import '../../../data/repositories/continent/continent_repository.dart';
import '../../../data/repositories/itinerary_config/itinerary_config_repository.dart';
import '../../../utils/command.dart';
import '../../../utils/result.dart';
import '../../../utils/view_command.dart';
import 'search_form_state.dart';

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
    updateItineraryConfig = Command0(_updateItineraryConfig);
    load = Command0(_load)..execute();
  }

  final _log = Logger('SearchFormViewModel');
  final ContinentRepository _continentRepository;
  final ItineraryConfigRepository _itineraryConfigRepository;

  // Immutable data class that holds state the View needs to display
  SearchFormState searchFormState = SearchFormState();

  /// True if the form is valid and can be submitted
  bool get valid =>
      searchFormState.guests > 0 &&
      searchFormState.selectedContinent != null &&
      searchFormState.dateRange != null;

  /// Set selected continent.
  /// Set to null to clear the selection.
  /// A [TypedCommand] that set's the selected continent on the [SearchFormState]
  void updateSelectedContinent(Continent? continent) {
    if (continent == searchFormState.selectedContinent) {
      searchFormState = searchFormState.copy(selectedContinent: null);
    } else {
      searchFormState = searchFormState.copy(selectedContinent: continent);
    }
    _log.finest('Selected continent: $continent');
    notifyListeners();
  }

  /// Set date range.
  /// Can be set to null to clear selection.
  /// A [TypedCommand] that set's the date range on the [SearchFormState]
  void updateDateRange(DateTimeRange? dateRange) {
    searchFormState = searchFormState.copy(dateRange: dateRange);
    _log.finest('Selected date range: $dateRange');
    notifyListeners();
  }

  /// Subtracts one from the number of guests
  /// If the quantity is negative, it will be set to 0
  void decreaseGuests() {
    var quantity = searchFormState.guests;
    if (quantity - 1 < 0) {
      searchFormState = searchFormState.copy(guests: 0);
    } else {
      searchFormState = searchFormState.copy(guests: quantity - 1);
    }
    _log.finest('Set guests number: ${searchFormState.guests}');
    notifyListeners();
  }

  /// Adds one to the quantity of guests
  void increaseGuests() {
    searchFormState = searchFormState.copy(guests: searchFormState.guests + 1);
    _log.finest('Set guests number: ${searchFormState.guests}');
    notifyListeners();
  }

  /// Load the list of continents and current itinerary config.
  late final Command0 load;

  /// Store ViewModel data into [ItineraryConfigRepository] before navigating.
  late final Command0 updateItineraryConfig;

  Future<Result<void>> _load() async {
    final result = await _loadContinents();
    if (result is Error) {
      return result;
    }
    return await _loadItineraryConfig();
  }

  Future<Result<void>> _loadContinents() async {
    final result = await _continentRepository.getContinents();
    switch (result) {
      case Ok():
        searchFormState = searchFormState.copy(continents: result.value);
      case Error():
        _log.warning('Failed to load continents', result.asError.error);
    }
    notifyListeners();
    return result;
  }

  Future<Result<void>> _loadItineraryConfig() async {
    final result = await _itineraryConfigRepository.getItineraryConfig();
    switch (result) {
      case Ok<ItineraryConfig>():
        {
          final itineraryConfig = result.value;
          final dateRage = itineraryConfig.startDate != null &&
                  itineraryConfig.endDate != null
              ? DateTimeRange(
                  start: itineraryConfig.startDate!,
                  end: itineraryConfig.endDate!)
              : null;
          final selectedContinent = itineraryConfig.continent != null
              ? searchFormState.continents.firstWhere(
                  (continent) => continent.name == itineraryConfig.continent,
                )
              : null;
          searchFormState = searchFormState.copy(
            selectedContinent: selectedContinent,
            dateRange: dateRage,
            guests: itineraryConfig.guests ?? 0,
          );
          _log.fine('ItineraryConfig loaded');
          notifyListeners();
        }
      case Error<ItineraryConfig>():
        {
          _log.warning(
            'Failed to load stored ItineraryConfig',
            result.asError.error,
          );
        }
    }
    return result;
  }

  Future<Result<void>> _updateItineraryConfig() async {
    assert(valid, "called when valid was false");
    final result = await _itineraryConfigRepository.setItineraryConfig(
      ItineraryConfig(
        continent: searchFormState.selectedContinent!.name,
        startDate: searchFormState.dateRange!.start,
        endDate: searchFormState.dateRange!.end,
        guests: searchFormState.guests,
      ),
    );
    switch (result) {
      case Ok<void>():
        _log.fine('ItineraryConfig saved');
      case Error<void>():
        _log.warning('Failed to store ItineraryConfig', result.error);
    }
    return result;
  }
}
