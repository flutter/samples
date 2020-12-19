// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package dev.flutter.example.androidView.ui.feed

import android.content.Intent
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import androidx.recyclerview.widget.LinearLayoutManager

import dev.flutter.example.androidView.databinding.FragmentFeedBinding
import io.flutter.FlutterInjector
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.dart.DartExecutor

class FeedFragment : Fragment() {
    // TODO: add toggle for single vs multi-Flutter cells.
    private var _binding: FragmentFeedBinding? = null

    // This property is only valid between onCreateView and
    // onDestroyView.
    private val binding get() = _binding!!
    private lateinit var flutterViewEngine: FlutterViewEngine

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        flutterViewEngine = FlutterViewEngine(FlutterEngine(requireActivity().applicationContext))
        flutterViewEngine.engine.dartExecutor.executeDartEntrypoint(
            DartExecutor.DartEntrypoint(
            FlutterInjector.instance().flutterLoader().findAppBundlePath(),
            "showCell"))
        flutterViewEngine.attachToActivity(requireActivity())
    }

    override fun onCreateView(
            inflater: LayoutInflater,
            container: ViewGroup?,
            savedInstanceState: Bundle?
    ): View? {
        _binding = FragmentFeedBinding.inflate(inflater, container, false)

        val layoutManager = LinearLayoutManager(activity)
        val recyclerView = _binding!!.recyclerView
        recyclerView.layoutManager = layoutManager
        recyclerView.adapter = FeedAdapter(requireActivity(), flutterViewEngine)

        return binding.root
    }

    override fun onDestroyView() {
        super.onDestroyView()
        flutterViewEngine.detachActivity()
        _binding = null
    }

    override fun onRequestPermissionsResult(
        requestCode: Int,
        permissions: Array<out String>,
        grantResults: IntArray
    ) {
        flutterViewEngine.onRequestPermissionsResult(requestCode, permissions, grantResults)
        super.onRequestPermissionsResult(requestCode, permissions, grantResults)
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        flutterViewEngine.onActivityResult(requestCode, resultCode, data)
        super.onActivityResult(requestCode, resultCode, data)
    }
}