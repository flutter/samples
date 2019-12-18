// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:l10n_cli/l10n_cli.dart' as l10n_cli;
import 'package:args/args.dart' as args;

main(List<String> arguments) async {
  final parser = args.ArgParser();
  parser.addOption(
    'input-arb-file',
    help: 'The input arb file to generate xml for.',
  );
  parser.addOption(
    'output-xml-file',
    help: 'The output xml file that is generated from given arb file.',
  );
  final results = parser.parse(arguments);
  await l10n_cli.englishArbsToXmls(
    results['input-arb-file'],
    results['output-xml-file'],
  );
}
