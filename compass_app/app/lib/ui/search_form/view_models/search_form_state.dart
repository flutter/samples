import 'package:flutter/material.dart';

import '../../../data/models/continent.dart';

@immutable
class SearchFormState {
  SearchFormState({
    /// List of the 7 inhabited continents:
    /// North America, South America, Africa, Europe, Oceania, Asia, and Australia
    this.continents = const <Continent>[],

    /// The continent currently selected by the user
    this.selectedContinent,

    /// The selected date range
    this.dateRange,

    /// The number of guests
    this.guests = 0,
  });

  final List<Continent> continents;
  final Continent? selectedContinent;
  final DateTimeRange? dateRange;
  final int guests;

  SearchFormState copy({
    continents,
    selectedContinent,
    dateRange,
    guests,
  }) {
    return SearchFormState(
      continents: continents ?? this.continents,
      selectedContinent: selectedContinent ?? this.selectedContinent,
      dateRange: dateRange ?? this.dateRange,
      guests: guests ?? this.guests,
    );
  }
}
