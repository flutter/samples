// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file

import 'dart:convert';
import 'dart:io';

import 'src/data.dart';
import 'package:checked_yaml/checked_yaml.dart';

export 'src/data.dart';

Future<List<Sample>> getSamples() async {
  var yamlFile = File('lib/src/samples.yaml');
  var cookbookFile = File('lib/src/cookbook.json');
  var contents = await yamlFile.readAsString();
  var cookbookContents = await cookbookFile.readAsString();
  var index = checkedYamlDecode(contents, (m) => Index.fromJson(m),
      sourceUrl: yamlFile.uri);
  var cookbookIndex = Index.fromJson(json.decode(cookbookContents));
  return index.samples..addAll(cookbookIndex.samples);
}
