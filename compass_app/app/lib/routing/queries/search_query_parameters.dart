import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../ui/core/ui/date_format_start_end.dart';

typedef QueryParameters = Map<String, String>;

final _dateFormat = DateFormat('yyyy-MM-dd');

/// Helps manage query parameters across the different navigation steps
class SearchQueryParameters {
  const SearchQueryParameters({
    required this.continent,
    required this.startDate,
    required this.endDate,
    required this.guests,
    this.destination,
  });

  final String continent;
  final DateTime startDate;
  final DateTime endDate;
  final int guests;
  final String? destination;

  /// true when the query parameters contain all necessary values.
  static bool validQueryParameters(
    QueryParameters queryParameters, {
    bool withDestination = false,
  }) {
    return [
      'continent',
      'checkIn',
      'checkOut',
      'guests',
      if (withDestination) 'destination',
    ].every((key) => queryParameters.containsKey(key));
  }

  /// Parse query parameters into an instance of this class
  factory SearchQueryParameters.fromQueryParameters(
    QueryParameters queryParameters,
  ) {
    return SearchQueryParameters(
      continent: queryParameters['continent']!,
      startDate: _dateFormat.parse(queryParameters['checkIn']!),
      endDate: _dateFormat.parse(queryParameters['checkOut']!),
      guests: int.tryParse(queryParameters['guests']!) ?? 0,
      destination: queryParameters['destination'],
    );
  }

  /// Convert this object into query parameters
  QueryParameters toQueryParameters() {
    return {
      'continent': continent,
      'checkIn': _dateFormat.format(startDate),
      'checkOut': _dateFormat.format(endDate),
      'guests': guests.toString(),
      if (destination != null) 'destination': destination!,
    };
  }

  /// Query to use in navigation
  String get query => Uri(queryParameters: toQueryParameters()).query;

  /// Copy this object with a destination parameter
  SearchQueryParameters withDestination(String destination) {
    return SearchQueryParameters(
      continent: continent,
      startDate: startDate,
      endDate: endDate,
      guests: guests,
      destination: destination,
    );
  }
}
