// lib/services/crash_reporting/crash_reporting_impl.dart

export 'crash_reporting_desktop.dart'
    if (dart.library.android) 'crash_reporting_mobile.dart'
    if (dart.library.ios) 'crash_reporting_mobile.dart';
