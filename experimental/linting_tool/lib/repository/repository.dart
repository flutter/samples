// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:linting_tool/model/rule.dart';
import 'package:linting_tool/repository/api_provider.dart';

class Repository {
  final _apiProvider = APIProvider();

  Future<List<Rule>> getRulesList() => _apiProvider.getRulesList();
}
