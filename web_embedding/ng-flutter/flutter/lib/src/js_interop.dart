/// Exposes useful functions to interop with JS from our Flutter app.
library;

export 'js_interop/counter_state_manager.dart';
export 'js_interop/helper.dart' show broadcastAppEvent;

// Replace with createJSInteropWrapper when updating to Dart 3.3.
export 'dart:js_util' show createDartExport;
