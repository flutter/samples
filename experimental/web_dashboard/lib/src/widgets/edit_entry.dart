import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_dashboard/src/api/api.dart';
import 'package:intl/intl.dart' as intl;

import '../app.dart';
import 'items_dropdown.dart';

class NewEntryDialog extends StatefulWidget {
  @override
  _NewEntryDialogState createState() => _NewEntryDialogState();
}

class _NewEntryDialogState extends State<NewEntryDialog> {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text('New Entry'),
      children: [
        NewEntryForm(),
      ],
    );
  }
}

class EditEntryDialog extends StatelessWidget {
  final Item item;
  final Entry entry;

  EditEntryDialog({
    this.item,
    this.entry,
  });

  @override
  Widget build(BuildContext context) {
    var api = Provider.of<AppState>(context).api;

    return SimpleDialog(
      title: Text('Edit Entry'),
      children: [
        EditEntryForm(
          entry: entry,
          onDone: (bool shouldUpdate) {
            if (shouldUpdate) {
              api.entries.update(item.id, entry.id, entry);
            }
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}

class NewEntryForm extends StatefulWidget {
  @override
  _NewEntryFormState createState() => _NewEntryFormState();
}

class _NewEntryFormState extends State<NewEntryForm> {
  Item _selectedItem;
  Entry _entry = Entry(0, DateTime.now());

  @override
  Widget build(BuildContext context) {
    var api = Provider.of<AppState>(context).api;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ItemsDropdown(
            api: api.items,
            onSelected: (item) {
              setState(() {
                _selectedItem = item;
              });
            },
          ),
        ),
        EditEntryForm(
          entry: _entry,
          onDone: (bool shouldInsert) {
            if (shouldInsert) {
              api.entries.insert(_selectedItem.id, _entry);
            }
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

class EditEntryForm extends StatefulWidget {
  final Entry entry;
  final ValueChanged<bool> onDone;

  EditEntryForm({
    @required this.entry,
    @required this.onDone,
  });

  @override
  _EditEntryFormState createState() => _EditEntryFormState();
}

class _EditEntryFormState extends State<EditEntryForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: TextFormField(
              initialValue: widget.entry.value.toString(),
              decoration: InputDecoration(labelText: 'Value'),
              keyboardType: TextInputType.number,
              validator: (value) {
                try {
                  int.parse(value);
                } catch (e) {
                  return "Please enter a whole number";
                }
                return null;
              },
              onChanged: (newValue) {
                try {
                  widget.entry.value = int.parse(newValue);
                } on FormatException {
                  print('Entry cannot contain $newValue, Expected a number');
                }
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(intl.DateFormat('MM/dd/yyyy').format(widget.entry.time)),
                RaisedButton(
                  child: Text('Edit'),
                  onPressed: () async {
                    var result = await showDatePicker(
                        context: context,
                        initialDate: widget.entry.time,
                        firstDate: DateTime.now().subtract(Duration(days: 365)),
                        lastDate: DateTime.now());
                    if (result == null) {
                      return;
                    }
                    setState(() {
                      widget.entry.time = result;
                    });
                  },
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: RaisedButton(
                  child: Text('Cancel'),
                  onPressed: () {
                    widget.onDone(false);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: RaisedButton(
                  child: Text('OK'),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      widget.onDone(true);
                    }
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
