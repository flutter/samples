import 'dart:ffi' as ffi;
import 'dart:io';
import 'dart:isolate';

import 'package:intl/intl.dart';
import 'package:jni/jni.dart' as jni;
import 'package:pedometer/pedometer_bindings_generated.dart' as pd;
import 'package:pedometer/health_connect.dart' as hc;

/// Class to hold the information needed for the chart
class Steps {
  String startHour;
  int steps;
  Steps(this.startHour, this.steps);
}

abstract class StepsRepo {
  static const _formatString = "yyyy-MM-dd HH:mm:ss";

  static StepsRepo? _instance;
  static StepsRepo get instance =>
      _instance ??= Platform.isAndroid ? _AndroidStepsRepo() : _IOSStepsRepo();

  Future<List<Steps>> getSteps();
}

class _IOSStepsRepo implements StepsRepo {
  static const _dylibPath =
      '/System/Library/Frameworks/CoreMotion.framework/CoreMotion';

  // Bindings for the CMPedometer class
  final lib = pd.PedometerBindings(ffi.DynamicLibrary.open(_dylibPath));
  // Bindings for the helper function
  final helpLib = pd.PedometerBindings(ffi.DynamicLibrary.process());

  late final pd.CMPedometer client;
  late final pd.NSDateFormatter formatter;
  late final pd.NSDateFormatter hourFormatter;

  _IOSStepsRepo() {
    // Contains the Dart API helper functions
    final dylib = ffi.DynamicLibrary.open("pedometer.framework/pedometer");

    // Initialize the Dart API
    final initializeApi = dylib.lookupFunction<
        ffi.IntPtr Function(ffi.Pointer<ffi.Void>),
        int Function(ffi.Pointer<ffi.Void>)>('Dart_InitializeApiDL');

    final initializeResult = initializeApi(ffi.NativeApi.initializeApiDLData);
    if (initializeResult != 0) {
      throw StateError('failed to init API.');
    }

    // Create a new CMPedometer instance.
    client = pd.CMPedometer.new1(lib);

    // Setting the formatter for date strings.
    formatter =
        pd.NSDateFormatter.castFrom(pd.NSDateFormatter.alloc(lib).init());
    formatter.dateFormat = pd.NSString(lib, "${StepsRepo._formatString} zzz");
    hourFormatter =
        pd.NSDateFormatter.castFrom(pd.NSDateFormatter.alloc(lib).init());
    hourFormatter.dateFormat = pd.NSString(lib, "HH");
  }

  pd.NSDate dateConverter(DateTime dartDate) {
    // Format dart date to string.
    final formattedDate = DateFormat(StepsRepo._formatString).format(dartDate);
    // Get current timezone. If eastern african change to AST to follow with NSDate.
    final tz = dartDate.timeZoneName == "EAT" ? "AST" : dartDate.timeZoneName;

    // Create a new NSString with the formatted date and timezone.
    final nString = pd.NSString(lib, "$formattedDate $tz");
    // Convert the NSString to NSDate.
    return formatter.dateFromString_(nString);
  }

  @override
  Future<List<Steps>> getSteps() async {
    if (!pd.CMPedometer.isStepCountingAvailable(lib)) {
      print("Step counting is not available.");
      return [];
    }

    final futures = <Future>[];
    final now = DateTime.now();

    for (var h = 0; h <= now.hour; h++) {
      // Open up a port to receive data from native side.
      final receivePort = ReceivePort();
      final nativePort = receivePort.sendPort.nativePort;
      final start = dateConverter(DateTime(now.year, now.month, now.day, h));
      final end = dateConverter(DateTime(now.year, now.month, now.day, h + 1));

      pd.PedometerHelper.startPedometerWithPort_pedometer_start_end_(
        helpLib,
        nativePort,
        client,
        start,
        end,
      );
      // Handle the data received from native side.
      futures.add(receivePort.first);
    }

    final data = await Future.wait(futures);
    return data.where((e) => e != null).cast<int>().map((address) {
      final result = ffi.Pointer<pd.ObjCObject>.fromAddress(address);
      final pedometerData =
          pd.CMPedometerData.castFromPointer(lib, result, release: true);
      final stepCount = pedometerData.numberOfSteps?.intValue ?? 0;
      final startHour =
          hourFormatter.stringFromDate_(pedometerData.startDate!).toString();
      return Steps(startHour, stepCount);
    }).toList();
  }
}

class _AndroidStepsRepo implements StepsRepo {
  late final hc.Activity activity;
  late final hc.Context applicationContext;
  late final hc.HealthConnectClient client;

  _AndroidStepsRepo() {
    jni.Jni.initDLApi();
    activity = hc.Activity.fromRef(jni.Jni.getCurrentActivity());
    applicationContext =
        hc.Context.fromRef(jni.Jni.getCachedApplicationContext());
    client = hc.HealthConnectClient.getOrCreate1(applicationContext);
  }

  @override
  Future<List<Steps>> getSteps() async {
    final futures = <Future<hc.AggregationResult>>[];
    final now = DateTime.now();

    for (var h = 0; h <= now.hour; h++) {
      final start =
          DateTime(now.year, now.month, now.day, h).millisecondsSinceEpoch;
      final end =
          DateTime(now.year, now.month, now.day, h + 1).millisecondsSinceEpoch;
      final request = hc.AggregateRequest(
        hc.Set.of1(
          hc.AggregateMetric.type(hc.Long.type),
          hc.StepsRecord.COUNT_TOTAL,
        ),
        hc.TimeRangeFilter.between(
          hc.Instant.ofEpochMilli(start),
          hc.Instant.ofEpochMilli(end),
        ),
        hc.Set.of(jni.JObject.type),
      );
      futures.add(client.aggregate(request));
    }
    final data = await Future.wait(futures);
    return data.asMap().entries.map((entry) {
      final stepsLong =
          entry.value.get0(hc.Long.type, hc.StepsRecord.COUNT_TOTAL);
      final steps = stepsLong.isNull ? 0 : stepsLong.intValue();
      return Steps(entry.key.toString().padLeft(2, '0'), steps);
    }).toList();
  }
}
