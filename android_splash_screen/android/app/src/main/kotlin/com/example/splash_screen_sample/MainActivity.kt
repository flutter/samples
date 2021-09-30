package com.example.splash_screen_sample

import androidx.core.view.WindowCompat
import io.flutter.embedding.android.FlutterActivity
import android.animation.AnimatorSet
import android.animation.ObjectAnimator
import android.animation.ValueAnimator
import android.os.Bundle
import android.transition.AutoTransition
import android.transition.TransitionManager
import android.view.View
import android.view.animation.AccelerateDecelerateInterpolator
import android.widget.FrameLayout
import androidx.constraintlayout.widget.ConstraintLayout
import androidx.constraintlayout.widget.ConstraintSet
import androidx.core.animation.doOnEnd
import androidx.core.splashscreen.SplashScreen.Companion.installSplashScreen
import androidx.core.splashscreen.SplashScreenViewProvider
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat
import androidx.core.view.postDelayed
import androidx.interpolator.view.animation.FastOutLinearInInterpolator
import android.transition.Transition
import android.animation.Animator


class MainActivity : FlutterActivity() {

  var flutterUIReady : Boolean = false
  var initialAnimationFinished : Boolean = false

  override fun onCreate(savedInstanceState: Bundle?) {

    super.onCreate(savedInstanceState)

    // This activity will be handling the splash screen transition
    val splashScreen = installSplashScreen()

    // The splashscreen goes edge to edge, so for a smooth transition to our app, we also
    // want to draw edge to edge.
    WindowCompat.setDecorFitsSystemWindows(window, false)
    val insetsController = WindowCompat.getInsetsController(window, window.decorView)
    insetsController?.isAppearanceLightNavigationBars = true
    insetsController?.isAppearanceLightStatusBars = true


    // The content view needs to set before calling setOnExitAnimationListener
    // to ensure that the SplashScreenView is attach to the right view root.
    val rootLayout= findViewById(android.R.id.content) as FrameLayout
    View.inflate(this, R.layout.main_activity_2, rootLayout)


    ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.container)) { v, i ->
      val insets = i.getInsets(WindowInsetsCompat.Type.systemBars())
      v.setPadding(insets.left, insets.top, insets.right, insets.bottom)
      i.inset(insets)
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
   * Hides the splash screen only when the entire animation has finished and the Flutter UI is ready to display
   */
  private fun hideSplashScreenAnimation(){
    val splashView = findViewById(R.id.container) as ConstraintLayout
    splashView
      .animate()
      .alpha(0.0f)
      .setDuration(SPLASHSCREEN_FINAL_ANIMATION_ALPHA_ANIMATION_DURATION)
      .setListener(
        object: Animator.AnimatorListener {
          override fun onAnimationStart(animation: Animator) {}
          override fun onAnimationEnd(animation: Animator) {}
          override fun onAnimationCancel(animation: Animator) {}
          override fun onAnimationRepeat(animation: Animator) {}
        })
  }

  /**
   * Handles the transition from the splash screen to the application
   */
  private fun onSplashScreenExit(splashScreenViewProvider: SplashScreenViewProvider) {
    val accelerateInterpolator = FastOutLinearInInterpolator()
    val splashScreenView = splashScreenViewProvider.view
    val iconView = splashScreenViewProvider.iconView

    // We'll change the alpha of the main view
    val alpha = ValueAnimator.ofInt(255, 0)
    alpha.duration = SPLASHSCREEN_ALPHA_ANIMATION_DURATION.toLong()
    alpha.interpolator = accelerateInterpolator

    // And we translate the icon down
    val translationY = ObjectAnimator.ofFloat(
      iconView,
      View.TRANSLATION_Y,
      iconView.translationY,
      splashScreenView.height.toFloat()
    )
    translationY.duration = SPLASHSCREEN_TY_ANIMATION_DURATION.toLong()
    translationY.interpolator = accelerateInterpolator

    // And we play all of the animation together
    val animatorSet = AnimatorSet()
    animatorSet.playTogether(alpha)


    val root = findViewById<ConstraintLayout>(R.id.container)
    val set1 = ConstraintSet().apply {
      clone(this@MainActivity, R.layout.main_activity)
    }
    set1.applyTo(root)
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

    val function: (ValueAnimator) -> Unit = { i ->
      if (!transitionStarted && i.animatedFraction > 0.5) {
        transitionStarted = true

        TransitionManager.beginDelayedTransition(root, autoTransition)
        iconView.visibility = View.GONE
        set2.applyTo(root)
      }
      splashScreenView.background.alpha = i.animatedValue as Int
    }
    alpha.addUpdateListener(function)

    // Once the application is finished, we remove the splash screen from our view
    // hierarchy.
    animatorSet.doOnEnd {
      splashScreenViewProvider.remove()
    }

    waitForAnimatedIconToFinish(
      splashScreenViewProvider,
      splashScreenView
    ) { animatorSet.start() }

  }

  /**
   * Wait until the AVD animation is finished before starting the splash screen dismiss animation
   */
  private fun SplashScreenViewProvider.remainingAnimationDuration() = iconAnimationStartMillis +
    iconAnimationDurationMillis - System.currentTimeMillis()

  private fun waitForAnimatedIconToFinish(
    splashScreenViewProvider: SplashScreenViewProvider,
    view: View,
    onAnimationFinished: () -> Unit
  ) {
    // If we want to wait for our Animated Vector Drawable to finish animating, we can compute
    // the remaining time to delay the start of the exit animation
    val delayMillis: Long =
      if (WAIT_FOR_AVD_TO_FINISH) splashScreenViewProvider.remainingAnimationDuration() else 0
    view.postDelayed(delayMillis, onAnimationFinished)
  }

  private companion object {
    const val SPLASHSCREEN_ALPHA_ANIMATION_DURATION = 500
    const val SPLASHSCREEN_TY_ANIMATION_DURATION = 500
    const val SPLASHSCREEN_FINAL_ANIMATION_ALPHA_ANIMATION_DURATION = 250 as Long
    const val WAIT_FOR_AVD_TO_FINISH = false
  }
}