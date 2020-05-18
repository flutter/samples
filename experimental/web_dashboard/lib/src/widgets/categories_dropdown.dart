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

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Category>>(
      future: widget.api.list(),
      builder: (context, futureSnapshot) {
        // Show an empty dropdown while the data is loading
        if (!futureSnapshot.hasData) {
          return DropdownButton<Category>(items: [], onChanged: null);
        }

        // Select the first item in the dropdown if this is the first snapshot.
        if (_selected == null && futureSnapshot.data.isNotEmpty) {

            _setSelected(futureSnapshot.data.first);
        }

        return StreamBuilder<List<Category>>(
          initialData: futureSnapshot.hasData ? futureSnapshot.data : [],
          stream: widget.api.subscribe(),
          builder: (context, snapshot) {
            var data = snapshot.hasData ? snapshot.data : <Category>[];

            // Select the first element if the new list doesn't contain the
            // selected value,
            if (!snapshot.data.contains(_selected) &&
                snapshot.data.isNotEmpty) {
                _setSelected(snapshot.data.first);
            }
            return DropdownButton<Category>(
              value: _selected,
              items: data.map(_buildDropdownItem).toList(),
              onChanged: (category) {
                setState(() {
                  _setSelected(category);
                });
              },
            );
          },
        );
      },
    );
  }

  void _setSelected(Category category) {
    if (_selected == category) {
      return;
    }
    _selected = category;

    // Avoid invoking this callback during a build() because 1. calling setState
    // during a build is an error, and 2. any widgets listening could be calling
    // setState(). This can happen if the data is immediately returned by the
    // FutureBuilder or StreamBuilder.
    Future(() {
      widget.onSelected(_selected);
    });
  }

  DropdownMenuItem<Category> _buildDropdownItem(Category category) {
    return DropdownMenuItem<Category>(
        child: Text(category.name), value: category);
  }
}
