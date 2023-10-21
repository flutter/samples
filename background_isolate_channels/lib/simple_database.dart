// Copyright 2022 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

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
//         |<---------------(ack)------------------------>|
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
const int _entrySize = 256;

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
  const _Command(this.code, {this.arg0, this.arg1});

  final _Codes code;
  final Object? arg0;
  final Object? arg1;
}

/// A SimpleDatabase that stores entries of strings to disk where they can be
/// queried.
///
/// All the disk operations and queries are executed in a background isolate
/// operating. This class just sends and receives messages to the isolate.
class SimpleDatabase {
  SimpleDatabase._(this._isolate, this._path);

  final Isolate _isolate;
  final String _path;
  late final SendPort _sendPort;
  // Completers are stored in a queue so multiple commands can be queued up and
  // handled serially.
  final Queue<Completer<void>> _completers = Queue<Completer<void>>();
  // Similarly, StreamControllers are stored in a queue so they can be handled
  // asynchronously and serially.
  final Queue<StreamController<String>> _resultsStream =
      Queue<StreamController<String>>();

  /// Open the database at [path] and launch the server on a background isolate..
  static Future<SimpleDatabase> open(String path) async {
    final ReceivePort receivePort = ReceivePort();
    final Isolate isolate =
        await Isolate.spawn(_SimpleDatabaseServer._run, receivePort.sendPort);
    final SimpleDatabase result = SimpleDatabase._(isolate, path);
    Completer<void> completer = Completer<void>();
    result._completers.addFirst(completer);
    receivePort.listen((message) {
      result._handleCommand(message as _Command);
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
    _sendPort.send(_Command(_Codes.add, arg0: value));
    return completer.future;
  }

  /// Returns all the strings in the database that contain [query].
  Stream<String> find(String query) {
    // No processing happens on the calling isolate, it gets delegated to the
    // background isolate, see [__SimpleDatabaseServer._doFind].
    StreamController<String> resultsStream = StreamController<String>();
    _resultsStream.addFirst(resultsStream);
    _sendPort.send(_Command(_Codes.query, arg0: query));
    return resultsStream.stream;
  }

  /// Handler invoked when a message is received from the port communicating
  /// with the database server.
  void _handleCommand(_Command command) {
    switch (command.code) {
      case _Codes.init:
        _sendPort = command.arg0 as SendPort;
        // ----------------------------------------------------------------------
        // Before using platform channels and plugins from background isolates we
        // need to register it with its root isolate. This is achieved by
        // acquiring a [RootIsolateToken] which the background isolate uses to
        // invoke [BackgroundIsolateBinaryMessenger.ensureInitialized].
        // ----------------------------------------------------------------------
        RootIsolateToken rootIsolateToken = RootIsolateToken.instance!;
        _sendPort
            .send(_Command(_Codes.init, arg0: _path, arg1: rootIsolateToken));
      case _Codes.ack:
        _completers.removeLast().complete();
      case _Codes.result:
        _resultsStream.last.add(command.arg0 as String);
      case _Codes.done:
        _resultsStream.removeLast().close();
      default:
        debugPrint('SimpleDatabase unrecognized command: ${command.code}');
    }
  }

  /// Kills the background isolate and its database server.
  void stop() {
    _isolate.kill();
  }
}

/// The portion of the [SimpleDatabase] that runs on the background isolate.
///
/// This is where we use the new feature Background Isolate Channels, which
/// allows us to use plugins from background isolates.
class _SimpleDatabaseServer {
  _SimpleDatabaseServer(this._sendPort);

  final SendPort _sendPort;
  late final String _path;

  // ----------------------------------------------------------------------
  // Here the plugin is used from the background isolate.
  // ----------------------------------------------------------------------

  /// The main entrypoint for the background isolate sent to [Isolate.spawn].
  static void _run(SendPort sendPort) {
    ReceivePort receivePort = ReceivePort();
    sendPort.send(_Command(_Codes.init, arg0: receivePort.sendPort));
    final _SimpleDatabaseServer server = _SimpleDatabaseServer(sendPort);
    receivePort.listen((message) async {
      final _Command command = message as _Command;
      await server._handleCommand(command);
    });
  }

  /// Handle the [command] received from the [ReceivePort].
  Future<void> _handleCommand(_Command command) async {
    switch (command.code) {
      case _Codes.init:
        _path = command.arg0 as String;
        // ----------------------------------------------------------------------
        // The [RootIsolateToken] is required for
        // [BackgroundIsolateBinaryMessenger.ensureInitialized] and must be
        // obtained on the root isolate and passed into the background isolate via
        // a [SendPort].
        // ----------------------------------------------------------------------
        RootIsolateToken rootIsolateToken = command.arg1 as RootIsolateToken;
        // ----------------------------------------------------------------------
        // [BackgroundIsolateBinaryMessenger.ensureInitialized] for each
        // background isolate that will use plugins. This sets up the
        // [BinaryMessenger] that the Platform Channels will communicate with on
        // the background isolate.
        // ----------------------------------------------------------------------
        BackgroundIsolateBinaryMessenger.ensureInitialized(rootIsolateToken);
        _sendPort.send(const _Command(_Codes.ack, arg0: null));
      case _Codes.add:
        _doAddEntry(command.arg0 as String);
      case _Codes.query:
        _doFind(command.arg0 as String);
      default:
        debugPrint(
            '_SimpleDatabaseServer unrecognized command ${command.code}');
    }
  }

  /// Perform the add entry operation.
  void _doAddEntry(String value) {
    debugPrint('Performing add: $value');
    File file = File(_path);
    if (!file.existsSync()) {
      file.createSync();
    }
    RandomAccessFile writer = file.openSync(mode: FileMode.append);
    List<int> bytes = utf8.encode(value);
    if (bytes.length > _entrySize) {
      bytes = bytes.sublist(0, _entrySize);
    } else if (bytes.length < _entrySize) {
      List<int> newBytes = List.filled(_entrySize, 0);
      for (int i = 0; i < bytes.length; ++i) {
        newBytes[i] = bytes[i];
      }
      bytes = newBytes;
    }
    writer.writeFromSync(bytes);
    writer.closeSync();
    _sendPort.send(const _Command(_Codes.ack, arg0: null));
  }

  /// Perform the find entry operation.
  void _doFind(String query) {
    debugPrint('Performing find: $query');
    File file = File(_path);
    if (file.existsSync()) {
      RandomAccessFile reader = file.openSync();
      List<int> buffer = List.filled(_entrySize, 0);
      while (reader.readIntoSync(buffer) == _entrySize) {
        List<int> foo = buffer.takeWhile((value) => value != 0).toList();
        String string = utf8.decode(foo);
        if (string.contains(query)) {
          _sendPort.send(_Command(_Codes.result, arg0: string));
        }
      }
      reader.closeSync();
    }
    _sendPort.send(const _Command(_Codes.done, arg0: null));
  }
}
