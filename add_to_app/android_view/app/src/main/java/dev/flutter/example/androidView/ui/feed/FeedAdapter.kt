// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package dev.flutter.example.androidView.ui.feed

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import dev.flutter.example.androidView.databinding.AndroidCardBinding

class FeedAdapter : RecyclerView.Adapter<FeedAdapter.Cell>() {
    inner class Cell(val binding: AndroidCardBinding) : RecyclerView.ViewHolder(binding.root) {

    }

    override fun onCreateViewHolder(viewGroup: ViewGroup, viewType: Int): Cell {
        val binding = AndroidCardBinding.inflate(LayoutInflater.from(viewGroup.context), viewGroup, false)

        return Cell(binding)
    }

    override fun onBindViewHolder(viewHolder: Cell, position: Int) {
        viewHolder.binding.cellNumber.text = position.toString();
    }

    override fun getItemCount() = 100

    override fun onViewRecycled(holder: Cell) {
        super.onViewRecycled(holder)
    }
}
