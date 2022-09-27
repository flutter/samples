import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

///////////////////////////////////////////////////////////////////////////////
// **WARNING:** This is not production code and is only intended to be used for
// demonstration purposes.
//
// The following database works by spawning a background isolate and
// communicating with it over Dart's SendPort API. It is presented below as a
// demonstration of the feature "Background Isolate Channels" and shows using
// plugins from a background isolate. The [SimpleDatabase] operates on the root
// isolate and the [_SimpleDatabaseServer] operates on a background isolate.
//
// Here is an example of the protocol they use to communicate:
//
//  _________________                         ________________________
//  [:SimpleDatabase]                         [:_SimpleDatabaseServer]
//  -----------------                         ------------------------
//         |                                              |
//         |<---------------(init)------------------------|
//         |----------------(init)----------------------->|
//         |                                              |
//         |----------------(add)------------------------>|
//         |<---------------(ack)-------------------------|
//         |                                              |
//         |----------------(query)---------------------->|
//         |<---------------(result)----------------------|
//         |<---------------(result)----------------------|
//         |<---------------(done)------------------------|
//
///////////////////////////////////////////////////////////////////////////////

/// The size of the database entries in bytes.
const int entrySize = 256;

/// All the command codes that can be sent and received between [SimpleDatabase] and
/// [_SimpleDatabaseServer].
enum _Codes {
  init,
  add,
  query,
  ack,
  result,
  done,
}

/// A command sent between [SimpleDatabase] and [_SimpleDatabaseServer].
class _Command {
  final _Codes code;
  final List<dynamic> args;
  _Command(this.code, this.args);
}

/// The portion of the [SimpleDatabase] that runs on the background isolate.
/// 
/// This is where we use the new feature Background Isolate Channels, which
/// allows us to use plugins from background isolates.
class _SimpleDatabaseServer {
  final SendPort _sendPort;
  String? _path;
  SharedPreferences? _sharedPreferences;

  _SimpleDatabaseServer(this._sendPort);

  bool get isDebug => _sharedPreferences?.getBool('isDebug') ?? false;

  /// The main entrypoint for the background isolate.
  static void _run(SendPort sendPort) {
    ReceivePort receivePort = ReceivePort();
    sendPort.send(_Command(_Codes.init, <dynamic>[receivePort.sendPort]));
    final _SimpleDatabaseServer server = _SimpleDatabaseServer(sendPort);
    receivePort.listen((dynamic message) async {
      final _Command command = message as _Command;
      server._onCommand(command);
    });
  }

  /// Perform the add entry operation.
  Future<void> _doAddEntry(String value) async {
    if (isDebug) {
      print('Performing add: $value');
    }
    File file = File(_path!);
    if (!file.existsSync()) {
      file.createSync();
    }
    RandomAccessFile writer = await file.open(mode: FileMode.append);
    List<int> bytes = utf8.encode(value);
    if (bytes.length > entrySize) {
      bytes = bytes.sublist(0, entrySize);
    } else if (bytes.length < entrySize) {
      List<int> newBytes = List.filled(entrySize, 0);
      for (int i = 0; i < bytes.length; ++i) {
        newBytes[i] = bytes[i];
      }
      bytes = newBytes;
    }
    await writer.writeFrom(bytes);
    await writer.close();
    _sendPort.send(_Command(_Codes.ack, <dynamic>[null]));
  }

  /// Perform the find entry operation.
  Future<void> _doFind(String query) async {
    if (isDebug) {
      print('Performing find: $query');
    }
    File file = File(_path!);
    if (file.existsSync()) {
      RandomAccessFile reader = file.openSync();
      List<int> buffer = List.filled(entrySize, 0);
      while (reader.readIntoSync(buffer) == entrySize) {
        List<int> foo = buffer.takeWhile((value) => value != 0).toList();
        String string = utf8.decode(foo);
        if (string.contains(query)) {
          _sendPort.send(_Command(_Codes.result, <dynamic>[string]));
        }
      }
      reader.closeSync();
    }
    _sendPort.send(_Command(_Codes.done, <dynamic>[null]));
  }

