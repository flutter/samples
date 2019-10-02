// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package dev.flutter.example.androidfullscreen

import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import io.flutter.embedding.android.FlutterActivity

class MainActivity : AppCompatActivity() {

    private var counterLabel : TextView? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        counterLabel = findViewById(R.id.counter_label)
        val button = findViewById<Button>(R.id.launch_button)

        button.setOnClickListener {
            val intent = FlutterActivity.createDefaultIntent(this)
            startActivity(intent)
            //            val intent = Intent(this, MyFlutterActivity::class.java)
//            startActivityForResult(intent, 1)
        }
    }

//    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
//        super.onActivityResult(requestCode, resultCode, data)
//        if (data != null) {
//            val counter = data.getIntExtra("counter", 0)
//            counterLabel?.text = "Current counter: $counter"
//        }
//    }
}
