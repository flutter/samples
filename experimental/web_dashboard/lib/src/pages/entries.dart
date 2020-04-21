import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_dashboard/src/api/api.dart';
import 'package:intl/intl.dart' as intl;
import 'package:web_dashboard/src/widgets/edit_entry.dart';
import 'package:web_dashboard/src/widgets/items_dropdown.dart';

import '../app.dart';

class EntriesPage extends StatefulWidget {
  @override
  _EntriesPageState createState() => _EntriesPageState();
}

class _EntriesPageState extends State<EntriesPage> {
  Item _selectedItem;
  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<AppState>(context);
    return Column(
      children: [
        ItemsDropdown(
            api: appState.api.items,
            onSelected: (item) => setState(() => _selectedItem = item)),
        Expanded(
          child: _selectedItem == null
              ? CircularProgressIndicator()
              : EntriesList(
            item: _selectedItem,
            api: appState.api.entries,
          ),
        ),
      ],
    );
  }
}
class EntriesList extends StatefulWidget {
  final Item item;
  final EntryApi api;

  EntriesList({
    @required this.item,
    @required this.api,
  }) : super(key: ValueKey(item.id));

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

    if (oldWidget.item == widget.item) {
      return;
    }

    _fetchEntries();
  }

  Future _fetchEntries() async {
    if (widget.item == null) {
      return;
    }

    widget.api.list(widget.item.id).then((entries) {
      _setEntries(entries);
    });

    _subscription?.cancel();
    _subscription =
        widget.api.allEntriesStream(widget.item.id).listen((entries) {
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
          item: widget.item,
          entry: _entries[index],
        );
      },
      itemCount: _entries.length,
    );
  }
}

class EntryTile extends StatelessWidget {
  final Item item;
  final Entry entry;

  EntryTile({
    this.item,
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
                  child: EditEntryDialog(item: item, entry: entry));
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
                    .delete(item.id, entry.id);

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
