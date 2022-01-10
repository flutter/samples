// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:async/async.dart' show StreamGroup;
import 'package:grinder/grinder.dart';

void main(List<String> args) => grind(args);

@DefaultTask()
@Depends(pubGet, generateJsonBindings, analyzeSource, test)
void build() {}

@Task()
Future<void> pubGet() async => _logProcessOutput(
      Process.start(
        'flutter',
        ['pub', 'get'],
      ),
    );

@Task()
Future<void> generateJsonBindings() async => _logProcessOutput(
      Process.start(
        'flutter',
        ['pub', 'run', 'build_runner', 'build', '--delete-conflicting-outputs'],
      ),
    );

@Task()
Future<void> watch() async => _logProcessOutput(
      Process.start(
        'flutter',
        ['pub', 'run', 'build_runner', 'watch'],
      ),
    );

@Task()
Future<void> analyzeSource() async => _logProcessOutput(
      Process.start(
        'flutter',
        ['analyze'],
      ),
    );

@Task()
Future<void> test() async => _logProcessOutput(
      Process.start(
        'flutter',
        ['test'],
      ),
    );

@Task()
Future<void> clean() => _logProcessOutput(
      Process.start(
        'flutter',
        ['clean'],
      ),
    );

Future<void> _logProcessOutput(Future<Process> proc) async {
  final process = await proc;
  final output = StreamGroup.merge([process.stdout, process.stderr]);
  await for (final message in output) {
    log(utf8.decode(message));
  }
}
