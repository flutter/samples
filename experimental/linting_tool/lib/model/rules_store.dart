// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:linting_tool/model/rule.dart';
import 'package:linting_tool/repository/repository.dart';

class RuleStore extends ChangeNotifier {
  RuleStore() {
    fetchRules();
  }
  bool _isLoading = true;

  bool get isLoading => _isLoading;

  List<Rule> _rules = [];

  List<Rule> get rules => _rules;

  String? _error;

  String? get error => _error;

  Future<void> fetchRules() async {
    if (!_isLoading) _isLoading = true;
    notifyListeners();
    try {
      var rules = await Repository().getRulesList();
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
