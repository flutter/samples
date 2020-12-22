// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package dev.flutter.example.androidView

import android.content.Context
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import dev.flutter.example.androidView.databinding.AndroidCardBinding
import io.flutter.embedding.android.FlutterView
import io.flutter.plugin.common.MethodChannel
import java.util.*
import kotlin.random.Random

class ListAdapter(private val context: Context, private val flutterViewEngine: FlutterViewEngine) : RecyclerView.Adapter<ListAdapter.Cell>() {
    var previousFlutterCells = TreeSet<Int>();

    private val matchParentLayout = ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT)

    private val random = Random.Default
    private val flutterView = FlutterView(context)
    private val flutterChannel = MethodChannel(flutterViewEngine.engine.dartExecutor, "dev.flutter.example/cell")

    private var flutterCell: Cell? = null

    inner class Cell(val binding: AndroidCardBinding) : RecyclerView.ViewHolder(binding.root) {

    }

    override fun onCreateViewHolder(viewGroup: ViewGroup, viewType: Int): Cell {
        val binding = AndroidCardBinding.inflate(LayoutInflater.from(viewGroup.context), viewGroup, false)

        // Let the default view holder have an Android card. When needed, hide the Android card
        // and show a Flutter one instead.
        return Cell(binding)
    }

    override fun onBindViewHolder(cell: Cell, position: Int) {
        // While scrolling forward, if no Flutter is presently showing, let the next one have a 1/3
        // chance of being Flutter.
        //
        // While scrolling backward, let it be deterministic, and only show cells that were
        // previously Flutter cells as Flutter cells.
        if (previousFlutterCells.contains(position)
            || ((previousFlutterCells.isEmpty() || position > previousFlutterCells.last())
                && flutterCell == null
                && random.nextInt(3) == 0)) {
            // If we're restoring a cell at a previous location, the current cell may not have
            // recycled yet since that timing is indeterministic. Yank it from the current one.
            //
            // This shouldn't produce any visual glitches since in the forward direction,
            // Flutter cells were only introduced once the previous Flutter cell recycled.
            if (flutterCell != null) {
                Log.w("FeedAdapter", "While restoring a previous Flutter cell, a current "
                        + "yet to be recycled Flutter cell was detached.")
                flutterCell!!.binding.root.removeView(flutterView)
                flutterViewEngine.detachFlutterView()
                flutterCell = null
            }

            // Add the Flutter card and hide the Android card
            cell.binding.root.addView(flutterView, matchParentLayout)
            cell.binding.androidCard.visibility = View.GONE

            flutterCell = cell
            // Keep track that this position has once been a Flutter cell. Let it be a Flutter cell
            // again when scrolling back to this position.
            previousFlutterCells.add(position)

            flutterViewEngine.attachFlutterView(flutterView)
            // Tell Flutter which index it's at so Flutter could show the cell number too.
            flutterChannel.invokeMethod("setCellNumber", position)
        } else {
            // If it's not selected as a Flutter cell, just show the Android card.
            cell.binding.androidCard.visibility = View.VISIBLE
            cell.binding.cellNumber.text = position.toString();
        }
    }

    override fun getItemCount() = 100

    override fun onViewRecycled(cell: Cell) {
        if (cell == flutterCell) {
            cell.binding.root.removeView(flutterView)
            flutterViewEngine.detachFlutterView()
            flutterCell = null
        }
        super.onViewRecycled(cell)
    }
}
