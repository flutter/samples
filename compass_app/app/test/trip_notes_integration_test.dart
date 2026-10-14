import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:compass_app/data/repositories/notes/trip_notes_repository.dart';
import 'package:compass_app/data/services/notes/http_notes_transport.dart';
import 'package:deltasync/deltasync.dart';
import 'package:deltasync_storage_sqflite/deltasync_storage_sqflite.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import '../testing/models/booking.dart';

void main() {
  sqfliteFfiInit();

  test(
    'two configured clients reconcile through durable LWW snapshot hub',
    () async {
      final directory = await Directory.systemTemp.createTemp('compass-pair-');
      const arguments = [
        '--replica',
        'notes-hub',
        '--clients',
        'alpha,beta',
        '--snapshot-pull',
      ];
      final hubPath = '${directory.path}/hub.sqlite';
      var backend = await _Backend.start(hubPath, extraArguments: arguments);
      final port = backend.port;
      Future<TripNotesRepository> open(String id) => _repository(
        '${directory.path}/$id.sqlite',
        backend.uri,
        replicaId: id,
        peerReplicaId: 'notes-hub',
      );
      var alpha = await open('alpha');
      var beta = await open('beta');
      try {
        await alpha.edit(kBooking, 'alpha offline');
        await beta.edit(kBooking, 'beta offline');
        final betaPending = (await beta.engine.pendingDelta()).changes
            .map((c) => c.id)
            .toSet();
        await alpha.sync();
        expect(alpha.pending, 0);
        expect(
          (await beta.engine.pendingDelta()).changes.map((c) => c.id).toSet(),
          betaPending,
        );
        expect((await alpha.transport.pull()).recipientReplicaId, 'alpha');
        expect((await beta.transport.pull()).recipientReplicaId, 'beta');
        await expectLater(
          alpha.transport.request('GET', '/sync/pull'),
          throwsA(isA<HttpException>()),
        );
        await expectLater(
          alpha.transport.request(
            'GET',
            '/sync/pull?recipientReplicaId=intruder',
          ),
          throwsA(isA<HttpException>()),
        );
        await expectLater(
          alpha.transport.request('POST', '/sync/ack', {
            'peerReplicaId': 'intruder',
            'stage': 'applied-and-persisted',
            'changeIds': [],
          }),
          throwsA(isA<HttpException>()),
        );
        await beta.sync();
        await alpha.sync();
        expect(alpha.read(kBooking), beta.read(kBooking));
        await alpha.edit(kBooking, 'kept alpha');
        final retained = (await alpha.engine.pendingDelta()).changes
            .map((c) => c.id)
            .toSet();
        await expectLater(
          beta.transport.request('POST', '/sync/ack', {
            'peerReplicaId': 'beta',
            'stage': 'received',
            'changeIds': retained.toList(),
          }),
          throwsA(isA<HttpException>()),
        );
        await beta.transport.request('POST', '/sync/ack', {
          'peerReplicaId': 'beta',
          'stage': 'applied-and-persisted',
          'changeIds': retained.toList(),
        });
        expect(
          (await alpha.engine.pendingDelta()).changes.map((c) => c.id).toSet(),
          retained,
        );
        await expectLater(
          alpha.transport.request(
            'POST',
            '/sync/push',
            DeltaEnvelope(
              senderReplicaId: 'alpha',
              recipientReplicaId: 'beta',
              delta: await alpha.engine.pendingDelta(),
            ).toJson(),
          ),
          throwsA(isA<HttpException>()),
        );
        await backend.close();
        await expectLater(alpha.sync(), throwsA(isA<SocketException>()));
        await alpha.edit(kBooking, 'edited after network failure');
        await beta.edit(kBooking, 'beta after disconnect');
        final pendingAlpha = (await alpha.engine.pendingDelta()).changes
            .map((c) => c.id)
            .toSet();
        final pendingBeta = (await beta.engine.pendingDelta()).changes
            .map((c) => c.id)
            .toSet();
        await alpha.close();
        await beta.close();
        alpha = await open('alpha');
        beta = await open('beta');
        expect(alpha.read(kBooking), 'edited after network failure');
        expect(beta.read(kBooking), 'beta after disconnect');
        expect(
          (await alpha.engine.pendingDelta()).changes.map((c) => c.id).toSet(),
          pendingAlpha,
        );
        expect(
          (await beta.engine.pendingDelta()).changes.map((c) => c.id).toSet(),
          pendingBeta,
        );
        backend = await _Backend.start(
          hubPath,
          port: port,
          extraArguments: arguments,
        );
        await Future.wait([alpha.sync(), beta.sync()]);
        await alpha.sync();
        expect(alpha.pending, 0);
        expect(beta.pending, 0);
        expect(alpha.read(kBooking), beta.read(kBooking));
        final state = await alpha.transport.request('GET', '/state');
        expect(state['pending'], isEmpty);
        expect(
          alpha.engine.replica.toSnapshotJson()['lww'],
          beta.engine.replica.toSnapshotJson()['lww'],
        );
        expect(
          alpha.engine.replica.toSnapshotJson()['lww'],
          (state['snapshot'] as Map)['lww'],
        );
        await backend.close();
        backend = await _Backend.start(
          hubPath,
          port: port,
          extraArguments: arguments,
        );
        final restored = await alpha.transport.request('GET', '/state');
        expect(
          (restored['snapshot'] as Map)['lww'],
          (state['snapshot'] as Map)['lww'],
        );
      } finally {
        await alpha.close();
        await beta.close();
        await backend.close();
        await directory.delete(recursive: true);
      }
    },
    timeout: const Timeout(Duration(minutes: 3)),
  );

  test(
    'observations refresh notes after commits outside repository actions',
    () async {
      final directory = await Directory.systemTemp.createTemp(
        'compass-observations-',
      );
      final repository = await _repository(
        '${directory.path}/client.sqlite',
        Uri.parse('http://127.0.0.1:8091'),
      );
      addTearDown(() async {
        await repository.close();
        await directory.delete(recursive: true);
      });
      final local = Completer<void>();
      final remote = Completer<void>();
      repository.addListener(() {
        if (repository.read(kBooking) == 'observed' &&
            repository.pending == 1 &&
            !local.isCompleted)
          local.complete();
        if (repository.read(kBooking) == 'remote' &&
            repository.pending == 1 &&
            !remote.isCompleted)
          remote.complete();
      });
      final key = tripNotesKey(kBooking);
      await repository.engine.setDelta(key, {'text': 'observed'});
      await local.future.timeout(const Duration(seconds: 2));
      final timestamp =
          repository.engine.replica.hlcTimestamp.physicalMilliseconds + 1;
      final peer = Replica(
        'compass-peer',
        hlc: HlcClock(nowMilliseconds: () => timestamp),
      );
      await repository.engine.applyRemote(
        Delta([
          peer.setDelta(key, {'text': 'remote'}),
        ]),
      );
      await remote.future.timeout(const Duration(seconds: 2));
      expect(repository.confirmation, isNull);
    },
  );

  test('trip keys use calendar dates and ignore local booking IDs', () {
    final original = tripNotesKey(kBooking);
    final sameTrip = kBooking.copyWith(
      id: 999,
      startDate: DateTime.utc(
        kBooking.startDate.year,
        kBooking.startDate.month,
        kBooking.startDate.day,
      ),
      endDate: DateTime.utc(
        kBooking.endDate.year,
        kBooking.endDate.month,
        kBooking.endDate.day,
      ),
    );
    expect(tripNotesKey(sameTrip), original);
    expect(
      tripNotesKey(kBooking.copyWith(endDate: DateTime(2025))),
      isNot(original),
    );
  });

  test('notes ACK rejects invalid stage and IDs', () {
    expect(
      () => DeltaAcknowledgement.fromJson({
        'peerReplicaId': 'peer',
        'stage': 'unknown',
        'changeIds': <String>[],
      }),
      throwsFormatException,
    );
    expect(
      () => DeltaAcknowledgement.fromJson({
        'peerReplicaId': 'peer',
        'stage': 'applied-and-persisted',
        'changeIds': [1],
      }),
      throwsFormatException,
    );
  });

  test(
    'Compass notes survive disconnect, lost ACK, duplicate HTTP and restart',
    () async {
      final directory = await Directory.systemTemp.createTemp(
        'compass-notes-test-',
      );
      final path = '${directory.path}/device.sqlite';
      _Backend? backend;
      TripNotesRepository? repository;
      _LostAckProxy? proxy;
      try {
        backend = await _Backend.start('${directory.path}/peer.sqlite');
        repository = await _repository(path, backend.uri);
        final key = tripNotesKey(kBooking);
        // Real connection loss, not a callback that simulates an unavailable peer.
        final port = backend.port;
        await backend.close();
        await repository.edit(kBooking, 'client offline');
        await expectLater(repository.sync(), throwsA(isA<SocketException>()));
        expect(repository.pending, 1);
        expect(repository.error, isNotNull);
        await repository.edit(kBooking, 'client after failure');
        expect(repository.pending, 2);
        final ids = (await repository.engine.pendingDelta()).changes
            .map((c) => c.id)
            .toSet();
        await repository.close();
        repository = await _repository(
          path,
          Uri.parse('http://127.0.0.1:$port'),
        );
        expect(repository.read(kBooking), 'client after failure');
        expect(
          (await repository.engine.pendingDelta()).changes
              .map((c) => c.id)
              .toSet(),
          ids,
        );

        backend = await _Backend.start(
          '${directory.path}/peer.sqlite',
          port: port,
        );
        await repository.transport.request('POST', '/notes', {
          'key': key,
          'text': 'peer concurrent',
        });
        final before = await repository.transport.request('GET', '/state');
        expect(before['pending'], hasLength(1));
        // Peer process restarts with its own pending changes before delivery.
        await backend.close();
        backend = await _Backend.start(
          '${directory.path}/peer.sqlite',
          port: port,
        );
        expect(
          (await repository.transport.request('GET', '/state'))['pending'],
          before['pending'],
        );

        proxy = await _LostAckProxy.start(backend.uri);
        await repository.close();
        repository = await _repository(path, proxy.uri);
        await expectLater(repository.sync(), throwsA(isA<HttpException>()));
        // Peer committed both changes, but lost response cannot acknowledge outbox.
        expect(repository.pending, 2);
        expect(
          (await repository.engine.pendingDelta()).changes
              .map((c) => c.id)
              .toSet(),
          ids,
        );
        await repository.close();
        repository = await _repository(path, proxy.uri);
        expect(repository.pending, 2);
        await repository.sync();
        expect(proxy.deliveries, 2);
        expect(repository.read(kBooking), 'peer concurrent');
        expect(repository.pending, 0);
        expect(repository.error, isNull);
        expect(
          (await repository.transport.request('GET', '/state'))['pending'],
          isEmpty,
        );
        final peerSnapshot =
            (await repository.transport.request('GET', '/state'))['snapshot']
                as Map;
        expect(
          repository.engine.replica.toSnapshotJson()['lww'],
          peerSnapshot['lww'],
        );

        await repository.edit(kBooking, 'after reconciliation');
        final next = (await repository.engine.pendingDelta()).changes.single;
        expect(ids, isNot(contains(next.id)));
        await repository.sync();
        await repository.close();
        repository = await _repository(path, backend.uri);
        expect(repository.read(kBooking), 'after reconciliation');
        expect(repository.pending, 0);
        await backend.close();
        backend = await _Backend.start(
          '${directory.path}/peer.sqlite',
          port: port,
        );
        final finalState = await repository.transport.request('GET', '/state');
        expect(finalState['pending'], isEmpty);
        expect(
          (finalState['snapshot'] as Map)['lww'],
          repository.engine.replica.toSnapshotJson()['lww'],
        );
        // Invalid ACKs cannot remove any of this fixed peer's changes.
        await repository.transport.request('POST', '/notes', {
          'key': key,
          'text': 'kept',
        });
        for (final invalid in [
          {
            'peerReplicaId': 'other-device',
            'stage': 'applied-and-persisted',
            'changeIds': ['compass-peer:delta:2'],
          },
          {
            'peerReplicaId': ' compass-device',
            'stage': 'applied-and-persisted',
            'changeIds': ['compass-peer:delta:2'],
          },
          {
            'peerReplicaId': 'compass-device',
            'stage': 'received',
            'changeIds': ['compass-peer:delta:2'],
          },
          {
            'peerReplicaId': 'compass-device',
            'stage': 'applied-and-persisted',
            'changeIds': [1],
          },
        ]) {
          await expectLater(
            repository.transport.request('POST', '/sync/ack', invalid),
            throwsA(
              isA<HttpException>().having(
                (error) => error.message,
                'status',
                startsWith('HTTP 400:'),
              ),
            ),
          );
          expect(
            (await repository.transport.request('GET', '/state'))['pending'],
            hasLength(1),
          );
        }
      } finally {
        await repository?.close();
        await proxy?.close();
        await backend?.close();
        await directory.delete(recursive: true);
      }
    },
    timeout: const Timeout(Duration(minutes: 3)),
  );

  test('wrong peer HTTP ACK preserves local outbox', () async {
    final directory = await Directory.systemTemp.createTemp(
      'compass-wrong-ack-',
    );
    final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
    final listener = server.listen((request) async {
      await utf8.decoder.bind(request).join();
      request.response.headers.contentType = ContentType.json;
      request.response.write(
        jsonEncode({
          'peerReplicaId': 'wrong-peer',
          'stage': 'applied-and-persisted',
          'changeIds': ['compass-device:delta:1'],
        }),
      );
      await request.response.close();
    });
    final repository = await _repository(
      '${directory.path}/device.sqlite',
      Uri.parse('http://127.0.0.1:${server.port}'),
    );
    try {
      await repository.edit(kBooking, 'pending');
      await expectLater(repository.sync(), throwsStateError);
      expect(repository.pending, 1);
      expect(repository.read(kBooking), 'pending');
    } finally {
      await repository.close();
      await listener.cancel();
      await server.close(force: true);
      await directory.delete(recursive: true);
    }
  });
}

