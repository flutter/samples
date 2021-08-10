// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:linting_tool/model/rule.dart';
import 'package:yaml/yaml.dart';

class APIProvider {
  final _baseURL = 'https://dart-lang.github.io/linter';
  final http.Client httpClient;
  APIProvider(this.httpClient);

  Future<List<Rule>> getRulesList() async {
    final response =
        await httpClient.get(Uri.parse('$_baseURL//lints/machine/rules.json'));

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

  Future<YamlMap> getTemplateFile() async {
    final response = await httpClient.get(Uri.parse(
        'https://raw.githubusercontent.com/flutter/flutter/master/packages/flutter_tools/templates/app_shared/analysis_options.yaml.tmpl'));
    if (response.statusCode == 200) {
      return loadYaml(response.body) as YamlMap;
    } else {
      throw Exception('Failed to load template file');
    }
  }
}
