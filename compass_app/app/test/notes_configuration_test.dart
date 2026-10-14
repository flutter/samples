import 'package:compass_app/data/services/notes/notes_configuration.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('default configuration preserves existing identity and database', () {
    final config = NotesConfiguration.fromEnvironment();
    expect(config.replicaId, 'compass-device');
    expect(config.peerReplicaId, 'compass-peer');
    expect(config.databaseFileName, 'compass-notes.sqlite');
  });
  test('configured identities have stable distinct safe database names', () {
    NotesConfiguration config(String id) => NotesConfiguration(
      replicaId: id,
      peerReplicaId: 'hub',
      endpoint: Uri.parse('http://127.0.0.1:8091'),
    );
    expect(config('alpha').databaseFileName, config('alpha').databaseFileName);
    expect(
      config('alpha').databaseFileName,
      isNot(config('beta').databaseFileName),
    );
    expect(config('../alpha').databaseFileName, isNot(contains('/')));
  });
  test('configuration rejects invalid identity, self peer and endpoint', () {
    for (final id in ['', ' alpha']) {
      expect(
        () => NotesConfiguration(
          replicaId: id,
          peerReplicaId: 'hub',
          endpoint: Uri.parse('http://127.0.0.1:8091'),
        ),
        throwsArgumentError,
      );
    }
    expect(
      () => NotesConfiguration(
        replicaId: 'hub',
        peerReplicaId: 'hub',
        endpoint: Uri.parse('http://127.0.0.1:8091'),
      ),
      throwsArgumentError,
    );
    expect(
      () => NotesConfiguration(
        replicaId: 'alpha',
        peerReplicaId: 'hub',
        endpoint: Uri.parse('file:///tmp/notes'),
      ),
      throwsArgumentError,
    );
  });
}