Future<TripNotesRepository> _repository(
  String path,
  Uri endpoint, {
  String replicaId = 'compass-device',
  String peerReplicaId = 'compass-peer',
}) async {
  final storage = SqfliteReplicaStorage(
    databaseFactory: databaseFactoryFfi,
    databasePath: path,
  );
  final transport = HttpNotesTransport(
    endpoint,
    localReplicaId: replicaId,
    peerReplicaId: peerReplicaId,
  );
  final repository = TripNotesRepository(
    storage: storage,
    transport: transport,
    engine: SyncEngine.withStorage(
      replica: Replica(replicaId),
      storage: storage,
      transport: transport,
    ),
  );
  await repository.start();
  return repository;
}

class _Backend {
  _Backend(this.process, this.port);
  final Process process;
  final int port;
  bool closed = false;
  Uri get uri => Uri.parse('http://127.0.0.1:$port');

  static Future<_Backend> start(
    String path, {
    int port = 0,
    List<String> extraArguments = const [],
  }) async {
    final process = await Process.start('dart', [
      'run',
      'bin/notes_server.dart',
      '--port',
      '$port',
      '--db',
      path,
      ...extraArguments,
    ], workingDirectory: '../server');
    final ready = Completer<int>();
    final output = StringBuffer();
    process.stdout
        .transform(utf8.decoder)
        .transform(const LineSplitter())
        .listen((line) {
          output.writeln(line);
          if (line.startsWith('NOTES_READY '))
            ready.complete(int.parse(line.split(' ').last));
        });
    process.stderr.transform(utf8.decoder).listen(output.write);
    unawaited(
      process.exitCode.then((code) {
        if (!ready.isCompleted)
          ready.completeError(StateError('Server exited $code: $output'));
      }),
    );
    try {
      return _Backend(
        process,
        await ready.future.timeout(const Duration(seconds: 60)),
      );
    } catch (_) {
      process.kill(ProcessSignal.sigkill);
      rethrow;
    }
  }

