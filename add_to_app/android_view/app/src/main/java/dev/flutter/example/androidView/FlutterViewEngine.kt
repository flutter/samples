// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package dev.flutter.example.androidView

import android.content.Intent
import androidx.activity.ComponentActivity
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleObserver
import androidx.lifecycle.OnLifecycleEvent
import io.flutter.embedding.android.FlutterView
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.platform.PlatformPlugin

/**
 *  This is an application-specific wrapper class that exists to expose the intersection of an
 *  application's active activity and an application's visible view to a [FlutterEngine] for
 *  rendering.
 *
 *  Omitted features from the [io.flutter.embedding.android.FlutterActivity] include:
 *   * **State restoration**. If you're integrating at the view level, you should handle activity
 *      state restoration yourself.
 *   * **Engine creations**. At this level of granularity, you must make an engine and attach.
 *      and all engine features like initial route etc must be configured on the engine yourself.
 *   * **Splash screens**. You must implement it yourself. Read from
 *     `addOnFirstFrameRenderedListener` as needed.
 *   * **Transparency, surface/texture**. These are just [FlutterView] level APIs. Set them on the
 *      [FlutterView] directly.
 *   * **Intents**. This doesn't do any translation of intents into actions in the [FlutterEngine].
 *      you must do them yourself.
 *   * **Back buttons**. You must decide whether to send it to Flutter via
 *      [FlutterEngine.getNavigationChannel.popRoute()], or consume it natively. Though that
 *      decision may be difficult due to https://github.com/flutter/flutter/issues/67011.
 *   * **Low memory signals**. You're strongly encouraged to pass the low memory signals (such
 *      as from the host `Activity`'s `onTrimMemory` callbacks) to the [FlutterEngine] to let
 *      Flutter and the Dart VM cull its own memory usage.
 *
 * Your own [FlutterView] integrating application may need a similar wrapper but you must decide on
 * what the appropriate intersection between the [FlutterView], the [FlutterEngine] and your
 * `Activity` should be for your own application.
 */
class FlutterViewEngine(val engine: FlutterEngine) : LifecycleObserver{
    private var flutterView: FlutterView? = null
    private var activity: ComponentActivity? = null
    private var platformPlugin: PlatformPlugin? = null

    /**
     * This is the intersection of an available activity and of a visible [FlutterView]. This is
     * where Flutter would start rendering.
     */
    private fun hookActivityAndView() {
        // Assert state.
        activity!!.let { activity ->
            flutterView!!.let { flutterView ->
                platformPlugin = PlatformPlugin(activity, engine.platformChannel)

                engine.activityControlSurface.attachToActivity(activity, activity.lifecycle)
                flutterView.attachToFlutterEngine(engine)
                activity.lifecycle.addObserver(this)
            }
        }
    }

    /**
     * Lost the intersection of either an available activity or a visible
     * [FlutterView].
     */
    private fun unhookActivityAndView() {
        // Stop reacting to activity events.
        activity!!.lifecycle.removeObserver(this)

        // Plugins are no longer attached to an activity.
        engine.activityControlSurface.detachFromActivity()

        // Release Flutter's control of UI such as system chrome.
        platformPlugin!!.destroy()
        platformPlugin = null

        // Set Flutter's application state to detached.
        engine.lifecycleChannel.appIsDetached();

        // Detach rendering pipeline.
        flutterView!!.detachFromFlutterEngine()
    }

    /**
     * Signal that a host `Activity` is now ready. If there is no [FlutterView] instance currently
     * attached to the view hierarchy and visible, Flutter is not yet rendering.
     *
     * You can also choose at this point whether to notify the plugins that an `Activity` is
     * attached or not. You can also choose at this point whether to connect a Flutter
     * [PlatformPlugin] at this point which allows your Dart program to trigger things like
     * haptic feedback and read the clipboard. This sample arbitrarily chooses no for both.
     */
    fun attachToActivity(activity: ComponentActivity) {
        this.activity = activity
        if (flutterView != null) {
            hookActivityAndView()
        }
    }

