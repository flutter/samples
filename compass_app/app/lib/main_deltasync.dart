import 'package:deltasync/deltasync.dart';
import 'package:deltasync_storage_sqflite/deltasync_storage_sqflite.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sqflite/sqflite.dart';

import 'config/dependencies.dart';
import 'data/repositories/notes/trip_notes_repository.dart';
import 'data/services/notes/http_notes_transport.dart';
import 'data/services/notes/notes_configuration.dart';
import 'main.dart';

/// Local Compass catalogue with durable notes synchronized to its HTTP peer.
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final configuration = NotesConfiguration.fromEnvironment();
  final transport = HttpNotesTransport(
    configuration.endpoint,
    localReplicaId: configuration.replicaId,
    peerReplicaId: configuration.peerReplicaId,
  );
  final storage = SqfliteReplicaStorage(
    databaseFactory: databaseFactory,
    databasePath:
        '${await getDatabasesPath()}/${configuration.databaseFileName}',
  );
  final repository = TripNotesRepository(
    storage: storage,
    engine: SyncEngine.withStorage(
      replica: Replica(configuration.replicaId),
      storage: storage,
      transport: transport,
    ),
    transport: transport,
  );
  try {
    await repository.start();
  } catch (error) {
    await repository.close();
    runApp(
      MaterialApp(
        home: Scaffold(
          body: Center(child: Text('Falha ao abrir notas: $error')),
        ),
      ),
    );
    return;
  }
  runApp(
    MultiProvider(
      providers: [
        ...providersLocal,
        ChangeNotifierProvider(create: (_) => repository),
      ],
      child: const MainApp(),
    ),
  );
}
