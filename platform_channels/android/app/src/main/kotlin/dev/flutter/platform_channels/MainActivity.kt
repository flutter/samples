// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package dev.flutter.platform_channels

import android.content.Context
import android.hardware.Sensor
import android.hardware.SensorManager
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.*
import java.io.InputStream
import java.nio.ByteBuffer

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
        val accelerometerSensor: Sensor = sensorManger.getDefaultSensor(Sensor.TYPE_ACCELEROMETER)
        EventChannel(flutterEngine.dartExecutor, "eventChannelDemo")
                .setStreamHandler(AccelerometerStreamHandler(sensorManger, accelerometerSensor))

        // Registers a MessageHandler for BasicMessageChannel to receive a message from Dart and send
        // image data in reply.
        BasicMessageChannel(flutterEngine.dartExecutor, "platformImageDemo", StandardMessageCodec())
                .setMessageHandler { message, reply ->
                    if (message == "getImage") {
                        val inputStream: InputStream = assets.open("eat_new_orleans.jpg")
                        reply.reply(inputStream.readBytes())
                    }
                }

        // Registers a MessageHandler for BasicMessageChannel using StringCodec to receive a message
        // from Dart and send a reply.
        BasicMessageChannel(flutterEngine.dartExecutor, "stringCodecDemo", StringCodec.INSTANCE)
                .setMessageHandler { message, reply ->
                    reply.reply("$message from Android")
                }

        // Registers a MessageHandler for BasicMessageChannel using JSONMessageCodec to receive a message
        // from Dart and send a reply.
        BasicMessageChannel(flutterEngine.dartExecutor, "jsonMessageCodecDemo", JSONMessageCodec.INSTANCE)
                .setMessageHandler { message, reply ->
                    reply.reply("${message.toString()} from Android")
                }

        // Registers a MessageHandler for BasicMessageChannel using BinaryCodec to receive a message
        // from Dart and send a reply.
        BasicMessageChannel(flutterEngine.dartExecutor, "binaryCodecDemo", BinaryCodec.INSTANCE)
                .setMessageHandler { message, reply ->
                    val decodedMessage = String(message!!.array())
                    val byteArray: ByteArray = ("$decodedMessage from Android").toByteArray()
                    reply.reply(ByteBuffer.allocateDirect(byteArray.size).put(byteArray))
                }
    }
}
