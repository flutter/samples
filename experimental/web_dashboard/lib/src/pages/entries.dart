import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_dashboard/src/api/api.dart';
import 'package:intl/intl.dart' as intl;
import 'package:web_dashboard/src/widgets/edit_entry.dart';
import 'package:web_dashboard/src/widgets/categories_dropdown.dart';

import '../app.dart';

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
              ? CircularProgressIndicator()
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
  StreamSubscription _subscription;
  List<Entry> _entries = [];

  void initState() {
    super.initState();
    _fetchEntries();
  }

  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  void didUpdateWidget(EntriesList oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.category == widget.category) {
      return;
    }

    _fetchEntries();
  }

  Future _fetchEntries() async {
    if (widget.category == null) {
      return;
    }

    widget.api.list(widget.category.id).then((entries) {
      _setEntries(entries);
    });

    _subscription?.cancel();
    _subscription =
        widget.api.stream(widget.category.id).listen((entries) {
      _setEntries(entries);
    });
  }

  void _setEntries(List<Entry> entries) {
    setState(() {
      _entries = entries..sort((a, b) => b.time.compareTo(a.time));
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return EntryTile(
          category: widget.category,
          entry: _entries[index],
        );
      },
      itemCount: _entries.length,
    );
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
              showDialog(
                  context: context,
                  child: EditEntryDialog(category: category, entry: entry));
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
                Provider.of<AppState>(context, listen: false)
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
