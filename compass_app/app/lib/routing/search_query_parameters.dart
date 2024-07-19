import 'package:intl/intl.dart';

typedef QueryParameters = Map<String, String>;

final _dateFormat = DateFormat('yyyy-MM-dd');

class SearchQueryParameters {
  const SearchQueryParameters({
    required this.continent,
    required this.startDate,
    required this.endDate,
    required this.guests,
  });

  final String continent;
  final DateTime startDate;
  final DateTime endDate;
  final int guests;

  factory SearchQueryParameters.fromQueryParameters(
    QueryParameters queryParameters,
  ) {
    return SearchQueryParameters(
      continent: queryParameters['continent']!,
      startDate: _dateFormat.parse(queryParameters['checkIn']!),
      endDate: _dateFormat.parse(queryParameters['checkOut']!),
      guests: int.tryParse(queryParameters['guests']!) ?? 0,
    );
  }

  QueryParameters toQueryParameters() {
    return {
      'continent': continent,
      'checkIn': _dateFormat.format(startDate),
      'checkOut': _dateFormat.format(endDate),
      'guests': guests.toString(),
    };
  }
}
