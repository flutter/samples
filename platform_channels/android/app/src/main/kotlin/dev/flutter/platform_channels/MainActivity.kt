// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package dev.flutter.platform_channels

import android.content.Context
import android.hardware.Sensor
import android.hardware.SensorManager
import com.google.gson.Gson
import com.google.gson.reflect.TypeToken
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

        val petList = mutableListOf<Map<String, String>>()
        val gson = Gson()

        // A BasicMessageChannel for sending petList to Dart.
        val stringCodecChannel = BasicMessageChannel(flutterEngine.dartExecutor, "stringCodecDemo", StringCodec.INSTANCE)

        // Registers a MessageHandler for BasicMessageChannel to receive pet details to be
        // added in petList and send the it back to Dart using stringCodecChannel.
        BasicMessageChannel(flutterEngine.dartExecutor, "jsonMessageCodecDemo", JSONMessageCodec.INSTANCE)
                .setMessageHandler { message, reply ->
                    petList.add(0, gson.fromJson(message.toString(), object : TypeToken<Map<String, String>>() {}.type))
                    stringCodecChannel.send(gson.toJson(mapOf("petList" to petList)))
                }

        // Registers a MessageHandler for BasicMessageChannel to receive the index of pet
        // details to be removed from the petList and send the petList back to Dart using
        // stringCodecChannel. If the index is not in the range of petList, we send null
        // back to Dart.
        BasicMessageChannel(flutterEngine.dartExecutor, "binaryCodecDemo", BinaryCodec.INSTANCE)
                .setMessageHandler { message, reply ->
                    val index = String(message!!.array()).toInt()
                    if (index >= 0 && index < petList.size) {
                        petList.removeAt(index)
                        val replyMessage = "Removed Successfully"
                        reply.reply(ByteBuffer.allocateDirect(replyMessage.toByteArray().size).put(replyMessage.toByteArray()))
                        stringCodecChannel.send(gson.toJson(mapOf("petList" to petList)))
                    } else {
                        reply.reply(null)
                    }
                }
    }
}
