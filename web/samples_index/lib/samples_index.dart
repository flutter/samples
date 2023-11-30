// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file

import 'dart:io';
import 'package:checked_yaml/checked_yaml.dart';

import 'src/data.dart';

export 'src/data.dart';

Future<List<Sample>> getSamples() async {
  var yamlFile = File('lib/src/samples.yaml');
  var contents = await yamlFile.readAsString();
  var index = checkedYamlDecode(
      contents, (m) => m != null ? Index.fromJson(m) : null,
      sourceUrl: yamlFile.uri);
  if (index == null) throw ('unable to get load from ${yamlFile.uri}');
  return index.samples;
}