  /// Handle the [command] received from the [ReceivePort].
  Future<void> _onCommand(_Command command) async {
    if (command.code == _Codes.init) {
      _path = command.args[0];
      // ----------------------------------------------------------------------
      // The [RootIsolateToken] is required for
      // [BackgroundIsolateBinaryMessenger.ensureInitialized] and must be
      // obtained on the root isolate and passed into the background isolate via
      // a [SendPort].
      // ----------------------------------------------------------------------
      RootIsolateToken rootIsolateToken = command.args[1];
      // ----------------------------------------------------------------------
      // [BackgroundIsolateBinaryMessenger.ensureInitialized] must be called
      // before using any plugins. This sets up the [BinaryMessenger] that the
      // Platform Channels will communicate with on the background isolate.
      // ----------------------------------------------------------------------
      BackgroundIsolateBinaryMessenger.ensureInitialized(rootIsolateToken);
      _sharedPreferences = await SharedPreferences.getInstance();
    } else if (command.code == _Codes.add) {
      await _doAddEntry(command.args[0]);
    } else if (command.code == _Codes.query) {
      _doFind(command.args[0]);
    }
  }
}

/// A SimpleDatabase that stores entries of strings to disk where they can be
/// queried.
///
/// All the disk operations and queries are executed in a background isolate
/// operating. This class just sends and receives messages to the isolate.
class SimpleDatabase {
  final Isolate _isolate;
  final String _path;
  late final SendPort _sendPort;
  // Completers are stored in a queue so multiple commands can queued up and
  // handled serially.
  final Queue<Completer<void>> _completers = Queue<Completer<void>>();
  // Similarly, StreamControllers are stored in a queue so they can be handled
  // asynchronously and serially.
  final Queue<StreamController<String>> _resultsStream =
      Queue<StreamController<String>>();

  SimpleDatabase._(this._isolate, this._path);

  /// Open the database at [path] and launch the server on a background isolate..
  static Future<SimpleDatabase> open(String path) async {
    final ReceivePort receivePort = ReceivePort();
    final Isolate isolate =
        await Isolate.spawn(_SimpleDatabaseServer._run, receivePort.sendPort);
    final SimpleDatabase result = SimpleDatabase._(isolate, path);
    Completer<void> completer = Completer<void>();
    result._completers.addFirst(completer);
    receivePort.listen((message) {
      result._onCommand(message as _Command);
    });
    await completer.future;
    return result;
  }

  /// Writes [value] to the database.
  Future<void> addEntry(String value) {
    // No processing happens on the calling isolate, it gets delegated to the
    // background isolate, see [__SimpleDatabaseServer._doAddEntry].
    Completer<void> completer = Completer<void>();
    _completers.addFirst(completer);
    _sendPort.send(_Command(_Codes.add, <dynamic>[value]));
    return completer.future;
  }

  /// Returns all the strings in the database that contain [query].
  Stream<String> find(String query) {
    // No processing happens on the calling isolate, it gets delegated to the
    // background isolate, see [__SimpleDatabaseServer._doFind].
    StreamController<String> resultsStream = StreamController<String>();
    _resultsStream.addFirst(resultsStream);
    _sendPort.send(_Command(_Codes.query, <dynamic>[query]));
    return resultsStream.stream;
  }

  /// Handler invoked when a message is received from the port communicating
  /// with the database server.
  void _onCommand(_Command command) {
    if (command.code == _Codes.init) {
      _sendPort = command.args[0];
      _completers.removeLast().complete();
      // ----------------------------------------------------------------------
      // Before using platform channels and plugins from background isolates we
      // need to register it with its root isolate. This is achieved by
      // acquiring a [RootIsolateToken] which the background isolate uses to
      // invoke [BackgroundIsolateBinaryMessenger.ensureInitialized].
      // ----------------------------------------------------------------------
      RootIsolateToken rootIsolateToken = RootIsolateToken.instance!;
      _sendPort.send(_Command(_Codes.init, <dynamic>[_path, rootIsolateToken]));
    } else if (command.code == _Codes.ack) {
      _completers.removeLast().complete();
    } else if (command.code == _Codes.result) {
      _resultsStream.last.add(command.args[0]);
    } else if (command.code == _Codes.done) {
      _resultsStream.removeLast().close();
    }
  }

  /// Kills the background isolate and its database server.
  void stop() {
    _isolate.kill();
  }
}
