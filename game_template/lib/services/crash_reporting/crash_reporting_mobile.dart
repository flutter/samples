import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'crash_reporting.dart';

class CrashReportingImpl implements CrashReporting {
  @override
  void recordError(Object error, StackTrace stackTrace) {
    FirebaseCrashlytics.instance.recordError(error, stackTrace);
  }
}
