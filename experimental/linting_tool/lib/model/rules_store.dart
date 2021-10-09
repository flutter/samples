// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:linting_tool/model/profile.dart';
import 'package:linting_tool/model/rule.dart';
import 'package:linting_tool/repository/repository.dart';

/// Manages fetching rules from the web.
class RuleStore extends ChangeNotifier {
  late final Repository repository;

  RuleStore(http.Client httpClient) {
    repository = Repository(httpClient);
    fetchRules();
  }
  bool _isLoading = true;

  bool get isLoading => _isLoading;

  List<Rule> _rules = [];

  List<Rule> get rules => _rules;

  String? _error;

  String? get error => _error;

  List<RulesProfile> get defaultProfiles {
    List<RulesProfile> _defaultProfiles = [];

    var rulesWithDefaultSets =
        rules.where((rule) => rule.sets.isNotEmpty).toList();

    for (final rule in rulesWithDefaultSets) {
      for (final setName in rule.sets) {
        var profileIndex =
            _defaultProfiles.indexWhere((profile) => profile.name == setName);
        if (profileIndex >= 0) {
          _defaultProfiles[profileIndex].rules.add(rule);
        } else {
          _defaultProfiles.add(RulesProfile(name: setName, rules: [rule]));
        }
      }
    }

    return _defaultProfiles;
  }

  Future<void> fetchRules() async {
    if (!_isLoading) _isLoading = true;
    notifyListeners();
    try {
      var rules = await repository.getRulesList();
      _rules = rules;
    } on SocketException catch (e) {
      log(e.toString());
      _error = 'Check internet connection.';
    } on Exception catch (e) {
      log(e.toString());
    }
    _isLoading = false;

    notifyListeners();
  }
}
