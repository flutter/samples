// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Helper class to capture Flutter web app startup timing information
class FlutterWebStartupAnalyzer {
    timings;

    constructor() {
        this.timings = {};
    }

    markStart(name) {
        this.timings[name] = null;
        performance.mark('flt-' + name + '-started');
    }
    markFinished(name) {
        performance.mark('flt-' + name + '-finished');
    }
    capture(name) {
        var timingName = 'flt-' + name;
        var started = 'flt-' + name + 'started';
        try {
            var measurement = performance.measure('flt-' + name, 'flt-' + name + '-started', 'flt-' + name + '-finished');
        } catch(e) {
            // ignore errors if the mark doesn't exist
            return;
        }
        this.timings[name] = measurement.duration;
    }
    captureAll() {
        for (var [key, value] of Object.entries(this.timings)) {
            this.capture(key);
        }
        // Capture
        this.timings['load'] = performance.timing.loadEventEnd - performance.timing.domContentLoadedEventEnd;
        this.timings['domContentLoaded'] = performance.timing.domContentLoadedEventEnd - performance.timing.navigationStart;
    }

    capturePaint() {
        const entries = performance.getEntriesByType("paint");
        // Collect first-paint and first-contentful-paint entries
        entries.forEach((entry) => {
            this.timings[entry.name] = entry.startTime;
        });
    }
}
