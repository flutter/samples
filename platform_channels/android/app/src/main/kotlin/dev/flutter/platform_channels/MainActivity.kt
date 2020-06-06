// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package dev.flutter.platform_channels

import android.content.Context
import android.hardware.Sensor
import android.hardware.SensorManager
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel
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
                    val count: Int? = call.argument<Int>("count")

                    if (count == null) {
                        result.error("INVALID ARGUMENT", "Value of count cannot be null", null)
                    } else {
                        when (call.method) {
                            "increment" -> result.success(count + 1)
                            "decrement" -> result.success(count - 1)
                            else -> result.notImplemented()
                        }
                    }
                }

        val sensorManger: SensorManager = getSystemService(Context.SENSOR_SERVICE) as SensorManager
        // Use instance of Sensor Service to get the ACCELEROMETER sensor.
        val accelerometerSensor: Sensor = sensorManger.getDefaultSensor(Sensor.TYPE_ACCELEROMETER)
        // Creates a EventChannel, and sets a StreamHandler. The AccelerometerStreamHandler
        // implements a StreamHandler and SensorEventListener to listen the value changes from
        // the sensor and send it to dart side.
        EventChannel(flutterEngine.dartExecutor, "accelerometer")
                .setStreamHandler(AccelerometerStreamHandler(sensorManger, accelerometerSensor))
    }
}