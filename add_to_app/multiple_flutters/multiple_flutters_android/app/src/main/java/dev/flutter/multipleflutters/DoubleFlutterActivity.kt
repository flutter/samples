package dev.flutter.multipleflutters

import android.content.Intent
import android.os.Bundle
import android.widget.FrameLayout
import android.widget.LinearLayout
import androidx.fragment.app.FragmentActivity
import androidx.fragment.app.FragmentManager
import io.flutter.embedding.android.FlutterFragment
import io.flutter.embedding.engine.FlutterEngineCache

/**
 * An activity that displays 2 FlutterFragments vertically.
 */
class DoubleFlutterActivity : FragmentActivity(), EngineBindingsDelegate {
    private val topBindings: EngineBindings by lazy {
        EngineBindings(activity = this, delegate = this, entrypoint = "topMain")
    }
    private val bottomBindings: EngineBindings by lazy {
        EngineBindings(activity = this, delegate = this, entrypoint = "bottomMain")
    }
    private val numberOfFlutters = 2
    private val engineCountStart : Int
    private companion object {
        var engineCounter = 0
    }

    init {
        engineCountStart = engineCounter
        engineCounter += numberOfFlutters
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val root = LinearLayout(this)
        root.layoutParams = LinearLayout.LayoutParams(
            LinearLayout.LayoutParams.MATCH_PARENT,
            LinearLayout.LayoutParams.MATCH_PARENT
        )
        root.orientation = LinearLayout.VERTICAL
        root.weightSum = numberOfFlutters.toFloat()

        val fragmentManager: FragmentManager = supportFragmentManager

        setContentView(root)

        for (i in 0 until numberOfFlutters) {
            val engineId = engineCountStart + i
            val containerId = 12345 + engineId
            val flutterContainer = FrameLayout(this)
            root.addView(flutterContainer)
            flutterContainer.id = containerId
            flutterContainer.layoutParams = LinearLayout.LayoutParams(
                FrameLayout.LayoutParams.MATCH_PARENT,
                FrameLayout.LayoutParams.MATCH_PARENT,
                1.0f
            )
            val engine = if (i == 0) topBindings.engine else bottomBindings.engine
            FlutterEngineCache.getInstance().put(engineId.toString(), engine)
            val flutterFragment =
                FlutterFragment.withCachedEngine(engineId.toString()).build<FlutterFragment>()
            fragmentManager
                .beginTransaction()
                .add(
                        containerId,
                        flutterFragment
                )
                .commit()
        }

        topBindings.attach()
        bottomBindings.attach()
    }

    override fun onDestroy() {
        for (i in 0 until numberOfFlutters) {
            val engineId = engineCountStart + i
            FlutterEngineCache.getInstance().remove(engineId.toString())
        }

        super.onDestroy()

        bottomBindings.detach()
        topBindings.detach()
    }

    override fun onNext() {
        val flutterIntent = Intent(this, MainActivity::class.java)
        startActivity(flutterIntent)
    }
}
