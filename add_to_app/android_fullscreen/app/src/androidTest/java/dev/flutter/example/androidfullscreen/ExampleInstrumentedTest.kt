// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package dev.flutter.example.androidfullscreen

import androidx.test.espresso.flutter.EspressoFlutter.onFlutterWidget
import androidx.test.espresso.flutter.action.FlutterActions.click
import androidx.test.espresso.flutter.action.FlutterActions.syntheticClick
import androidx.test.espresso.flutter.assertion.FlutterAssertions.matches
import androidx.test.espresso.flutter.matcher.FlutterMatchers.isDescendantOf
import androidx.test.espresso.flutter.matcher.FlutterMatchers.withText
import androidx.test.espresso.flutter.matcher.FlutterMatchers.withTooltip
import androidx.test.espresso.flutter.matcher.FlutterMatchers.withType
import androidx.test.espresso.flutter.matcher.FlutterMatchers.withValueKey
import com.google.common.truth.Truth.assertThat
import org.junit.Assert.fail

import androidx.test.core.app.ActivityScenario;
import androidx.test.espresso.flutter.EspressoFlutter.WidgetInteraction
import androidx.test.espresso.flutter.assertion.FlutterAssertions
import androidx.test.espresso.flutter.matcher.FlutterMatchers
import androidx.test.ext.junit.runners.AndroidJUnit4
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith

/** Unit tests for {@link EspressoFlutter}. */

@RunWith(AndroidJUnit4.class)
class MainActivityTest {
    @Before
    fun setUp() {
        ActivityScenario.launch(MainActivity.class)
    }

    @Test
    fun performClick() {
        onFlutterWidget(withTooltip("Increment")).perform(click())
        onFlutterWidget(withValueKey("CountText")).check(matches(withText("Button tapped 1 time.")))
    }
}