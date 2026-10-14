import 'package:deltasync/deltasync.dart';

/// Consumer configuration; keep the same identity when reinstalling a device.
class NotesConfiguration {
  NotesConfiguration({
    required this.replicaId,
    required this.peerReplicaId,
    required this.endpoint,
  }) {
    if (ReplicaId(replicaId).value != replicaId ||
        ReplicaId(peerReplicaId).value != peerReplicaId ||
        replicaId == peerReplicaId ||
        !{'http', 'https'}.contains(endpoint.scheme) ||
        endpoint.host.isEmpty) {
      throw ArgumentError(
        'Distinct notes identities and HTTP endpoint required',
      );
    }
  }

  factory NotesConfiguration.fromEnvironment() => NotesConfiguration(
    replicaId: const String.fromEnvironment(
      'REPLICA_ID',
      defaultValue: 'compass-device',
    ),
    peerReplicaId: const String.fromEnvironment(
      'PEER_ID',
      defaultValue: 'compass-peer',
    ),
    endpoint: Uri.parse(
      const String.fromEnvironment(
        'NOTES_URL',
        defaultValue: 'http://127.0.0.1:8091',
      ),
    ),
  );

  final String replicaId;
  final String peerReplicaId;
  final Uri endpoint;
  String get databaseFileName => replicaId == 'compass-device'
      ? 'compass-notes.sqlite'
      : 'compass-notes-${Uri.encodeComponent(replicaId)}.sqlite';
}
