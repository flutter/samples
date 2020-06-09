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
        // We're reusing the same FlutterEngine instance for this sample. Create the FlutterEngine
        // on application start.
        flutterEngine = FlutterEngine(this).apply{
            dartExecutor.executeDartEntrypoint(DartExecutor.DartEntrypoint.createDefault())
        }
        FlutterEngineCache.getInstance().put(ENGINE_ID, flutterEngine)
    }
}