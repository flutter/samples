// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';

import 'contact.dart';

class ContactList {
  ContactList({
    required this.id,
    required this.label,
    this.permanent = false,
    String? title,
  }) : title = title ?? label;

  final int id;

  final bool permanent;

  final String label;

  final String title;

  final List<Contact> contacts = [];
}

class ContactListsModel extends ChangeNotifier {
  final List<ContactList> _lists = generateSeedData();

  List<ContactList> get lists => _lists;

  ContactList findContactList(int id) {
    return lists[id];
  }
}

List<ContactList> generateSeedData() {
  return [
    ContactList(id: 0, permanent: true, label: 'All iPhone', title: 'iPhone'),
    ContactList(id: 1, label: 'Friends'),
    ContactList(id: 2, label: 'Work'),
  ];
}
