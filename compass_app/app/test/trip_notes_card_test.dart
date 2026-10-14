import 'dart:io';

import 'package:compass_app/data/repositories/notes/trip_notes_repository.dart';
import 'package:compass_app/data/services/notes/http_notes_transport.dart';
import 'package:compass_app/ui/booking/widgets/trip_notes_card.dart';
import 'package:deltasync/deltasync.dart';
import 'package:deltasync_storage_sqflite/deltasync_storage_sqflite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import '../testing/models/booking.dart';

void main() {
  sqfliteFfiInit();
  testWidgets(
    'notes distinguish session confirmation and durable pending edits',
    (tester) async {
      late Directory directory;
      late TripNotesRepository repository;
      await tester.runAsync(() async {
        directory = await Directory.systemTemp.createTemp('compass-note-card-');
        final storage = SqfliteReplicaStorage(
          databaseFactory: databaseFactoryFfi,
          databasePath: '${directory.path}/device.sqlite',
        );
        final transport = HttpNotesTransport(Uri.parse('http://127.0.0.1:1'));
        repository = TripNotesRepository(
          storage: storage,
          transport: transport,
          engine: SyncEngine.withStorage(
            replica: Replica('compass-device'),
            storage: storage,
            transport: transport,
          ),
        );
        await repository.start();
      });
      try {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: TripNotesCard(booking: kBooking, repository: repository),
            ),
          ),
        );
        expect(find.text('Nenhum envio nesta sessão'), findsOneWidget);
        expect(find.text('Pendentes de notas: 0'), findsOneWidget);
        await tester.runAsync(
          () => repository.edit(kBooking, 'Packed passport'),
        );
        await tester.pumpAndSettle();
        expect(
          find.text('Nota salva no dispositivo: Packed passport'),
          findsOneWidget,
        );
        expect(find.text('Pendentes de notas: 1'), findsOneWidget);
        expect(find.text('Aguardando confirmação remota'), findsOneWidget);
        expect(find.text('Nenhum envio nesta sessão'), findsNothing);
      } finally {
        await tester.pumpWidget(const SizedBox());
        await tester.runAsync(repository.close);
        repository.dispose();
        await tester.runAsync(() => directory.delete(recursive: true));
      }
    },
  );
}
