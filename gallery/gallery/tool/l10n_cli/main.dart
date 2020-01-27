// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:args/args.dart';

import 'l10n_cli.dart' as l10n_cli;

void main(List<String> arguments) {
  final parser = ArgParser()
    ..addFlag(
      'dry-run',
      help: 'Write the output to stdout.',
    );
  final argResults = parser.parse(arguments);
  l10n_cli.englishArbsToXmls(isDryRun: argResults['dry-run'] as bool);
}
