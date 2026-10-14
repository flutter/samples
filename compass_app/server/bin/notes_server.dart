import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:deltasync/deltasync.dart';
import 'package:deltasync_storage_sqflite/deltasync_storage_sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

/// Development backend for the single-user Compass notes feature.
/// Binds loopback; use adb reverse for the authorized Android consumer.
Future<void> main(List<String> arguments) async {
  final options =
      (ArgParser()
            ..addOption('port', defaultsTo: '8091')
            ..addOption('db', defaultsTo: 'compass-peer.sqlite')
            ..addOption('host', defaultsTo: '127.0.0.1')
            ..addOption('replica', defaultsTo: 'compass-peer')
            ..addOption('clients', defaultsTo: 'compass-device')
            ..addFlag('snapshot-pull', negatable: false))
          .parse(arguments);
  final replicaId = (options['replica'] as String);
  final clientList = (options['clients'] as String).split(',');
  final clients = clientList.toSet();
  final snapshotPull = options['snapshot-pull'] as bool;
  if (ReplicaId(replicaId).value != replicaId) {
    throw ArgumentError('Hub identity must not have surrounding whitespace');
  }
  for (final client in clients) {
    if (ReplicaId(client).value != client) {
      throw ArgumentError(
        'Client identity must not have surrounding whitespace',
      );
    }
  }
  if (clients.length != clientList.length ||
      clients.length > 2 ||
      clients.contains(replicaId) ||
      (clients.length > 1 && !snapshotPull)) {
    throw const FormatException(
      'Use one fixed client or two clients with snapshot-pull',
    );
  }
  sqfliteFfiInit();
  final storage = SqfliteReplicaStorage(
    databaseFactory: databaseFactoryFfi,
    databasePath: options['db'] as String,
  );
  final engine = SyncEngine.withStorage(
    replica: Replica(replicaId),
    storage: storage,
    transport: _PullTransport(clients.first),
  );
  await engine.start();
  if (snapshotPull &&
      ((await storage.pending(replicaId)).isNotEmpty ||
          engine.replica.export().changes.any(
            (change) => !_isHubNote(change),
          ))) {
    await engine.dispose();
    await storage.close();
    throw const FormatException(
      'Snapshot hub requires LWW trip notes and no local outbox',
    );
  }
  final server = await HttpServer.bind(
    options['host'] as String,
    int.parse(options['port'] as String),
  );
  stdout.writeln('NOTES_READY ${server.port}');
  Future<void> close() async {
    await server.close(force: true);
    await engine.dispose();
    await storage.close();
  }

  ProcessSignal.sigterm.watch().listen((_) async {
    await close();
    exit(0);
  });
  ProcessSignal.sigint.watch().listen((_) async {
    await close();
    exit(0);
  });

  await for (final request in server) {
    try {
      var body = <String, Object?>{};
      if (request.method == 'POST') {
        final decoded = jsonDecode(await utf8.decoder.bind(request).join());
        if (decoded is! Map<String, dynamic>)
          throw const FormatException('JSON object required');
        body = Map<String, Object?>.from(decoded);
      }
      Object result;
      switch ((request.method, request.uri.path)) {
        case ('POST', '/sync/push'):
          final envelope = DeltaEnvelope.fromJson(body);
          if (!clients.contains(envelope.senderReplicaId) ||
              envelope.recipientReplicaId != replicaId) {
            throw const FormatException('Wrong notes peer');
          }
          if (snapshotPull &&
              envelope.delta.changes.any((change) => !_isHubNote(change))) {
            throw const FormatException(
              'Snapshot hub accepts only LWW trip notes',
            );
          }
          await engine.applyRemote(envelope.delta);
          result = DeltaAcknowledgement(
            peerReplicaId: replicaId,
            stage: DeltaAckStage.appliedAndPersisted,
            changeIds: envelope.delta.changes.map((change) => change.id),
          ).toJson();
        case ('GET', '/sync/pull'):
          final recipient =
              request.uri.queryParameters['recipientReplicaId'] ??
              (clients.length == 1 ? clients.single : null);
          if (!clients.contains(recipient)) {
            throw const FormatException(
              'Explicit configured notes recipient required',
            );
          }
          result = DeltaEnvelope(
            senderReplicaId: replicaId,
            recipientReplicaId: recipient!,
            delta: snapshotPull
                ? engine.replica.export()
                : await engine.pendingDelta(),
          ).toJson();
        case ('POST', '/sync/ack'):
          final ack = DeltaAcknowledgement.fromJson(body);
          if (!clients.contains(ack.peerReplicaId) ||
              ack.stage != DeltaAckStage.appliedAndPersisted) {
            throw const FormatException('Invalid durable ACK');
          }
          if (snapshotPull) {
            // Pull exports materialized LWW state, not a shared delivery outbox.
            // Receipt from one client must never delete another client's data.
            result = {'ok': true};
            break;
          }
          final pending = (await engine.pendingDelta()).changes
              .map((c) => c.id)
              .toSet();
          await storage.acknowledge(
            replicaId,
            ack.peerReplicaId,
            ack.changeIds.intersection(pending),
          );
          result = {'ok': true};
        case ('POST', '/notes'):
          if (snapshotPull) {
            throw const FormatException(
              'Snapshot hub accepts edits from clients only',
            );
          }
          final key = body['key'];
          final text = body['text'];
          if (key is! String ||
              !key.startsWith('trip-notes:') ||
              text is! String) {
            throw const FormatException('Invalid trip note');
          }
          final change = await engine.setDelta(key, {'text': text});
          result = {'id': change.id};
        case ('GET', '/state'):
          result = {
            'snapshot': engine.replica.toSnapshotJson(),
            'pending': [
              for (final c in (await engine.pendingDelta()).changes) c.id,
            ],
          };
        default:
          request.response.statusCode = HttpStatus.notFound;
          result = {'error': 'Not found'};
      }
      request.response.headers.contentType = ContentType.json;
      request.response.write(jsonEncode(result));
    } on FormatException catch (error) {
      request.response.statusCode = HttpStatus.badRequest;
      request.response.write(jsonEncode({'error': error.toString()}));
    } catch (error, stack) {
      stderr.writeln('$error\n$stack');
      request.response.statusCode = HttpStatus.internalServerError;
      request.response.write(jsonEncode({'error': 'Commit failed'}));
    } finally {
      await request.response.close();
    }
  }
}

bool _isHubNote(DeltaChange change) =>
    change.kind == CrdtKind.lww && change.crdtId.startsWith('trip-notes:');

/// Transport used by the legacy one-client mode; hub mode does not push.
/// Server outbox is delivered by GET /sync/pull, never cleared by local send.
class _PullTransport implements DeltaTransport {
  _PullTransport(this.peerReplicaId);
  @override
  final String peerReplicaId;
  @override
  Stream<DeltaEnvelope> get incoming => const Stream.empty();
  @override
  Future<void> send(DeltaEnvelope envelope) =>
      Future.error(UnsupportedError('Use HTTP pull and durable ACK'));
}
