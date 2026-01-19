import 'crash_reporting.dart';

class CrashReportingImpl implements CrashReporting {
  @override
  void recordError(Object error, StackTrace stackTrace) {
    // no-op on Windows / macOS / Linux
  }
}
