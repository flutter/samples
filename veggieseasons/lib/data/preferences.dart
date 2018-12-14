// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:scoped_model/scoped_model.dart';
import 'package:veggieseasons/data/veggie.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// A model class that mirrors the options in [SettingsScreen] and stores data
/// in shared preferences.
class Preferences extends Model {
  // Keys to use with shared preferences.
  static const _caloriesKey = 'calories';
  static const _preferredCategoriesKey = 'preferredCategories';

  // Indicates whether a call to [_loadFromSharedPrefs] is in progress;
  Future<void> _loadResult;

  int _desiredCalories = 2000;

  Set<VeggieCategory> _preferredCategories = Set<VeggieCategory>();

  Future<int> get desiredCalories async {
    await _loadResult;
    return _desiredCalories;
  }

  Future<Set<VeggieCategory>> get preferredCategories async {
    await _loadResult;
    return Set.from(_preferredCategories);
  }

  void addPreferredCategory(VeggieCategory category) {
    _preferredCategories.add(category);
    _saveToSharedPrefs();
    notifyListeners();
  }

  void removePreferredCategory(VeggieCategory category) {
    _preferredCategories.remove(category);
    _saveToSharedPrefs();
    notifyListeners();
  }

  void setDesiredCalories(int calories) {
    _desiredCalories = calories;
    _saveToSharedPrefs();
    notifyListeners();
  }

  void load() {
    _loadResult = _loadFromSharedPrefs();
  }

  Future<void> _saveToSharedPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt(_caloriesKey, _desiredCalories);

    // Store preferred categories as a comma-separated string containing their
    // indices.
    prefs.setString(_preferredCategoriesKey,
        _preferredCategories.map((c) => c.index.toString()).join(','));
  }

  Future<void> _loadFromSharedPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    _desiredCalories = prefs.getInt(_caloriesKey) ?? 2000;
    _preferredCategories.clear();
    final names = prefs.getString(_preferredCategoriesKey) ?? '';

    for (final name in names.split(',')) {
      final index = int.parse(name) ?? 0;
      if (VeggieCategory.values[index] != null) {
        _preferredCategories.add(VeggieCategory.values[index]);
      }
    }

    notifyListeners();
  }
}
