// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package dev.flutter.example.androidfullscreen

import android.content.Intent
import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {
    private var counterLabel : TextView? = null
    private var count = 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        // Set up label and button.
        counterLabel = findViewById(R.id.counter_label)
        val button = findViewById<Button>(R.id.launch_button)

        button.setOnClickListener {
            val intent = Intent(this, MyFlutterActivity::class.java)
            intent.putExtra(COUNT_EXTRA_KEY, count)
            startActivityForResult(intent, 0)
        }
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        if (data != null) {
            count = data.getIntExtra("count", 0)
            counterLabel?.text = "Current count: $count"
        }
    }
}
