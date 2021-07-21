// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:linting_tool/model/rule.dart';

class APIProvider {
  final _baseURL = 'https://dart-lang.github.io/linter';
  Future<List<Rule>> getRulesList() async {
    http.Response response =
        await http.get(Uri.parse('$_baseURL//lints/machine/rules.json'));

    if (response.statusCode == 200) {
      List<Rule> rulesList = [];
      final data = json.decode(response.body) as List;
      for (var item in data) {
        rulesList.add(Rule.fromJson(item as Map<String, dynamic>));
      }
      return rulesList;
    } else {
      throw Exception('Failed to load rules');
    }
  }
}
