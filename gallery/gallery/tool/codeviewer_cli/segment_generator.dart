// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';
import 'dart:io';
import 'prehighlighter.dart';

const _globalPrologue =
    '''// This file is automatically generated by codeviewer_cli.
// Do not edit this file.

// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:gallery/codeviewer/code_style.dart';

class CodeSegments {
''';

const _globalEpilogue = '}\n';

final Pattern beginSubsegment = RegExp(r'//\s+BEGIN');
final Pattern endSubsegment = RegExp(r'//\s+END');

enum _FileReadStatus {
  comments,
  imports,
  finished,
}

/// Returns the new status of the scanner whose previous status was
/// [oldStatus], after scanning the line [line].
_FileReadStatus _updatedStatus(_FileReadStatus oldStatus, String line) {
  _FileReadStatus lineStatus;
  if (line.trim().startsWith('//')) {
    lineStatus = _FileReadStatus.comments;
  } else if (line.trim().startsWith('import')) {
    lineStatus = _FileReadStatus.imports;
  } else {
    lineStatus = _FileReadStatus.finished;
  }

  _FileReadStatus newStatus;
  switch (oldStatus) {
    case _FileReadStatus.comments:
      newStatus =
          (line.trim().isEmpty || lineStatus == _FileReadStatus.comments)
              ? _FileReadStatus.comments
              : lineStatus;
      break;
    case _FileReadStatus.imports:
      newStatus = (line.trim().isEmpty || lineStatus == _FileReadStatus.imports)
          ? _FileReadStatus.imports
          : _FileReadStatus.finished;
      break;
    case _FileReadStatus.finished:
      newStatus = oldStatus;
      break;
  }
  return newStatus;
}

Map<String, String> _createSegments(String sourceDirectoryPath) {
  List<File> files = Directory(sourceDirectoryPath)
      .listSync(recursive: true)
      .whereType<File>()
      .toList();

  Map<String, StringBuffer> subsegments = {};
  Map<String, String> subsegmentPrologues = {};

  Set<String> appearedSubsegments = Set();

  for (final file in files) {
    // Process file.

    String content = file.readAsStringSync();
    List<String> lines = LineSplitter().convert(content);

    _FileReadStatus status = _FileReadStatus.comments;

    StringBuffer prologue = StringBuffer();

    Set<String> activeSubsegments = Set();

    for (final line in lines) {
      // Update status.

      status = _updatedStatus(status, line);

      if (status != _FileReadStatus.finished) {
        prologue.writeln(line);
      }

      // Process run commands.

      if (line.trim().startsWith(beginSubsegment)) {
        String argumentString = line.replaceFirst(beginSubsegment, '').trim();
        List<String> arguments =
            argumentString.isEmpty ? [] : argumentString.split(RegExp(r'\s+'));

        for (final argument in arguments) {
          if (activeSubsegments.contains(argument)) {
            throw PreformatterException(
                'BEGIN $argument is used twice in file ${file.path}');
          } else if (appearedSubsegments.contains(argument)) {
            throw PreformatterException('BEGIN $argument is used twice');
          } else {
            activeSubsegments.add(argument);
            appearedSubsegments.add(argument);
            subsegments[argument] = StringBuffer();
            subsegmentPrologues[argument] = prologue.toString();
          }
        }
      } else if (line.trim().startsWith(endSubsegment)) {
        String argumentString = line.replaceFirst(endSubsegment, '').trim();
        List<String> arguments =
            argumentString.isEmpty ? [] : argumentString.split(RegExp(r'\s+'));

        if (arguments.isEmpty && activeSubsegments.length == 1) {
          arguments.add(activeSubsegments.first);
        }

        for (final argument in arguments) {
          if (activeSubsegments.contains(argument)) {
            activeSubsegments.remove(argument);
          } else {
            throw PreformatterException(
                'END $argument is used without a paired BEGIN in ${file.path}');
          }
        }
      } else {
        // Simple line.

        for (final name in activeSubsegments) {
          subsegments[name].writeln(line);
        }
      }
    }

    if (activeSubsegments.isNotEmpty) {
      throw PreformatterException('File ${file.path} has unpaired BEGIN');
    }
  }

  Map<String, List<TaggedString>> segments = {};
  Map<String, String> segmentPrologues = {};

  // Sometimes a code segment is made up of subsegments. They are marked by
  // names with a "#" symbol in it, such as "bottomSheetDemoModal#1" and
  // "bottomSheetDemoModal#2".
  // The following code groups the subsegments by order into segments.
  subsegments.forEach((key, value) {
    String name;
    double order;

    if (key.contains('#')) {
      List<String> parts = key.split('#');
      name = parts[0];
      order = double.parse(parts[1]);
    } else {
      name = key;
      order = 0;
    }

    if (!segments.containsKey(name)) {
      segments[name] = [];
    }
    segments[name].add(
      TaggedString(
        text: value.toString(),
        order: order,
      ),
    );

    segmentPrologues[name] = subsegmentPrologues[key];
  });

  segments.forEach((key, value) {
    value.sort((ts1, ts2) => (ts1.order - ts2.order).sign.round());
  });

  Map<String, String> answer = {};

  for (final name in segments.keys) {
    StringBuffer buffer = StringBuffer();

    buffer.write(segmentPrologues[name].trim());
    buffer.write('\n\n');

    for (final ts in segments[name]) {
      buffer.write(ts.text.trim());
      buffer.write('\n\n');
    }

    answer[name] = buffer.toString();
  }

  return answer;
}

/// A string [text] together with a number [order], for sorting purposes.
/// Used to store different subsegments of a code segment.
/// The [order] of each subsegment is tagged with the code in order to be
/// sorted in the desired order.
class TaggedString {
  TaggedString({this.text, this.order});

  final String text;
  final double order;
}

void _formatSegments(Map<String, String> segments, IOSink output) {
  output.write(_globalPrologue);

  for (final name in segments.keys) {
    String code = segments[name];

    output.writeln('  static TextSpan $name (BuildContext context) {');
    output.writeln('    final CodeStyle codeStyle = CodeStyle.of(context);');
    output.writeln('    return TextSpan(children: [');

    List<CodeSpan> codeSpans = DartSyntaxPrehighlighter().format(code);

    for (final span in codeSpans) {
      output.write('    ');
      output.write(span.toString());
      output.write(',\n');
    }

    output.write('  ]); }\n');
  }

  output.write(_globalEpilogue);

  output.close();
}

/// Collect code segments, highlight, and write to file.
///
/// [writeSegments] walks through the directory specified by
/// [sourceDirectoryPath] and reads every file in it,
/// collects code segments marked by "// BEGIN <segment_name>" and "// END",
/// highlights them, and writes to the file specified by
/// [targetFilePath]. If [isDryRun] is true, the output will
/// be written to stdout.
///
/// The output file is a dart source file with a class "CodeSegments" and
/// static methods of type TextSpan(BuildContext context).
/// Each method generates a widget that displays a segment of code.
///
/// The target file is overwritten.
void writeSegments(
    {String sourceDirectoryPath, String targetFilePath, bool isDryRun}) {
  Map<String, String> segments = _createSegments(sourceDirectoryPath);
  IOSink output = isDryRun ? stdout : File(targetFilePath).openWrite();
  _formatSegments(segments, output);
}

class PreformatterException implements Exception {
  PreformatterException(this.cause);
  String cause;
}
