// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package dev.flutter.example.androidfullscreen

import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.dart.DartExecutor
import io.flutter.plugin.common.MethodChannel
import io.flutter.view.FlutterMain

class MainActivity : AppCompatActivity() {

    private val ENGINE_ID = "1"

    private var channel : MethodChannel? = null
    private var count = 0
    private var counterLabel : TextView? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        FlutterMain.ensureInitializationComplete(applicationContext, null)

        // Create and warm up Flutter engine.
        val flutterEngine = FlutterEngine(this)

        flutterEngine
            .dartExecutor
            .executeDartEntrypoint(
                DartExecutor.DartEntrypoint.createDefault()
            )

        FlutterEngineCache.getInstance().put(ENGINE_ID, flutterEngine)

        // Set up the method channel that will pass data to and from the Flutter module.
        channel = MethodChannel(flutterEngine.dartExecutor, "dev.flutter.example/counter")

        channel?.setMethodCallHandler { call, _ ->
            when (call.method) {
                "incrementCounter" -> {
                    count++
                    counterLabel?.text = "Current counter: $count"
                    reportCounter()
                }
                "requestCounter" -> {
                    print("requestCounter")
                    reportCounter()
                }
            }
        }

        // Set up label and button.
        counterLabel = findViewById(R.id.counter_label)
        val button = findViewById<Button>(R.id.launch_button)

        button.setOnClickListener {
            val intent = FlutterActivity
                .withCachedEngine(ENGINE_ID)
                .build(this)

            startActivity(intent)
        }
    }

    private fun reportCounter() {
        channel?.invokeMethod("reportCounter", count)
    }
}
