// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';

const _l10nDir = '../gallery/lib/l10n';
const _intlHeader = '''
<?xml version="1.0" encoding="utf-8"?>
<!--
  This file was automatically generated.
  Please do not edit it manually.
  It was based on gallery/lib/src/l10n/intl_en_US.arb.
-->
<resources>
''';

const _pluralSuffixes = <String>[
  'Zero',
  'One',
  'Two',
  'Few',
  'Many',
  'Other',
];

String _escapeXml(String xml) {
  return xml
      .replaceAll('&', '&amp;')
      .replaceAll('"', '&quot;')
      .replaceAll("'", '&apos;')
      .replaceAll('>', '&gt;')
      .replaceAll('<', '&lt;');
}

/// Processes the XML files.
Future<void> englishArbsToXmls({bool isDryRun = false}) async {
  IOSink output =
      isDryRun ? stdout : File('$_l10nDir/intl_en_US.xml').openWrite();
  await generateXmlFromArb(
    inputArb: File('$_l10nDir/intl_en_US.arb'),
    outputXml: output,
    xmlHeader: _intlHeader,
  );
  await output.close();
}

@visibleForTesting
Future<void> generateXmlFromArb({
  File inputArb,
  IOSink outputXml,
  String xmlHeader,
}) async {
  final Map<String, dynamic> bundle =
      jsonDecode(await inputArb.readAsString()) as Map<String, dynamic>;

  String translationFor(String key) {
    assert(bundle[key] != null);
    return _escapeXml(bundle[key] as String);
  }

  final xml = StringBuffer(xmlHeader);

  for (String key in bundle.keys) {
    if (key == '@@last_modified') {
      continue;
    }

    if (!key.startsWith('@')) {
      continue;
    }

    final resourceId = key.substring(1);
    final name = _escapeXml(resourceId);
    final metaInfo = bundle[key] as Map<String, dynamic>;
    assert(metaInfo != null && metaInfo['description'] != null);
    var description = _escapeXml(metaInfo['description'] as String);

    if (metaInfo.containsKey('plural')) {
      // Generate a plurals resource element formatted like this:
      // <plurals
      //   name="dartVariableName"
      //   description="description">
      //   <item
      //     quantity="other"
      //     >%d translation</item>
      //   ... items for quantities one, two, etc.
      // </plurals>
      final quantityVar = "\$${metaInfo['plural']}";
      description = description.replaceAll('\$$quantityVar', '%d');
      xml.writeln('  <plurals');
      xml.writeln('    name="$name"');
      xml.writeln('    description="$description">');
      for (String suffix in _pluralSuffixes) {
        final pluralKey = '$resourceId$suffix';
        if (bundle.containsKey(pluralKey)) {
          final translation =
              translationFor(pluralKey).replaceFirst(quantityVar, '%d');
          xml.writeln('    <item');
          xml.writeln('      quantity="${suffix.toLowerCase()}"');
          xml.writeln('      >$translation</item>');
        }
      }
      xml.writeln('  </plurals>');
    } else if (metaInfo.containsKey('parameters')) {
      // Generate a parameterized string resource element formatted like this:
      // <string
      //   name="dartVariableName"
      //   description="string description"
      //   >string %1$s %2$s translation</string>
      // The translated string's original $vars, which must be listed in its
      // description's 'parameters' value, are replaced with printf positional
      // string arguments, like "%1$s".
      var translation = translationFor(resourceId);
      assert((metaInfo['parameters'] as String).trim().isNotEmpty);
      final parameters = (metaInfo['parameters'] as String)
          .split(',')
          .map<String>((s) => s.trim())
          .toList();
      var index = 1;
      for (String parameter in parameters) {
        translation = translation.replaceAll('\$$parameter', '%$index\$s');
        description = description.replaceAll('\$$parameter', '%$index\$s');
        index += 1;
      }
      xml.writeln('  <string');
      xml.writeln('    name="$name"');
      xml.writeln('    description="$description"');
      xml.writeln('    >$translation</string>');
    } else {
      // Generate a string resource element formatted like this:
      // <string
      //   name="dartVariableName"
      //   description="string description"
      //   >string translation</string>
      final translation = translationFor(resourceId);
      xml.writeln('  <string');
      xml.writeln('    name="$name"');
      xml.writeln('    description="$description"');
      xml.writeln('    >$translation</string>');
    }
  }
  xml.writeln('</resources>');
  outputXml.write(xml.toString());
}
