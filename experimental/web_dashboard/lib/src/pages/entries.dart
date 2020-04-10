import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_dashboard/src/api/api.dart';

import '../app.dart';

class EntriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<AppState>(context);
    return EntriesList(api: appState.api);
  }
}

class EntriesList extends StatefulWidget {
  final DashboardApi api;

  EntriesList({
    this.api,
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
    _itemSubscription = widget.api.items.allItemsStream().listen((items) {
      var isFirst = false;
      if (_items == null) isFirst = true;

      setState(() {
        _items = items;
        if (isFirst) {
          _selectItem(items.first, widget.api);
        }
      });

    });
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
              return ListTile(
                title: Text(_entries[index].value.toString()),
              );
            },
          ),
        ),
      ],
    );
  }

  void _selectItem(Item item, DashboardApi api) {
    setState(() {
      _selectedItem = item;
    });

    api.entries.list(item.id).then((entries) {
      setState(() {
        _entries = entries;
      });
    });
    _entriesSubscription?.cancel();
    _entriesSubscription =
        api.entries.allEntriesStream(item.id).listen((entries) {
      setState(() {
        _entries = entries;
      });
    });
  }
}
