package com.example.androidfullscreen

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import io.flutter.embedding.android.FlutterActivity

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val button = findViewById<Button>(R.id.launch_button)

        button.setOnClickListener {
            val defaultFlutter = FlutterActivity.createDefaultIntent(this)
            startActivity(defaultFlutter)
        }
    }
}
