// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package dev.flutter.example.books

import android.app.Application
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.dart.DartExecutor

class BookApplication: Application() {
    companion object {
        const val ENGINE_ID = "book_engine"
    }

    private lateinit var flutterEngine: FlutterEngine

    override fun onCreate() {
        super.onCreate()
        // This application reuses a single FlutterEngine instance throughout.
        // Create the FlutterEngine on application start.
        flutterEngine = FlutterEngine(this).apply{
            dartExecutor.executeDartEntrypoint(DartExecutor.DartEntrypoint.createDefault())
        }
        FlutterEngineCache.getInstance().put(ENGINE_ID, flutterEngine)
    }
}
