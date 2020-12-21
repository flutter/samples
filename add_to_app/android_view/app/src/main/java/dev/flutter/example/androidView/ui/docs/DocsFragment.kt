// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package dev.flutter.example.androidView.ui.docs

import android.content.Context
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import dev.flutter.example.androidView.databinding.FragmentDocsBinding
import io.flutter.FlutterInjector
import io.flutter.embedding.android.FlutterFragment
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.dart.DartExecutor

class DocsFragment : FlutterFragment() {

    override fun onAttach(context: Context) {
        arguments = Bundle()
        super.onAttach(context)
    }

    override fun provideFlutterEngine(context: Context): FlutterEngine? {
        var engine = FlutterEngineCache.getInstance().get("docs")
        if (engine == null) {
            engine = FlutterEngine((requireActivity().applicationContext))
            engine.dartExecutor.executeDartEntrypoint(DartExecutor.DartEntrypoint.createDefault())
        }
        return engine
    }

}