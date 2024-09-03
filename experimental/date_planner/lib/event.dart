// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

import 'color_options.dart';
import 'event_task.dart';

class Event implements Comparable<Event> {
  static const _uuid = Uuid();

  final id = _uuid.v4();
  String title;
  ColorOptions color;
  IconData icon;
  List<EventTask> tasks;
  DateTime date;

  Event({
    required this.title,
    ColorOptions? color,
    this.icon = CupertinoIcons.add,
    List<EventTask>? tasks,
    DateTime? date,
  })  : color = color ?? ColorOptions.random(),
        tasks = tasks ?? [EventTask(text: '')],
        date = date ?? DateTime.now();

  Event copy() {
    return Event(
      title: title,
      color: color,
      icon: icon,
      tasks: tasks,
      date: date,
    );
  }

  updateWith(Event e) {
    title = e.title;
    color = e.color;
    icon = e.icon;
    tasks = e.tasks;
    date = e.date;
  }

  int get remainingTaskCount => tasks.where((e) => !e.isCompleted).length;

  bool get isComplete => remainingTaskCount == 0;

  bool get isPast => DateTime.now().isAfter(date);

  bool get isWithinSevenDays => !isPast && date.isBefore(FromNow.sevenDays);

  bool get isWithinSevenToThirtyDays =>
      !isPast && !isWithinSevenDays && date.isBefore(FromNow.thirtyDays);

  bool get isDistant => date.isAfter(FromNow.thirtyDays);

  String get dateFormated => '${DateFormat.yMMMd().format(date)} at '
      '${DateFormat.Hm().format(date)}';

  @override
  int compareTo(Event other) => date.compareTo(other.date);
}

class FromNow {
  static DateTime get sevenDays => DateTime.now().add(const Duration(days: 7));

  static DateTime get thirtyDays =>
      DateTime.now().add(const Duration(days: 30));

  static DateTime roundedHours(int hours) {
    final date = DateTime.now().add(Duration(hours: hours));
    return DateTime(date.year, date.month, date.day, date.hour);
  }
}
