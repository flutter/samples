// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package dev.flutter.example.androidfullscreen

import android.app.Application
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.dart.DartExecutor
import io.flutter.plugin.common.MethodChannel
import io.flutter.view.FlutterMain

const val ENGINE_ID = "1"

class MyApplication : Application() {
    var count = 0

    private var channel: MethodChannel? = null

    override fun onCreate() {
        super.onCreate()

        FlutterMain.startInitialization(this)
        FlutterMain.ensureInitializationComplete(this, null)

        val flutterEngine = FlutterEngine(this)
        flutterEngine
            .dartExecutor
            .executeDartEntrypoint(
                DartExecutor.DartEntrypoint.createDefault()
            )

        FlutterEngineCache.getInstance().put(ENGINE_ID, flutterEngine)

        channel = MethodChannel(flutterEngine.dartExecutor, "dev.flutter.example/counter")

        channel?.setMethodCallHandler { call, _ ->
            when (call.method) {
                "incrementCounter" -> {
                    count++
                    reportCounter()
                }
                "requestCounter" -> {
                    print("requestCounter")
                    reportCounter()
                }
            }
        }
    }

    private fun reportCounter() {
        channel?.invokeMethod("reportCounter", count)
    }
}
