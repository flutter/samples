// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:linting_tool/model/profile.dart';
import 'package:linting_tool/model/rule.dart';
import 'package:linting_tool/repository/hive_service.dart';

class ProfilesStore extends ChangeNotifier {
  ProfilesStore() {
    fetchSavedProfiles();
  }
  bool _isLoading = true;

  bool get isLoading => _isLoading;

  List<RulesProfile> _savedProfiles = [];

  List<RulesProfile> get savedProfiles => _savedProfiles;

  String? _error;

  String? get error => _error;

  Future<void> fetchSavedProfiles() async {
    if (!_isLoading) _isLoading = true;
    notifyListeners();
    try {
      var profiles = await HiveService.getBoxes<RulesProfile>('rules_profile');
      _savedProfiles = profiles;
    } on Exception catch (e) {
      log(e.toString());
    }
    _isLoading = false;

    notifyListeners();
  }

  Future<void> addToNewProfile(RulesProfile profile) async {
    await HiveService.addBox<RulesProfile>(profile, 'rules_profile');

    await Future.delayed(const Duration(milliseconds: 100), () async {
      await fetchSavedProfiles();
    });
  }

  Future<void> addToExistingProfile(RulesProfile profile, Rule rule) async {
    RulesProfile newProfile =
        RulesProfile(name: profile.name, rules: profile.rules..add(rule));

    await HiveService.updateBox<RulesProfile>(
        profile, newProfile, 'rules_profile');

    await Future.delayed(const Duration(milliseconds: 100), () async {
      await fetchSavedProfiles();
    });
  }

  Future<void> deleteProfile(RulesProfile profile) async {
    await HiveService.deleteBox<RulesProfile>(profile, 'rules_profile');

    await Future.delayed(const Duration(milliseconds: 100), () async {
      await fetchSavedProfiles();
    });
  }
}
