// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:http/http.dart' as http;
import 'package:linting_tool/model/rule.dart';
import 'package:linting_tool/repository/api_provider.dart';
import 'package:yaml/yaml.dart';

class Repository {
  late final APIProvider _apiProvider;

  Repository(http.Client httpClient) {
    _apiProvider = APIProvider(httpClient);
  }

  Future<List<Rule>> getRulesList() => _apiProvider.getRulesList();

  Future<YamlMap> getTemplateFile() => _apiProvider.getTemplateFile();
}
