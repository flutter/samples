// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:web_dashboard/src/api/api.dart';

/// Subscribes to the latest list of categories and allows the user to select
/// one.
class CategoryDropdown extends StatefulWidget {
  final CategoryApi api;
  final ValueChanged<Category> onSelected;

  CategoryDropdown({
    @required this.api,
    @required this.onSelected,
  });

  @override
  _CategoryDropdownState createState() => _CategoryDropdownState();
}

class _CategoryDropdownState extends State<CategoryDropdown> {
  Category _selected;
  List<Category> _categories = [];
  StreamSubscription _subscription;

  void initState() {
    super.initState();
    _fetch();
    _subscription = widget.api.stream().listen((categories) {
      setState(() {
        _categories = categories;
      });
    });
  }

  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  Future _fetch() async {
    var categories = await widget.api.list();

    if (categories.isEmpty) {
      return;
    }

    setState(() {
      _categories = categories;
    });

    // Select the first category.
    _selected = categories.first;
    widget.onSelected(categories.first);
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: _selected,
      items: _categories
          .map((i) => DropdownMenuItem<Category>(child: Text(i.name), value: i))
          .toList(),
      onChanged: (category) {
        setState(() {
          _selected = category;
        });

        widget.onSelected(category);
      },
    );
  }
}
