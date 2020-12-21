package dev.flutter.example.androidView

import android.content.Intent
import android.os.Bundle
import android.os.Parcelable
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.LinearLayoutManager
import dev.flutter.example.androidView.databinding.ActivityMainBinding
import io.flutter.FlutterInjector
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.dart.DartExecutor
import java.util.*
import kotlin.collections.ArrayList

class MainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMainBinding
    private lateinit var flutterViewEngine: FlutterViewEngine


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        // TODO: create a multi-engine version after
        // https://github.com/flutter/flutter/issues/72009 is built.
        val engine = FlutterEngine(applicationContext)
        engine.dartExecutor.executeDartEntrypoint(
            DartExecutor.DartEntrypoint(
            FlutterInjector.instance().flutterLoader().findAppBundlePath(),
            "showCell"))

        flutterViewEngine = FlutterViewEngine(engine)
        flutterViewEngine.attachToActivity(this)

        val layoutManager = LinearLayoutManager(this)
        val recyclerView = binding.recyclerView
        val adapter = ListAdapter(this, flutterViewEngine)
        recyclerView.layoutManager = layoutManager
        recyclerView.adapter = adapter

        layoutManager.onRestoreInstanceState(savedInstanceState?.getParcelable<Parcelable>("layoutManager"))
        val previousFlutterCellsArray = savedInstanceState?.getIntegerArrayList("adapter")
        if (previousFlutterCellsArray != null) {
            adapter.previousFlutterCells = TreeSet(previousFlutterCellsArray)
        }
    }

    override fun onSaveInstanceState(outState: Bundle) {
        super.onSaveInstanceState(outState)

        outState.putParcelable("layoutManager", binding.recyclerView.layoutManager?.onSaveInstanceState())
        val previousFlutterCells = (binding.recyclerView.adapter as? ListAdapter)?.previousFlutterCells
        if (previousFlutterCells != null) {
            outState.putIntegerArrayList(
                "adapter",
                ArrayList(previousFlutterCells)
            )
        }
    }

    override fun onDestroy() {
        super.onDestroy()
        flutterViewEngine.detachActivity()
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