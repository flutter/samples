// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'local_veggie_provider.dart';
import 'veggie.dart';

class AppState extends ChangeNotifier {
  final List<Veggie> _veggies;

  AppState() : _veggies = LocalVeggieProvider.veggies;

  List<Veggie> get allVeggies => List<Veggie>.from(_veggies);

  List<Veggie> get availableVeggies {
    var currentSeason = _getSeasonForDate(DateTime.now());
    return _veggies.where((v) => v.seasons.contains(currentSeason)).toList();
  }

  List<Veggie> get favoriteVeggies =>
      _veggies.where((v) => v.isFavorite).toList();

  List<Veggie> get unavailableVeggies {
    var currentSeason = _getSeasonForDate(DateTime.now());
    return _veggies.where((v) => !v.seasons.contains(currentSeason)).toList();
  }

  Veggie getVeggie(int? id) => _veggies.singleWhere((v) => v.id == id);

  List<Veggie> searchVeggies(String? terms) => _veggies
      .where((v) => v.name.toLowerCase().contains(terms!.toLowerCase()))
      .toList();

  void setFavorite(int? id, bool isFavorite) {
    var veggie = getVeggie(id);
    veggie.isFavorite = isFavorite;
    notifyListeners();
  }

  /// Used in tests to set the season independent of the current date.
  static Season? debugCurrentSeason;

  static Season? _getSeasonForDate(DateTime date) {
    if (debugCurrentSeason != null) {
      return debugCurrentSeason;
    }

    // Technically the start and end dates of seasons can vary by a day or so,
    // but this is close enough for produce.
    switch (date.month) {
      case 1:
        return Season.winter;
      case 2:
        return Season.winter;
      case 3:
        return date.day < 21 ? Season.winter : Season.spring;
      case 4:
        return Season.spring;
      case 5:
        return Season.spring;
      case 6:
        return date.day < 21 ? Season.spring : Season.summer;
      case 7:
        return Season.summer;
      case 8:
        return Season.summer;
      case 9:
        return date.day < 22 ? Season.autumn : Season.winter;
      case 10:
        return Season.autumn;
      case 11:
        return Season.autumn;
      case 12:
        return date.day < 22 ? Season.autumn : Season.winter;
      default:
        throw ArgumentError('Can\'t return a season for month #${date.month}.');
    }
  }
}
