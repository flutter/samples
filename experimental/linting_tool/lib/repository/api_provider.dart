// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:linting_tool/model/rule.dart';
import 'package:yaml/yaml.dart';

class APIProvider {
  final http.Client httpClient;

  APIProvider(this.httpClient);

  Future<List<Rule>> getRulesList() async {
    final response = await httpClient.get(Uri.parse(
      'https://raw.githubusercontent.com/dart-lang/site-www/main/src/_data/linter_rules.json',
    ));

    if (response.statusCode == 200) {
      final data = json.decode(response.body) as List;
      final rulesList = [
        for (final item in data) Rule.fromJson(item as Map<String, dynamic>)
      ];
      return rulesList;
    } else {
      throw Exception('Failed to load rules');
    }
  }

  Future<YamlMap> getTemplateFile() async {
    final response = await httpClient.get(Uri.parse(
        'https://raw.githubusercontent.com/flutter/flutter/main/packages/flutter_tools/templates/app_shared/analysis_options.yaml.tmpl'));
    if (response.statusCode == 200) {
      return loadYaml(response.body) as YamlMap;
    } else {
      throw Exception('Failed to load template file');
    }
  }
}
