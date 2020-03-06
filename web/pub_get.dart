import 'dart:io';

main() async {
  var directories = [
    'charts',
    'filipino_cuisine',
    'github_dataviz',
    'particle_background',
    'slide_puzzle',
    'timeflow',
    'vision_challenge',
  ];

  var exitCode = 0;
  for (var directory in directories) {
    var result =
        await Process.run('flutter', ['pub', 'get'], workingDirectory: directory);

    if (result.exitCode == 0) {
      print(result.stdout);
    } else {
      exitCode = result.exitCode;
      print(result.stderr);
    }
  }
  exit(exitCode);
}
