// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file

import 'dart:convert';

String indent(String content, int spaces) =>
    LineSplitter.split(content).join('\n' + ' ' * spaces);

String kebabCase(String input) => _fixCase(input, '-');

String snakeCase(String input) => _fixCase(input, '_');

final _upperCase = RegExp('[A-Z]');

String pascalCase(String input) {
  if (input.isEmpty) {
    return '';
  }

  return input[0].toUpperCase() + input.substring(1);
}

String _fixCase(String input, String separator) =>
    input.replaceAllMapped(_upperCase, (match) {
      var lower = match.group(0).toLowerCase();

      if (match.start > 0) {
        lower = '$separator$lower';
      }

      return lower;
    });
