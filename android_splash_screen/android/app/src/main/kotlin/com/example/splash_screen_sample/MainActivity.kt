/*
 * Copyright (C) 2021 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
  * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.example.splash_screen_sample

import android.animation.AnimatorSet
import android.animation.ObjectAnimator
import android.animation.ValueAnimator
import android.os.Bundle
import android.transition.AutoTransition
import android.transition.Transition
import android.transition.TransitionManager
import android.view.animation.AccelerateDecelerateInterpolator
import android.view.View
import android.widget.FrameLayout
import androidx.constraintlayout.widget.ConstraintLayout
import androidx.constraintlayout.widget.ConstraintSet
import androidx.core.animation.doOnEnd
import androidx.core.splashscreen.SplashScreen.Companion.installSplashScreen
import androidx.core.splashscreen.SplashScreenViewProvider
import androidx.core.view.postDelayed
import androidx.core.view.ViewCompat
import androidx.core.view.WindowCompat
import androidx.core.view.WindowInsetsCompat
import androidx.interpolator.view.animation.FastOutLinearInInterpolator
import io.flutter.embedding.android.FlutterActivity

class MainActivity : FlutterActivity() {

  var flutterUIReady : Boolean = false
  var initialAnimationFinished : Boolean = false

  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)

    // This activity will be handling the splash screen transition.
    val splashScreen = installSplashScreen()

    // The splash screen goes edge to edge, so for a smooth transition to our app, also
    // want to draw edge to edge.
    WindowCompat.setDecorFitsSystemWindows(window, false)
    val insetsController = WindowCompat.getInsetsController(window, window.decorView)
    insetsController?.isAppearanceLightNavigationBars = true
    insetsController?.isAppearanceLightStatusBars = true

    // The content view needs to be set before calling setOnExitAnimationListener
    // to ensure that the SplashScreenView is attached to the right view root.
    val rootLayout = findViewById(android.R.id.content) as FrameLayout
    View.inflate(this, R.layout.main_activity_2, rootLayout)

    ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.container)) { view, windowInsets ->
      val insets = windowInsets.getInsets(WindowInsetsCompat.Type.systemBars())
      view.setPadding(insets.left, insets.top, insets.right, insets.bottom)
      windowInsets.inset(insets)
    }

    // Setting an OnExitAnimationListener on the splash screen indicates
    // to the system that the application will handle the exit animation.
    // The listener will be called once the app is ready.
    splashScreen.setOnExitAnimationListener { splashScreenViewProvider ->
      onSplashScreenExit(splashScreenViewProvider)
    }
  }

  override fun onFlutterUiDisplayed(){
    flutterUIReady = true

    if (initialAnimationFinished) {
      hideSplashScreenAnimation()
    }
  }

  override fun onFlutterUiNoLongerDisplayed(){
    flutterUIReady = false
  }

  /**
   * Hides the splash screen only when the entire animation has finished and the Flutter UI is ready to display.
   */
  private fun hideSplashScreenAnimation(){
    val splashView = findViewById(R.id.container) as ConstraintLayout
    splashView
      .animate()
      .alpha(0.0f)
      .setDuration(SPLASHSCREEN_FINAL_ANIMATION_ALPHA_ANIMATION_DURATION)
  }

  /**
   * Handles the transition from the splash screen to the application.
   */
  private fun onSplashScreenExit(splashScreenViewProvider: SplashScreenViewProvider) {
    val accelerateInterpolator = FastOutLinearInInterpolator()
    val splashScreenView = splashScreenViewProvider.view
    val iconView = splashScreenViewProvider.iconView

    // Change the alpha of the main view.
    val alpha = ValueAnimator.ofInt(255, 0)
    alpha.duration = SPLASHSCREEN_ALPHA_ANIMATION_DURATION
    alpha.interpolator = accelerateInterpolator

    // And translate the icon down.
    val translationY = ObjectAnimator.ofFloat(
      iconView,
      View.TRANSLATION_Y,
      iconView.translationY,
      splashScreenView.height.toFloat()
    )
    translationY.duration = SPLASHSCREEN_TY_ANIMATION_DURATION
    translationY.interpolator = accelerateInterpolator

    // And play all of the animation together.
    val animatorSet = AnimatorSet()
    animatorSet.playTogether(alpha)

    // Apply layout constraints of starting frame of animation to
    // FrameLayout's container for the TransitionManager to know
    // where to start the transition.
    val root = findViewById<ConstraintLayout>(R.id.container)
    val set1 = ConstraintSet().apply {
      clone(this@MainActivity, R.layout.main_activity)
    }
    set1.applyTo(root)

    // Retrieve layout constraints of final frame of animation
    // for TransitionManager to know where to end the transition.
    val set2 = ConstraintSet().apply {
      clone(this@MainActivity, R.layout.main_activity_2)
    }

    var transitionStarted = false
    val autoTransition = AutoTransition().apply {
      interpolator = AccelerateDecelerateInterpolator()
    }
    autoTransition.addListener(object: Transition.TransitionListener {
      override fun onTransitionEnd(transition: Transition) {
        initialAnimationFinished = true

        if (flutterUIReady) {
          hideSplashScreenAnimation()
        }
    }
      override fun onTransitionCancel(transition: Transition){}
      override fun onTransitionPause(transition: Transition) {}
      override fun onTransitionResume(transition: Transition) {}
      override fun onTransitionStart(transition: Transition) {}
    })

    val alphaUpdateListener: (ValueAnimator) -> Unit = { valueAnimator ->
      if (!transitionStarted && valueAnimator.animatedFraction > 0.5) {
        transitionStarted = true

        TransitionManager.beginDelayedTransition(root, autoTransition)
        iconView.visibility = View.GONE

        // Apply constraints of final frame of animation to
        // FrameLayout's container once the transition is in progress.
        set2.applyTo(root)
      }
      splashScreenView.background.alpha = valueAnimator.animatedValue as Int
    }
    alpha.addUpdateListener(alphaUpdateListener)

    // Once the application is finished, remove the splash screen from our view
    // hierarchy.
    animatorSet.doOnEnd {
      splashScreenViewProvider.remove()
    }

    waitForAnimatedIconToFinish(splashScreenViewProvider, splashScreenView) {
      animatorSet.start()
    }
  }

  /**
   * Wait until the AVD animation is finished before starting the splash screen dismiss animation.
   */
  private fun SplashScreenViewProvider.remainingAnimationDuration() = iconAnimationStartMillis +
    iconAnimationDurationMillis - System.currentTimeMillis()

  private fun waitForAnimatedIconToFinish(
    splashScreenViewProvider: SplashScreenViewProvider,
    view: View,
    onAnimationFinished: () -> Unit
  ) {
    // If wanting to wait for our Animated Vector Drawable to finish animating, can compute
    // the remaining time to delay the start of the exit animation.
    val delayMillis: Long =
      if (WAIT_FOR_AVD_TO_FINISH) splashScreenViewProvider.remainingAnimationDuration() else 0
    view.postDelayed(delayMillis, onAnimationFinished)
  }

  private companion object {
    const val SPLASHSCREEN_ALPHA_ANIMATION_DURATION = 500 as Long
    const val SPLASHSCREEN_TY_ANIMATION_DURATION = 500 as Long
    const val SPLASHSCREEN_FINAL_ANIMATION_ALPHA_ANIMATION_DURATION = 250 as Long
    const val WAIT_FOR_AVD_TO_FINISH = false
  }
}
