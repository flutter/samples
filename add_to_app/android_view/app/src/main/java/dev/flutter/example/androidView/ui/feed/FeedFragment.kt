// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package dev.flutter.example.androidView.ui.feed

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import androidx.recyclerview.widget.LinearLayoutManager
import dev.flutter.example.androidView.databinding.AndroidCardBinding

import dev.flutter.example.androidView.databinding.FragmentFeedBinding

class FeedFragment : Fragment() {
    // TODO: add toggle for single vs multi-Flutter cells.
    private var _binding: FragmentFeedBinding? = null

    // This property is only valid between onCreateView and
    // onDestroyView.
    private val binding get() = _binding!!

    override fun onCreateView(
            inflater: LayoutInflater,
            container: ViewGroup?,
            savedInstanceState: Bundle?
    ): View? {
        _binding = FragmentFeedBinding.inflate(inflater, container, false)

        val layoutManager = LinearLayoutManager(activity)
        _binding!!.recyclerView.layoutManager = layoutManager
        _binding!!.recyclerView.adapter = FeedAdapter()

        return binding.root
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}