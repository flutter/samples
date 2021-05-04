import 'dart:io';
import 'package:path/path.dart' as p;
import 'common.dart';

main() async {
  final packageDirs = listPackageDirs(Directory.current)
      .map((path) => p.relative(path, from: Directory.current.path))
      .toList();

  print('building the sample index...');
  await run('samples_index', 'pub', ['get']);
  await run('samples_index', 'pub', ['run', 'grinder', 'deploy']);

  // Create the directory each Flutter Web sample lives in
  Directory(p.join(Directory.current.path, 'samples_index', 'public', 'web'))
      .createSync(recursive: true);

  for (var i = 0; i < packageDirs.length; i++) {
    var directory = packageDirs[i];
    if (directory == 'samples_index') continue;
    logWrapped(ansiMagenta, '\n$directory (${i + 1} of ${packageDirs.length})');

    // Create the target directory
    var directoryName = p.basename(directory);
    var sourceBuildDir =
        p.join(Directory.current.path, directory, 'build', 'web');
    var targetDirectory = p.join(Directory.current.path, 'samples_index',
        'public', 'web', directoryName);

    // Build the sample and copy the files
    await run(directory, 'flutter', ['pub', 'get']);
    await run(directory, 'flutter', ['build', 'web']);
    await run(directory, 'mv', [sourceBuildDir, targetDirectory]);
  }
}
