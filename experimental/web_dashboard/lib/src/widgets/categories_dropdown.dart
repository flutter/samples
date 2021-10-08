// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:flutter/material.dart';
import '../api/api.dart';

/// Subscribes to the latest list of categories and allows the user to select
/// one.
class CategoryDropdown extends StatefulWidget {
  final CategoryApi api;
  final ValueChanged<Category?> onSelected;

  const CategoryDropdown({
    required this.api,
    required this.onSelected,
    Key? key,
  }) : super(key: key);

  @override
  _CategoryDropdownState createState() => _CategoryDropdownState();
}

class _CategoryDropdownState extends State<CategoryDropdown> {
  Category? _selected;
  Future<List<Category>>? _future;
  Stream<List<Category>>? _stream;

  @override
  void initState() {
    super.initState();

    // This widget needs to wait for the list of Categories, select the first
    // Category, and emit an `onSelected` event.
    //
    // This could be done inside the FutureBuilder's `builder` callback,
    // but calling setState() during the build is an error. (Calling the
    // onSelected callback will also cause the parent widget to call
    // setState()).
    //
    // Instead, we'll create a new Future that sets the selected Category and
    // calls `onSelected` if necessary. Then, we'll pass *that* future to
    // FutureBuilder. Now the selected category is set and events are emitted
    // *before* the build is triggered by the FutureBuilder.
    _future = widget.api.list().then((categories) {
      if (categories.isEmpty) {
        return categories;
      }

      _setSelected(categories.first);
      return categories;
    });

    // Same here, we'll create a new stream that handles any potential
    // setState() operations before we trigger our StreamBuilder.
    _stream = widget.api.subscribe().map((categories) {
      if (!categories.contains(_selected) && categories.isNotEmpty) {
        _setSelected(categories.first);
      }

      return categories;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Category>>(
      future: _future,
      builder: (context, futureSnapshot) {
        // Show an empty dropdown while the data is loading.
        if (!futureSnapshot.hasData) {
          return DropdownButton<Category>(items: const [], onChanged: null);
        }

        return StreamBuilder<List<Category>>(
          initialData: futureSnapshot.hasData ? futureSnapshot.data : [],
          stream: _stream,
          builder: (context, snapshot) {
            var data = snapshot.hasData ? snapshot.data! : <Category>[];
            return DropdownButton<Category>(
              value: _selected,
              items: data.map(_buildDropdownItem).toList(),
              onChanged: (category) {
                _setSelected(category);
              },
            );
          },
        );
      },
    );
  }

  void _setSelected(Category? category) {
    if (_selected == category) {
      return;
    }
    setState(() {
      _selected = category;
    });

    widget.onSelected(_selected);
  }

  DropdownMenuItem<Category> _buildDropdownItem(Category category) {
    return DropdownMenuItem<Category>(
        child: Text(category.name), value: category);
  }
}
