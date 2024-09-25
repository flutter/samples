// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Simple Localizations similar to
/// https://docs.flutter.dev/ui/accessibility-and-internationalization/internationalization#an-alternative-class-for-the-apps-localized-resources
class AppLocalization {
  static AppLocalization of(BuildContext context) {
    return Localizations.of(context, AppLocalization);
  }

  static const _strings = <String, String>{
    'activities': 'Activities',
    'addDates': 'Add Dates',
    'bookingDeleted': 'Booking deleted',
    'bookNewTrip': 'Book New Trip',
    'close': 'Close',
    'confirm': 'Confirm',
    'daytime': 'Daytime',
    'errorWhileDeletingBooking': 'Error while deleting booking',
    'errorWhileLoadingActivities': 'Error while loading activities',
    'errorWhileLoadingBooking': 'Error while loading booking',
    'errorWhileLoadingContinents': 'Error while loading continents',
    'errorWhileLoadingDestinations': 'Error while loading destinations',
    'errorWhileLoadingHome': 'Error while loading home',
    'errorWhileLogin': 'Error while trying to login',
    'errorWhileLogout': 'Error while trying to logout',
    'errorWhileSavingActivities': 'Error while saving activities',
    'errorWhileSavingItinerary': 'Error while saving itinerary',
    'errorWhileSharing': 'Error while sharing booking',
    'evening': 'Evening',
    'login': 'Login',
    'nameTrips': '{name}\'s Trips',
    'search': 'Search',
    'searchDestination': 'Search destination',
    'selected': '{1} selected',
    'shareTrip': 'Share Trip',
    'tryAgain': 'Try again',
    'yourChosenActivities': 'Your chosen activities',
    'when': 'When',
  };

  // If string for "label" does not exist, will show "[LABEL]"
  static String _get(String label) =>
      _strings[label] ?? '[${label.toUpperCase()}]';

  String get activities => _get('activities');

  String get addDates => _get('addDates');

  String get confirm => _get('confirm');

  String get daytime => _get('daytime');

  String get errorWhileLoadingActivities => _get('errorWhileLoadingActivities');

  String get errorWhileLoadingBooking => _get('errorWhileLoadingBooking');

  String get errorWhileLoadingContinents => _get('errorWhileLoadingContinents');

  String get errorWhileLoadingDestinations =>
      _get('errorWhileLoadingDestinations');

  String get errorWhileSavingActivities => _get('errorWhileSavingActivities');

  String get errorWhileSavingItinerary => _get('errorWhileSavingItinerary');

  String get evening => _get('evening');

  String get search => _get('search');

  String get searchDestination => _get('searchDestination');

  String get shareTrip => _get('shareTrip');

  String get tryAgain => _get('tryAgain');

  String get yourChosenActivities => _get('yourChosenActivities');

  String get when => _get('when');

  String get errorWhileLogin => _get('errorWhileLogin');

  String get login => _get('login');

  String get errorWhileLogout => _get('errorWhileLogout');

  String get close => _get('close');

  String get errorWhileSharing => _get('errorWhileSharing');

  String get bookNewTrip => _get('bookNewTrip');

  String get errorWhileLoadingHome => _get('errorWhileLoadingHome');

  String get bookingDeleted => _get('bookingDeleted');

  String get errorWhileDeletingBooking => _get('errorWhileDeletingBooking');

  String nameTrips(String name) => _get('nameTrips').replaceAll('{name}', name);

  String selected(int value) =>
      _get('selected').replaceAll('{1}', value.toString());
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  @override
  bool isSupported(Locale locale) => locale.languageCode == 'en';

  @override
  Future<AppLocalization> load(Locale locale) {
    return SynchronousFuture(AppLocalization());
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalization> old) =>
      false;
}
