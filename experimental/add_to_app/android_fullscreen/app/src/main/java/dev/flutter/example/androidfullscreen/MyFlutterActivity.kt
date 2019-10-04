package dev.flutter.example.androidfullscreen

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.plugin.common.MethodChannel

class MyFlutterActivity : FlutterActivity() {
    private var channel : MethodChannel? = null
    private var count = 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        count = intent.getIntExtra(COUNT_EXTRA_KEY, 0)
    }

    override fun provideFlutterEngine(context: Context): FlutterEngine? {
        val flutterEngine = FlutterEngineCache.getInstance().get(ENGINE_ID)!!


        return flutterEngine
    }

    override fun onDestroy() {
        channel?.setMethodCallHandler(null)

        val resultIntent = Intent()
        resultIntent.putExtra(COUNT_EXTRA_KEY, count)
        setResult(Activity.RESULT_OK, resultIntent)

        super.onDestroy()
    }

}