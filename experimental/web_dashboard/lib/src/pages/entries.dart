import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_dashboard/src/api/api.dart';
import 'package:intl/intl.dart' as intl;
import 'package:web_dashboard/src/widgets/edit_entry.dart';

import '../app.dart';

class EntriesPage extends StatelessWidget {
  ValueChanged<Item> onItemChanged;

  EntriesPage({
    this.onItemChanged,
  });

  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<AppState>(context);
    return EntriesList(api: appState.api, onItemChanged: onItemChanged);
  }
}

class EntriesList extends StatefulWidget {
  final DashboardApi api;
  final ValueChanged<Item> onItemChanged;

  EntriesList({
    this.api,
    this.onItemChanged,
  });

  @override
  _EntriesListState createState() => _EntriesListState();
}

class _EntriesListState extends State<EntriesList> {
  List<Item> _items;
  StreamSubscription _itemSubscription;
  Item _selectedItem;
  List<Entry> _entries = [];
  StreamSubscription _entriesSubscription;

  void initState() {
    super.initState();
    _fetchItems();
    _itemSubscription = widget.api.items.allItemsStream().listen((items) {
      setState(() {
        _items = items;
      });
    });
  }

  Future _fetchItems() async {
    var items = await widget.api.items.list();

    setState(() {
      _items = items;
    });

    _selectItem(items.first, widget.api);
  }

  void dispose() {
    _itemSubscription?.cancel();
    _entriesSubscription?.cancel();
    super.dispose();
  }

  List<DropdownMenuItem<Item>> _menuItems() {
    if (_items == null) {
      return [];
    }
    var result = _items.map((i) {
      return DropdownMenuItem<Item>(child: Text(i.name), value: i);
    }).toList();

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton(
          value: _selectedItem,
          items: _menuItems(),
          onChanged: (item) {
            _selectItem(item, widget.api);
          },
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _entries.length,
            itemBuilder: (context, index) {
              return EntryTile(item: _selectedItem, entry: _entries[index]);
            },
          ),
        ),
      ],
    );
  }

  void _selectItem(Item item, DashboardApi api) {
    widget.onItemChanged(item);

    setState(() {
      _selectedItem = item;
    });

    api.entries.list(item.id).then((entries) {
      _setEntries(entries);
    });

    _entriesSubscription?.cancel();
    _entriesSubscription =
        api.entries.allEntriesStream(item.id).listen((entries) {
      _setEntries(entries);
    });
  }

  void _setEntries(List<Entry> entries) {
    setState(() {
      _entries = entries..sort((a, b) => b.time.compareTo(a.time));
    });
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
                      ));
              if (shouldDelete) {
                Provider.of<AppState>(context, listen: false)
                    .api
                    .entries
                    .delete(item.id, entry.id)
                    .then((value) => Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text('Entry deleted'),
                        )));
              }
            },
          ),
        ],
      ),
    );
  }
}
