// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:linting_tool/model/profile.dart';
import 'package:linting_tool/model/profiles_store.dart';
import 'package:linting_tool/model/rule.dart';

/// Used to control editing of the saved profiles on the RulesPage.
class EditingController extends ChangeNotifier {
  bool _isEditing;

  EditingController({bool isEditing = false}) : _isEditing = isEditing;

  bool get isEditing => _isEditing;

  set isEditing(bool enabled) {
    _selectedRules.clear();
    _isEditing = enabled;
    notifyListeners();
  }

  final Set<Rule> _selectedRules = {};

  Set<Rule> get selectedRules => _selectedRules;

  void selectRule(Rule rule) {
    _selectedRules.add(rule);
    notifyListeners();
  }

  void deselectRule(Rule rule) {
    _selectedRules.remove(rule);
    notifyListeners();
  }

  Future deleteSelected(
      RulesProfile profile, ProfilesStore profilesStore) async {
    final rules = profile.rules;
    rules.removeWhere((rule) => _selectedRules.contains(rule));

    final newProfile = RulesProfile(name: profile.name, rules: rules);

    await profilesStore.updateProfile(profile, newProfile);

    isEditing = false;
    notifyListeners();
  }
}
