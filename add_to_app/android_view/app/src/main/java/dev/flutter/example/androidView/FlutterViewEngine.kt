// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package dev.flutter.example.androidView

import android.content.Intent
import android.util.Log
import androidx.activity.ComponentActivity
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleObserver
import androidx.lifecycle.OnLifecycleEvent
import io.flutter.embedding.android.FlutterView
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.platform.PlatformPlugin

/**
 *  This is an application specific class that exists to expose the intersection of an active
 *  activity and a visible view to a FlutterEngine.
 *
 *  <p>Omitted features:
 *  <ul>
 *  <li>State restoration. If you're integrating at the view level, you should handle activity
 *      state restoration yourself.
 *  <li>Engine creations. At this level of granularity, you must make an engine and attach.
 *      and all engine features like initial route etc must be configured on the engine yourself.
 *  <li>Splash screens. You must implement it yourself. Read from addOnFirstFrameRenderedListener
 *      as needed.
 *  <li>Transparency, surface/texture. These are just FlutterView level APIs. Set them on the
 *      FlutterView directly.
 *  <li>Intents. This doesn't do any translation of intents into actions in the FlutterEngine.
 *      you must do them yourself.
 *  <li>Back buttons. You must decide whether to send it to Flutter via
 *      FlutterEngine.getNavigationChannel.popRoute(), or consume it natively. Though that decision
 *      may be difficult due to https://github.com/flutter/flutter/issues/67011.
 *  </ul>
 */
class FlutterViewEngine(val engine: FlutterEngine) : LifecycleObserver{
    private var flutterView: FlutterView? = null
    private var activity: ComponentActivity? = null
    private var platformPlugin: PlatformPlugin? = null

    private fun hookActivityAndView() {
        Log.e("engine", "hook activity and view")
        activity!!.let { activity ->
            flutterView!!.let { flutterView ->
                platformPlugin = PlatformPlugin(activity, engine.platformChannel)

                engine.activityControlSurface.attachToActivity(activity, activity.lifecycle)
                flutterView.attachToFlutterEngine(engine)
                activity.lifecycle.addObserver(this)
            }
        }
    }

    private fun unhookActivityAndView() {
        Log.e("engine", "unhook activity and view")
        activity!!.lifecycle.removeObserver(this)
        engine.activityControlSurface.detachFromActivity()
        platformPlugin!!.destroy()
        platformPlugin = null
        engine.lifecycleChannel.appIsDetached();
        flutterView!!.detachFromFlutterEngine()
    }

    fun attachToActivity(activity: ComponentActivity) {
        this.activity = activity
        if (flutterView != null) {
            hookActivityAndView()
        }
    }

    fun detachActivity() {
        if (flutterView != null) {
            unhookActivityAndView()
        }
        activity = null
    }

    fun attachFlutterView(flutterView: FlutterView) {
        this.flutterView = flutterView
        if (activity != null) {
            hookActivityAndView()
        }
    }

    fun detachFlutterView() {
        unhookActivityAndView()
        flutterView = null
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_RESUME)
    private fun resumeActivity() {
        Log.e("engine", "resume")
        if (activity != null) {
            engine.lifecycleChannel.appIsResumed()
        }

        platformPlugin?.updateSystemUiOverlays()
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_PAUSE)
    private fun pauseActivity() {
        Log.e("engine", "pause")
        if (activity != null) {
            engine.lifecycleChannel.appIsInactive()
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    private fun stopActivity() {
        Log.e("engine", "stop")
        if (activity != null) {
            engine.lifecycleChannel.appIsPaused()
        }
    }

    fun onRequestPermissionsResult(
        requestCode: Int,
        permissions: Array<out String>,
        grantResults: IntArray
    ) {
        if (flutterView != null) {
            // You must decide whether you want Flutter to get this. The request may be triggered
            // by a plugin.
            engine
                .activityControlSurface
                .onRequestPermissionsResult(requestCode, permissions, grantResults);
        }
    }

    fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        if (flutterView != null) {
            // You must decide whether you want Flutter to get this. The request may be triggered
            // by a plugin.
            engine.activityControlSurface.onActivityResult(requestCode, resultCode, data);
        }
    }
}
