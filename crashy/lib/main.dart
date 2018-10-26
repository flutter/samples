// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// This is a sample Flutter app that demonstrates how to catch various kinds
/// of errors in Flutter apps and report them to Sentry.io.
/// 
/// Explanations are provided in the inline comments in the code below.
library crashy;

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// This imports the Dart Sentry.io client that sends crash reports to Sentry.io.
import 'package:sentry/sentry.dart';

// This file does not exist in the repository and is .gitignored. In your local
// clone of this repository, create this file and add a top-level [String]
// constant containing the DSN value issued by Sentry.io to your project.
//
// This method of supplying DSN is only for demo purposes. In a real app you
// might want to get it using a more robust method, such as via environment
// variables, a configuration file or a platform-specific secret key storage.
import 'dsn.dart';

/// Sentry.io client used to send crash reports (or more generally "events").
/// 
/// This client uses the default client parameters. For example, it uses a
/// plain HTTP client that does not retry failed report attempts and does
/// not support offline mode. You might want to use a different HTTP client,
/// one that has these features. Please read the documentation for the
/// [SentryClient] constructor to learn how you can customize it.
/// 
/// [SentryClient.environmentAttributes] are particularly useful in a real
/// app. Use them to specify attributes of your app that do not change from
/// one event to another, such as operating system type and version, the
/// version of Flutter, and [device information][1].
/// 
/// [1]: https://github.com/flutter/plugins/tree/master/packages/device_info
final SentryClient _sentry = new SentryClient(dsn: dsn);

/// Whether the VM is running in debug mode.
/// 
/// This is useful to decide whether a report should be sent to sentry. Usually
/// reports from dev mode are not very useful, as these happen on developers'
/// workspaces rather than on users' devices in production.
bool get isInDebugMode {
  bool inDebugMode = false;
  assert(inDebugMode = true);
  return inDebugMode;
}

/// Reports [error] along with its [stackTrace] to Sentry.io.
Future<Null> _reportError(dynamic error, dynamic stackTrace) async {
  print('Caught error: $error');

  // Errors thrown in development mode are unlikely to be interesting. You can
  // check if you are running in dev mode using an assertion and omit sending
  // the report.
  if (isInDebugMode) {
    print(stackTrace);
    print('In dev mode. Not sending report to Sentry.io.');
    return;
  }

  print('Reporting to Sentry.io...');

  final SentryResponse response = await _sentry.captureException(
    exception: error,
    stackTrace: stackTrace,
  );

  if (response.isSuccessful) {
    print('Success! Event ID: ${response.eventId}');
  } else {
    print('Failed to report to Sentry.io: ${response.error}');
  }
}

Future<Null> main() async {
  // This captures errors reported by the Flutter framework.
  FlutterError.onError = (FlutterErrorDetails details) async {
    if (isInDebugMode) {
      // In development mode simply print to console.
      FlutterError.dumpErrorToConsole(details);
    } else {
      // In production mode report to the application zone to report to
      // Sentry.
      Zone.current.handleUncaughtError(details.exception, details.stack);
    }
  };

  // This creates a [Zone] that contains the Flutter application and stablishes
  // an error handler that captures errors and reports them.
  //
  // Using a zone makes sure that as many errors as possible are captured,
  // including those thrown from [Timer]s, microtasks, I/O, and those forwarded
  // from the `FlutterError` handler.
  //
  // More about zones:
  //
  // - https://api.dartlang.org/stable/1.24.2/dart-async/Zone-class.html
  // - https://www.dartlang.org/articles/libraries/zones
  runZoned<Future<Null>>(() async {
    runApp(new CrashyApp());
  }, onError: (error, stackTrace) async {
    await _reportError(error, stackTrace);
  });
}

class CrashyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Crashy',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Crashy'),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
              child: new Text('Dart exception'),
              elevation: 1.0,
              onPressed: () {
                throw new StateError('This is a Dart exception.');
              },
            ),
            new RaisedButton(
              child: new Text('async Dart exception'),
              elevation: 1.0,
              onPressed: () async {
                foo() async {
                  throw new StateError('This is an async Dart exception.');
                }
                bar() async {
                  await foo();
                }
                await bar();
              },
            ),
            new RaisedButton(
              child: new Text('Java exception'),
              elevation: 1.0,
              onPressed: () async {
                final channel = const MethodChannel('crashy-custom-channel');
                await channel.invokeMethod('blah');
              },
            ),
          ],
        ),
      ),
    );
  }
}
