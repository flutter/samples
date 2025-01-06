// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:logging/logging.dart';

import '../../../data/repositories/destination/destination_repository.dart';
import '../../../data/repositories/itinerary_config/itinerary_config_repository.dart';
import '../../../domain/models/destination/destination.dart';
import '../../../domain/models/itinerary_config/itinerary_config.dart';
import '../../../utils/command.dart';
import '../../../utils/result.dart';

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

  final _log = Logger('ResultsViewModel');

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
    switch (resultConfig) {
      case Error<ItineraryConfig>():
        _log.warning(
          'Failed to load stored ItineraryConfig',
          resultConfig.error,
        );
        return resultConfig;
      case Ok<ItineraryConfig>():
    }
    _itineraryConfig = resultConfig.value;
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
          _log.fine('Destinations (${_destinations.length}) loaded');
        }
      case Error():
        {
          _log.warning('Failed to load destinations', result.error);
        }
    }

    // After finish loading results, notify the view
    notifyListeners();
    return result;
  }

  Future<Result<void>> _updateItineraryConfig(String destinationRef) async {
    assert(destinationRef.isNotEmpty, "destinationRef should not be empty");

    final resultConfig = await _itineraryConfigRepository.getItineraryConfig();
    switch (resultConfig) {
      case Error<ItineraryConfig>():
        _log.warning(
          'Failed to load stored ItineraryConfig',
          resultConfig.error,
        );
        return resultConfig;
      case Ok<ItineraryConfig>():
    }

    final itineraryConfig = resultConfig.value;
    final result = await _itineraryConfigRepository
        .setItineraryConfig(itineraryConfig.copyWith(
      destination: destinationRef,
      activities: [],
    ));
    if (result is Error) {
      _log.warning(
        'Failed to store ItineraryConfig',
        result.error,
      );
    }
    return result;
  }
}
