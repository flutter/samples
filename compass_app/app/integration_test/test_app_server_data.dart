import 'dart:io';

void main() async {
  const port = '8080';
  late Process p;

  // Start the dart server
  p = await Process.start(
    'dart',
    ['run', 'bin/compass_server.dart'],
    environment: {'PORT': port},
    // Relative to the app/ folder
    workingDirectory: '../server',
  );
  // Wait for server to start and print to stdout.
  await p.stdout.first;

  final testProcess = await Process.start('flutter', [
    'test',
    'integration_test/app_server_data_test.dart',
  ], workingDirectory: '../app');

  await testProcess.stdout.pipe(stdout);
  await testProcess.stderr.pipe(stderr);

  await testProcess.exitCode;

  // tearDownAll(() => p.kill());
  p.kill();
}
