// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package dev.flutter.example.androidView.ui.feed

import android.content.Intent
import android.os.Bundle
import android.os.Parcel
import android.os.Parcelable
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import androidx.recyclerview.widget.LinearLayoutManager
import dev.flutter.example.androidView.MainActivity

import dev.flutter.example.androidView.databinding.FragmentFeedBinding
import io.flutter.FlutterInjector
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.dart.DartExecutor
import java.util.*
import kotlin.collections.ArrayList

class FeedFragment : Fragment() {
    // TODO: add toggle for single vs multi-Flutter cells.
    private var _binding: FragmentFeedBinding? = null

    // This property is only valid between onCreateView and
    // onDestroyView.
    private val binding get() = _binding!!
    private lateinit var flutterViewEngine: FlutterViewEngine

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        Log.e("fragment", this.toString())
        // TODO: make togglable after https://github.com/flutter/flutter/issues/72009 is built.
        var engine = FlutterEngineCache.getInstance().get("feed")
        if (engine == null) {
            engine = FlutterEngine((requireActivity().applicationContext))
            engine.dartExecutor.executeDartEntrypoint(DartExecutor.DartEntrypoint(
                FlutterInjector.instance().flutterLoader().findAppBundlePath(),
                "showCell"))
        }

        flutterViewEngine = FlutterViewEngine(engine)
        flutterViewEngine.attachToActivity(requireActivity())
    }

    override fun onCreateView(
            inflater: LayoutInflater,
            container: ViewGroup?,
            savedInstanceState: Bundle?
    ): View? {
        _binding = FragmentFeedBinding.inflate(inflater, container, false)

        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        val layoutManager = LinearLayoutManager(activity)
        val recyclerView = _binding!!.recyclerView
        val adapter = FeedAdapter(requireActivity(), flutterViewEngine)
        recyclerView.layoutManager = layoutManager
        recyclerView.adapter = adapter

        layoutManager.onRestoreInstanceState(savedInstanceState?.getParcelable<Parcelable>("layoutManager"))
        val previousFlutterCellsArray = savedInstanceState?.getIntegerArrayList("adapter")
        if (previousFlutterCellsArray != null) {
            adapter.previousFlutterCells = TreeSet(previousFlutterCellsArray)
        }
    }

    override fun onDestroyView() {
        super.onDestroyView()
        Log.e("fragment", "onDestroyView")
        _binding = null
    }

    override fun onDestroy() {
        super.onDestroy()
        flutterViewEngine.detachActivity()
        Log.e("fragment", "onDestroy")
    }

    override fun onDetach() {
        super.onDetach()
        Log.e("fragment", "onDetach")
    }

    override fun onSaveInstanceState(outState: Bundle) {
        super.onSaveInstanceState(outState)

        Log.e("fragment", "onSaveInstanceState")

        outState.putParcelable("layoutManager", _binding?.recyclerView?.layoutManager?.onSaveInstanceState())
        val previousFlutterCells = (_binding?.recyclerView?.adapter as? FeedAdapter)?.previousFlutterCells
        if (previousFlutterCells != null) {
            outState.putIntegerArrayList(
                "adapter",
                ArrayList(previousFlutterCells)
            )
        }
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