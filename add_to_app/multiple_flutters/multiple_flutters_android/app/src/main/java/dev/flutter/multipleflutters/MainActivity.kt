package dev.flutter.multipleflutters

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.TextView

/**
 * The activity that uses standard platform UI APIs.
 *
 * This doesn't talk directly to or render Flutter content and represents a part of your app that
 * would potentially already be written that wants to interface with Flutter.
 */
class MainActivity : AppCompatActivity(), DataModelObserver {
    private lateinit var countView: TextView
    private val mainActivityIdentifier: Int

    private companion object {
        /** A count that makes every other MainActivity have 1 or 2 Flutter instances. */
        var mainActivityCount = 0
    }

    init {
        mainActivityIdentifier = mainActivityCount
        mainActivityCount += 1
    }

    /** Implemented from AppCompactActivity. */
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        DataModel.instance.addObserver(this)
        countView = findViewById(R.id.count)
        countView.text = DataModel.instance.counter.toString()
    }

    /** Implemented from AppCompactActivity. */
    override fun onDestroy() {
        super.onDestroy()
        DataModel.instance.removeObserver(this)
    }

    /** Event from `activity_main.xml`. */
    fun onClickNext(view: View) {
        val nextClass =
            if (mainActivityIdentifier % 2 == 0) SingleFlutterActivity::class.java else DoubleFlutterActivity::class.java
        val flutterIntent = Intent(this, nextClass)
        startActivity(flutterIntent)
    }

    /** Event from `activity_main.xml`. */
    fun onClickAdd(view: View) {
        DataModel.instance.counter = DataModel.instance.counter + 1
    }

    /** Implemented from DataModelObserver. */
    override fun onCountUpdate(newCount: Int) {
        countView.text = newCount.toString()
    }
}
