// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

class EventTask {
  String text;
  bool isCompleted;

  EventTask({required this.text, this.isCompleted = false});

  static List<EventTask> buildList(List<String> taskDescriptions) => [
    for (var task in taskDescriptions) EventTask(text: task),
  ];
}
