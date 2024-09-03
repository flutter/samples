// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';

import 'color_options.dart';
import 'event.dart';
import 'event_task.dart';

class EventData with ChangeNotifier {
  static final _events = buildSampleData();

  void add(Event event) {
    _events.add(event);
    notifyListeners();
  }

  void delete(Event event) {
    _events.remove(event);
    notifyListeners();
  }

  void update(Event original, Event updated) {
    _events.firstWhere((e) => e.id == original.id).updateWith(updated);
    notifyListeners();
  }

  void exists(Event event) => _events.contains(event);

  List<Event> sorted(Period period) => _events
      .where(
        (e) => switch (period) {
          Period.nextSevenDays => e.isWithinSevenDays,
          Period.nextThirtyDays => e.isWithinSevenToThirtyDays,
          Period.past => e.isPast,
          Period.future => e.isDistant,
        },
      )
      .toList()
    ..sort((e1, e2) => e1.date.compareTo(e2.date));
}

enum Period {
  nextSevenDays(name: 'Next 7 Days'),
  nextThirtyDays(name: 'Next 30 Days'),
  future(name: 'Future'),
  past(name: 'Past');

  const Period({required this.name});

  final String name;
}

List<Event> buildSampleData() {
  return [
    Event(
      title: 'Maya\'s Birthday',
      color: ColorOptions.red,
      icon: CupertinoIcons.gift,
      tasks: EventTask.buildList([
        'Guava kombucha',
        'Paper cups and plates',
        'Cheese plate',
        'Party poppers',
      ]),
      date: FromNow.roundedHours(24 * 30),
    ),
    Event(
      title: 'Pagliacci',
      color: ColorOptions.yellow,
      // TODO(mit-mit): Use the icon "theatermasks.fill".
      icon: CupertinoIcons.thermometer_snowflake,
      tasks: EventTask.buildList([
        'Buy new tux',
        'Get tickets',
        'Pick up Carmen at the airport and bring her to the show',
      ]),
      date: FromNow.roundedHours(22),
    ),
    Event(
      title: 'Doctor\'s Appointment',
      // TODO(mit-mit): Use the icon "facemask.fill".
      icon: CupertinoIcons.lab_flask_solid,
      color: ColorOptions.indigo,
      tasks:
          EventTask.buildList(['Bring medical ID', 'Record heart rate data']),
      date: FromNow.roundedHours(24 * 4),
    ),
    Event(
      title: 'Camping Trip',
      // TODO(mit-mit): Use the icon "leaf.fill".
      icon: CupertinoIcons.leaf_arrow_circlepath,
      color: ColorOptions.green,
      tasks: EventTask.buildList([
        'Find a sleeping bag',
        'Bug spray',
        'Paper towels',
        'Food for 4 meals',
        'Straw hat',
      ]),
      date: FromNow.roundedHours(36),
    ),
    Event(
      title: 'Game Night',
      icon: CupertinoIcons.gamecontroller_fill,
      color: ColorOptions.cyan,
      tasks: EventTask.buildList([
        'Find a board game to bring',
        'Bring a desert to share',
      ]),
      date: FromNow.roundedHours(24 * 2),
    ),
    Event(
      title: 'First Day of School',
      // TODO(mit-mit): Use the icon "graduationcap.fill".
      icon: CupertinoIcons.hammer,
      color: ColorOptions.primary,
      tasks: EventTask.buildList([
        'Notebooks',
        'Pencils',
        'Binder',
        'First day of school outfit',
      ]),
      date: FromNow.roundedHours(24 * 365),
    ),
    Event(
      title: 'Book Launch',
      icon: CupertinoIcons.book_fill,
      color: ColorOptions.purple,
      tasks: EventTask.buildList([
        'Finish first draft',
        'Send draft to editor',
        'Final read-through',
      ]),
      date: FromNow.roundedHours(24 * 365 * 2),
    ),
    Event(
        title: 'WWDC',
        // TODO(mit-mit): Use the icon "globe.americas.fill"
        icon: CupertinoIcons.globe,
        color: ColorOptions.gray,
        tasks: EventTask.buildList([
          'Watch Keynote',
          'Watch What\'s new in SwiftUI',
          'Go to DT developer labs',
          'Learn about Create ML',
        ]),
        date: DateTime(7, 6, 2021)),
    Event(
      title: 'Sayulita Trip',
      icon: CupertinoIcons.briefcase_fill,
      color: ColorOptions.orange,
      tasks: EventTask.buildList([
        'Buy plane tickets',
        'Get a new bathing suit',
        'Find a hotel room',
      ]),
      date: FromNow.roundedHours(24 * 19),
    ),
  ];
}
