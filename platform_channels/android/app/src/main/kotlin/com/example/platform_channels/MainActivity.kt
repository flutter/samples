package com.example.platform_channels

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        // Creates a MethodChannel as soon as the FlutterEngine is attached to
        // the Activity, and registers a MethodCallHandler. The Method.setMethodCallHandler
        // is responsible to register a MethodCallHandler to handle the incoming calls.

        // The call parameter of MethodCallHandler has information about the incoming call,
        // like method name, and arguments. The result parameter of MethodCallHandler is
        // responsible to send the results of the call.
        MethodChannel(flutterEngine.dartExecutor, "methodChannelDemo")
                .setMethodCallHandler { call, result ->
                    var count: Int

                    if (call.argument<Int>("count") != null) {
                        count = call.argument<Int>("count")!!

                        when (call.method) {
                            "increment" -> {
                                count++
                            }
                            "decrement" -> {
                                count--
                            }
                            else -> result.notImplemented()
                        }
                        result.success(count)
                    } else {
                        result.error("INVALID ARGUMENT", "Value of count cannot be null", null)
                    }
                }
    }
}
