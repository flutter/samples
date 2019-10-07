// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package dev.flutter.example.androidfullscreen

import android.annotation.SuppressLint
import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import io.flutter.embedding.android.FlutterActivity
import java.util.*

class MainActivity : AppCompatActivity(), Observer {
    private var counterLabel: TextView? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        counterLabel = findViewById(R.id.counter_label)

        val button = findViewById<Button>(R.id.launch_button)

        button.setOnClickListener {
            val intent = FlutterActivity
                .withCachedEngine(ENGINE_ID)
                .build(this)
            startActivity(intent)
        }

        val app = application as MyApplication
        app.count.addObserver(this)
    }

    // Move update to label back to onResume. Remove observer.

    override fun onDestroy() {
        val app = application as MyApplication
        app.count.deleteObserver(this)

        super.onDestroy()
    }

    @SuppressLint("SetTextI18n")
    override fun update(o: Observable, arg: Any) {
        if (o is ObservableInteger) {
            counterLabel?.text = "Current count: ${o.value}"
        }
    }
}
