// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package dev.flutter.example.androidfullscreen

import androidx.test.core.app.ActivityScenario
import androidx.test.espresso.Espresso.onView
import androidx.test.espresso.flutter.EspressoFlutter.onFlutterWidget
import androidx.test.espresso.flutter.action.FlutterActions.click
import androidx.test.espresso.flutter.assertion.FlutterAssertions.matches
import androidx.test.espresso.flutter.matcher.FlutterMatchers
import androidx.test.espresso.flutter.matcher.FlutterMatchers.withText
import androidx.test.espresso.matcher.ViewMatchers.withId
import androidx.test.ext.junit.runners.AndroidJUnit4
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class MainActivityTest {
    @Before
    fun setUp() {
        ActivityScenario.launch(MainActivity::class.java)
    }

    @Test
    fun flutterTextUpdatesOnClick() {
        // Launch Flutter module.
        onView(withId(R.id.launch_button)).perform(androidx.test.espresso.action.ViewActions.click())

        // Verify state is inited correctly.
        onFlutterWidget(withText("Taps: 0"))
            .check(matches(FlutterMatchers.isExisting()))

        // Verify the increment button works.
        onFlutterWidget(withText("Tap me!")).perform(click())
        onFlutterWidget(withText("Taps: 1"))
            .check(matches(FlutterMatchers.isExisting()))
    }

    @Test
    fun nativeTextViewUpdatesOnClick() {
        // Verify Android TextView is inited correctly.
        onView(withId(R.id.counter_label)).check(
            androidx.test.espresso.assertion.ViewAssertions.matches(
                // TODO(redbrogdon): This should be a check for 0 rather than 1. Because our state
                // management is hardcoded into the Application object, though, and that object is
                // reused across tests, this test begins with a counter already incremented by the
                // previous one. This situation can be corrected via DI or a number of other
                // approaches.
                androidx.test.espresso.matcher.ViewMatchers.withText("Current count: 1")
            )
        )

        // Launch Flutter module.
        onView(withId(R.id.launch_button)).perform(androidx.test.espresso.action.ViewActions.click())

        // Increment count.
        onFlutterWidget(withText("Tap me!")).perform(click())

        // Exit Flutter module and verify that the Android TextView is updated correctly.
        onFlutterWidget(withText("Exit this screen")).perform(click())
        onView(withId(R.id.counter_label)).check(
            androidx.test.espresso.assertion.ViewAssertions.matches(
                // TODO(redbrogdon): s/2/1
                androidx.test.espresso.matcher.ViewMatchers.withText("Current count: 2")
            )
        )
    }
}
