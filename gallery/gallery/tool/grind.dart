import 'dart:io';

import 'package:grinder/grinder.dart';
import 'package:path/path.dart' as p;

void main(List<String> args) => grind(args);

@Task('Get packages')
Future<void> pubGet({String directory}) async {
  await _runProcess(
    'flutter',
    ['pub', 'get', if (directory != null) directory],
  );
}

@Task('Run Flutter unit tests')
Future<void> test() async => await _runProcess('flutter', ['test']);

@Task('Format dart files')
Future<void> format({String path = '.'}) async {
  await _runProcess('flutter', ['format', path]);
}

@Task('Generate localizations files')
Future<void> generateLocalizations() async {
  final l10nScriptFile = p.join(
    _flutterRootPath(),
    'dev',
    'tools',
    'localization',
    'bin',
    'gen_l10n.dart',
  );

  Dart.run(l10nScriptFile, arguments: [
    '--template-arb-file=intl_en_US.arb',
    '--output-localization-file=gallery_localizations.dart',
    '--output-class=GalleryLocalizations',
  ]);
}

@Task('Transform arb to xml for English')
@Depends(generateLocalizations)
Future<void> l10n() async {
  final l10nPath = p.join(Directory.current.parent.path, 'l10n_cli');
  await pubGet(directory: l10nPath);

  Dart.run(p.join(l10nPath, 'bin', 'main.dart'));
  await format(path: p.join('lib', 'l10n'));
}

@Task('Generate code segments')
Future<void> generateCodeSegments() async {
  final codeviewerPath =
      p.join(Directory.current.parent.path, 'codeviewer_cli');
  await pubGet(directory: codeviewerPath);
  Dart.run(p.join(codeviewerPath, 'bin', 'main.dart'));
}

@Task('Update code segments')
@Depends(generateCodeSegments)
Future<void> updateCodeSegments() async {
  await format(path: p.join('lib', 'codeviewer', 'code_segments.dart'));
}

Future<void> _runProcess(String executable, List<String> arguments) async {
  final result = await Process.run(executable, arguments);
  stdout.write(result.stdout);
  stderr.write(result.stderr);
}

/// Return the flutter root path from the environment variables.
String _flutterRootPath() {
  final flutterBinPath =
      Platform.environment['PATH'].split(':').lastWhere((setting) {
    return p.canonicalize(setting).endsWith(
          'flutter${p.separator}bin',
        );
  });
  return Directory(flutterBinPath).parent.path;
}
