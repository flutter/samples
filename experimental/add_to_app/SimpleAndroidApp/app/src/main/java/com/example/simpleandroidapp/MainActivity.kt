package com.example.simpleandroidapp

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import io.flutter.embedding.android.FlutterActivity

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val launchButton = this.findViewById<Button>(R.id.launch_button)

        launchButton.setOnClickListener {
            startActivity(FlutterActivity.createDefaultIntent(this))
        }
    }
}
