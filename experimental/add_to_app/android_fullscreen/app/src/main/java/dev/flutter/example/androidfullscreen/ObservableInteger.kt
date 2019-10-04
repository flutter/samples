// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package dev.flutter.example.androidfullscreen

import java.util.Observable

class ObservableInteger : Observable() {
    var value: Int = 0
        set(value) {
            field = value
            this.setChanged()
            this.notifyObservers(value)
        }
}