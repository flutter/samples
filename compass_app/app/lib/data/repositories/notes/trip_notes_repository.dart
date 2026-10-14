import 'dart:async';
import 'dart:convert';

import 'package:deltasync/deltasync.dart';
import 'package:deltasync_storage_sqflite/deltasync_storage_sqflite.dart';
import 'package:flutter/foundation.dart';

import '../../../domain/models/booking/booking.dart';
import '../../services/notes/http_notes_transport.dart';

/// Maps existing Compass trips to shared notes without changing Booking IDs.
/// Destination and dates identify a trip in this single-user sample.
String tripNotesKey(Booking booking) =>
    'trip-notes:${jsonEncode([booking.destination.ref, _calendarDate(booking.startDate), _calendarDate(booking.endDate)])}';

// Compass travel dates are calendar days, not timezone-dependent instants.
String _calendarDate(DateTime value) =>
    value.toIso8601String().split('T').first;

class TripNotesRepository extends ChangeNotifier {
  TripNotesRepository({
    required this.engine,
    required this.transport,
    required this.storage,
  });

  final SyncEngine engine;
  final HttpNotesTransport transport;
  final SqfliteReplicaStorage storage;
  StreamSubscription<SyncObservation>? _observations;
  bool _closed = false;
  bool syncing = false;
  int pending = 0;
  String? error;
  String? confirmation;

  Future<void> start() async {
    _observations ??= engine.observations.listen((event) {
      if (_closed) return;
      switch (event) {
        case SyncRestoredEvent():
          confirmation = null;
        case SyncCommitEvent():
          if (event.origin == SyncCommitOrigin.local) confirmation = null;
        case SyncPushResult():
          error = null;
          if (event.acknowledgedIds.isNotEmpty) {
            confirmation =
                '${event.acknowledgedIds.length} mudança(s) confirmada(s)';
          }
        case SyncPushFailure():
          error = event.error.toString();
          confirmation = null;
        case SyncFailure():
          error = event.error.toString();
      }
      unawaited(
        _refresh().catchError((Object failure) {
          if (!_closed) {
            error = failure.toString();
            notifyListeners();
          }
        }),
      );
    });
    await engine.start();
    await _refresh();
  }

  String read(Booking booking) {
    final value = engine.valueAt(tripNotesKey(booking));
    return value is Map ? value['text'] as String? ?? '' : '';
  }

  Future<void> edit(Booking booking, String text) async {
    await engine.setDelta(tripNotesKey(booking), {'text': text});
    confirmation = null;
    await _refresh();
  }

  /// Manual push/pull. A failed network request leaves local editing available.
  Future<void> sync() async {
    if (syncing) return;
    syncing = true;
    notifyListeners();
    try {
      final result = await engine.push(force: true);
      final incoming = await transport.pull();
      // ACK only after the local SQLite remote commit completes.
      await engine.receiveEnvelope(incoming);
      error = null;
      confirmation =
          '${result.acknowledgedIds.length} mudança(s) confirmada(s)';
    } catch (failure) {
      error = failure.toString();
      rethrow;
    } finally {
      syncing = false;
      await _refresh();
    }
  }

  Future<void> _refresh() async {
    pending = (await engine.pendingDelta()).changes.length;
    if (!_closed) notifyListeners();
  }

  Future<void> close() async {
    if (_closed) return;
    _closed = true;
    await _observations?.cancel();
    try {
      await engine.dispose();
    } finally {
      transport.close();
      await storage.close();
    }
  }

  @override
  void dispose() {
    unawaited(close());
    super.dispose();
  }
}
