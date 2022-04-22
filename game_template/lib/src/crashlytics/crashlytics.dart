import 'dart:async';
import 'dart:isolate';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:logging/logging.dart';

/// Runs [mainFunction] in a guarded [Zone].
///
/// If a non-null [FirebaseCrashlytics] instance is provided through
/// [crashlytics], then all errors will be reported through it.
///
/// These errors will also include latest logs from anywhere in the app
/// that use `package:logging`.
Future<void> guardWithCrashlytics(
  void Function() mainFunction, {
  required FirebaseCrashlytics? crashlytics,
}) async {
  // Running the initialization code and [mainFunction] inside a guarded
  // zone, so that all errors (even those occurring in callbacks) are
  // caught and can be sent to Crashlytics.
  await runZonedGuarded<Future<void>>(() async {
    if (kDebugMode) {
      // Log more when in debug mode.
      Logger.root.level = Level.FINE;
    }
    // Subscribe to log messages.
    Logger.root.onRecord.listen((record) {
      final message = '${record.level.name}: ${record.time}: '
          '${record.loggerName}: '
          '${record.message}';

      debugPrint(message);
      // Add the message to the rotating Crashlytics log.
      crashlytics?.log(message);
    });

    // Pass all uncaught errors from the framework to Crashlytics.
    if (crashlytics != null) {
      WidgetsFlutterBinding.ensureInitialized();
      FlutterError.onError = crashlytics.recordFlutterError;
    }

    // To catch errors outside of the Flutter context, we attach an error
    // listener to the current isolate.
    Isolate.current.addErrorListener(RawReceivePort((dynamic pair) async {
      final errorAndStacktrace = pair as List<dynamic>;
      await crashlytics?.recordError(
        errorAndStacktrace.first,
        errorAndStacktrace.last as StackTrace?,
      );
    }).sendPort);

    // Run the actual code.
    mainFunction();
  }, (error, stack) {
    // This sees all errors that occur in the runZonedGuarded zone.
    debugPrint('ERROR: $error\n\n'
        'STACK:$stack');
    crashlytics?.recordError(error, stack);
  });
}
