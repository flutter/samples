// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package dev.flutter.example.androidusingplugin

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import io.flutter.embedding.android.FlutterActivity
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        launchFlutterButton.setOnClickListener {
            val intent = FlutterActivity
                .withCachedEngine(ENGINE_ID)
                .build(this)
            startActivity(intent)
        }
    }

    override fun onResume() {
        super.onResume()
        val app = application as MyApplication
        counterLabel.text = "Current count: ${app.count}"
    }
}
