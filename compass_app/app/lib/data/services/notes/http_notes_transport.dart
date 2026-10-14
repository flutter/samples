import 'dart:convert';
import 'dart:io';

import 'package:deltasync/deltasync.dart';

/// Development HTTP adapter for one durable Compass peer.
/// Incoming delivery is explicitly pulled by the repository, then acknowledged.
class HttpNotesTransport
    implements
        AcknowledgingDeltaTransport,
        IncomingAcknowledgingDeltaTransport {
  HttpNotesTransport(
    this.baseUri, {
    this.peerReplicaId = 'compass-peer',
    this.localReplicaId = 'compass-device',
  });

  final Uri baseUri;
  final String localReplicaId;
  final _client = HttpClient()..connectionTimeout = const Duration(seconds: 2);

  @override
  final String peerReplicaId;

  @override
  Stream<DeltaEnvelope> get incoming => const Stream.empty();

  Future<Map<String, Object?>> request(
    String method,
    String path, [
    Map<String, Object?>? body,
  ]) async {
    final request = await _client
        .openUrl(method, baseUri.resolve(path))
        .timeout(const Duration(seconds: 5));
    request.headers.contentType = ContentType.json;
    if (body != null) request.write(jsonEncode(body));
    final response = await request.close().timeout(const Duration(seconds: 5));
    final text = await response
        .transform(utf8.decoder)
        .join()
        .timeout(const Duration(seconds: 5));
    if (response.statusCode != HttpStatus.ok) {
      throw HttpException('HTTP ${response.statusCode}: $text');
    }
    final decoded = jsonDecode(text);
    if (decoded is! Map<String, dynamic>) {
      throw const FormatException('Expected JSON object');
    }
    return Map<String, Object?>.from(decoded);
  }

  @override
  Future<void> send(DeltaEnvelope envelope) async {
    await sendAndAwaitAck(envelope);
  }

  @override
  Future<DeltaAcknowledgement> sendAndAwaitAck(DeltaEnvelope envelope) async =>
      DeltaAcknowledgement.fromJson(
        await request('POST', '/sync/push', envelope.toJson()),
      );

  Future<DeltaEnvelope> pull() async => DeltaEnvelope.fromJson(
    await request(
      'GET',
      '/sync/pull?recipientReplicaId=${Uri.encodeQueryComponent(localReplicaId)}',
    ),
  );

  @override
  Future<void> acknowledge(DeltaAcknowledgement acknowledgement) async {
    await request('POST', '/sync/ack', acknowledgement.toJson());
  }

  void close() => _client.close(force: true);
}