    /**
     * Signal that a host `Activity` now no longer connected. If there were a [FlutterView] in
     * the view hierarchy and visible at this moment, that [FlutterView] will stop rendering.
     *
     * You can also choose at this point whether to notify the plugins that an `Activity` is
     * no longer attached or not. You can also choose at this point whether to disconnect Flutter's
     * [PlatformPlugin] at this point which stops your Dart program being able to trigger things
     * like haptic feedback and read the clipboard. This sample arbitrarily chooses yes for both.
     */
    fun detachActivity() {
        if (flutterView != null) {
            unhookActivityAndView()
        }
        activity = null
    }

    /**
     * Signal that a [FlutterView] instance is created and attached to a visible Android view
     * hierarchy.
     *
     * If an `Activity` was also previously provided, this puts Flutter into the rendering state
     * for this [FlutterView]. This also connects this wrapper class to listen to the `Activity`'s
     * lifecycle to pause rendering when the activity is put into the background while the
     * view is still attached to the view hierarchy.
     */
    fun attachFlutterView(flutterView: FlutterView) {
        this.flutterView = flutterView
        if (activity != null) {
            hookActivityAndView()
        }
    }

    /**
     * Signal that the attached [FlutterView] instance destroyed or no longer attached to a visible
     * Android view hierarchy.
     *
     * If an `Activity` was attached, this stops Flutter from rendering. It also makes this wrapper
     * class stop listening to the `Activity`'s lifecycle since it's no longer rendering.
     */
    fun detachFlutterView() {
        unhookActivityAndView()
        flutterView = null
    }

    /**
     * Callback to let Flutter respond to the `Activity`'s resumed lifecycle event while both an
     * `Activity` and a [FlutterView] are attached.
     */
    @OnLifecycleEvent(Lifecycle.Event.ON_RESUME)
    private fun resumeActivity() {
        if (activity != null) {
            engine.lifecycleChannel.appIsResumed()
        }

        platformPlugin?.updateSystemUiOverlays()
    }

    /**
     * Callback to let Flutter respond to the `Activity`'s paused lifecycle event while both an
     * `Activity` and a [FlutterView] are attached.
     */
    @OnLifecycleEvent(Lifecycle.Event.ON_PAUSE)
    private fun pauseActivity() {
        if (activity != null) {
            engine.lifecycleChannel.appIsInactive()
        }
    }

    /**
     * Callback to let Flutter respond to the `Activity`'s stopped lifecycle event while both an
     * `Activity` and a [FlutterView] are attached.
     */
    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    private fun stopActivity() {
        if (activity != null) {
            engine.lifecycleChannel.appIsPaused()
        }
    }

    // These events aren't used but would be needed for Flutter plugins consuming
    // these events to function.

    /**
     * Pass through the `Activity`'s `onRequestPermissionsResult` signal to plugins that may be
     * listening to it while the `Activity` and the [FlutterView] are connected.
     */
    fun onRequestPermissionsResult(
        requestCode: Int,
        permissions: Array<out String>,
        grantResults: IntArray
    ) {
        if (activity != null && flutterView != null) {
            engine
                .activityControlSurface
                .onRequestPermissionsResult(requestCode, permissions, grantResults);
        }
    }

    /**
     * Pass through the `Activity`'s `onActivityResult` signal to plugins that may be
     * listening to it while the `Activity` and the [FlutterView] are connected.
     */
    fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        if (activity != null && flutterView != null) {
            engine.activityControlSurface.onActivityResult(requestCode, resultCode, data);
        }
    }

    /**
     * Pass through the `Activity`'s `onUserLeaveHint` signal to plugins that may be
     * listening to it while the `Activity` and the [FlutterView] are connected.
     */
    fun onUserLeaveHint() {
        if (activity != null && flutterView != null) {
            engine.activityControlSurface.onUserLeaveHint();
        }
    }
}