  Future<void> close() async {
    if (closed) return;
    closed = true;
    process.kill(ProcessSignal.sigterm);
    await process.exitCode.timeout(const Duration(seconds: 10));
  }
}

/// Forwards real HTTP to the separate server, then discards its first push ACK.
class _LostAckProxy {
  _LostAckProxy(this.server, this.destination);
  final HttpServer server;
  final Uri destination;
  final client = HttpClient();
  int deliveries = 0;
  Uri get uri => Uri.parse('http://127.0.0.1:${server.port}');

  static Future<_LostAckProxy> start(Uri destination) async {
    final proxy = _LostAckProxy(
      await HttpServer.bind(InternetAddress.loopbackIPv4, 0),
      destination,
    );
    proxy.server.listen(proxy.handle);
    return proxy;
  }

  Future<void> handle(HttpRequest incoming) async {
    final body = await utf8.decoder.bind(incoming).join();
    final outgoing = await client.openUrl(
      incoming.method,
      destination.resolve(incoming.uri.path),
    );
    outgoing.headers.contentType = ContentType.json;
    outgoing.write(body);
    final response = await outgoing.close();
    final text = await utf8.decoder.bind(response).join();
    final loseAck = incoming.uri.path == '/sync/push' && ++deliveries == 1;
    incoming.response.statusCode = loseAck ? 502 : response.statusCode;
    incoming.response.write(
      loseAck ? 'Lost response after durable commit' : text,
    );
    await incoming.response.close();
  }

  Future<void> close() async {
    client.close(force: true);
    await server.close(force: true);
  }
}
