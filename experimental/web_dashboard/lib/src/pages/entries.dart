// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart' as intl;

import '../api/api.dart';
import '../app.dart';
import '../widgets/categories_dropdown.dart';
import '../widgets/dialogs.dart';

class EntriesPage extends StatefulWidget {
  @override
  _EntriesPageState createState() => _EntriesPageState();
}

class _EntriesPageState extends State<EntriesPage> {
  Category _selected;

  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<AppState>(context);
    return Column(
      children: [
        CategoryDropdown(
            api: appState.api.categories,
            onSelected: (category) => setState(() => _selected = category)),
        Expanded(
          child: _selected == null
              ? Center(child: CircularProgressIndicator())
              : EntriesList(
                  category: _selected,
                  api: appState.api.entries,
                ),
        ),
      ],
    );
  }
}

class EntriesList extends StatefulWidget {
  final Category category;
  final EntryApi api;

  EntriesList({
    @required this.category,
    @required this.api,
  }) : super(key: ValueKey(category.id));

  @override
  _EntriesListState createState() => _EntriesListState();
}

class _EntriesListState extends State<EntriesList> {
  @override
  Widget build(BuildContext context) {
    if (widget.category == null) {
      return _buildLoadingIndicator();
    }

    return FutureBuilder<List<Entry>>(
      future: widget.api.list(widget.category.id),
      builder: (context, futureSnapshot) {
        if (!futureSnapshot.hasData) {
          return _buildLoadingIndicator();
        }
        return StreamBuilder<List<Entry>>(
          initialData: futureSnapshot.data,
          stream: widget.api.subscribe(widget.category.id),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return _buildLoadingIndicator();
            }
            return ListView.builder(
              itemBuilder: (context, index) {
                return EntryTile(
                  category: widget.category,
                  entry: snapshot.data[index],
                );
              },
              itemCount: snapshot.data.length,
            );
          },
        );
      },
    );
  }

  Widget _buildLoadingIndicator() {
    return Center(child: CircularProgressIndicator());
  }
}

class EntryTile extends StatelessWidget {
  final Category category;
  final Entry entry;

  EntryTile({
    this.category,
    this.entry,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(entry.value.toString()),
      subtitle: Text(intl.DateFormat('MM/dd/yy h:mm a').format(entry.time)),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FlatButton(
            child: Text('Edit'),
            onPressed: () {
              showDialog<void>(
                context: context,
                builder: (context) {
                  return EditEntryDialog(category: category, entry: entry);
                },
              );
            },
          ),
          FlatButton(
            child: Text('Delete'),
            onPressed: () async {
              var shouldDelete = await showDialog<bool>(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Delete entry?'),
                  actions: [
                    FlatButton(
                      child: Text('Cancel'),
                      onPressed: () => Navigator.of(context).pop(false),
                    ),
                    FlatButton(
                      child: Text('Delete'),
                      onPressed: () => Navigator.of(context).pop(true),
                    ),
                  ],
                ),
              );
              if (shouldDelete) {
                await Provider.of<AppState>(context, listen: false)
                    .api
                    .entries
                    .delete(category.id, entry.id);

                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Entry deleted'),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
