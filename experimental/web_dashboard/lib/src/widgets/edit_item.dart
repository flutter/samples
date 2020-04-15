// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_dashboard/src/api/api.dart';
import 'package:web_dashboard/src/app.dart';

class NewItemDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text('New Item'),
      children: <Widget>[
        NewItemForm(),
      ],
    );
  }
}

class EditItemDialog extends StatelessWidget {
  final Item item;

  EditItemDialog({
    @required this.item,
  });

  @override
  Widget build(BuildContext context) {
    var api = Provider.of<AppState>(context).api;

    return SimpleDialog(
      title: Text('Edit Item'),
      children: [
        EditItemForm(
          item: item,
          onDone: (bool shouldUpdate) {
            if (shouldUpdate) {
              api.items.update(item, item.id);
            }
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

class NewItemForm extends StatefulWidget {
  @override
  _NewItemFormState createState() => _NewItemFormState();
}

class _NewItemFormState extends State<NewItemForm> {
  Item _item = Item('');

  @override
  Widget build(BuildContext context) {
    var api = Provider.of<AppState>(context).api;
    return EditItemForm(
      item: _item,
      onDone: (bool shouldInsert) {
        if (shouldInsert) {
          api.items.insert(_item);
        }
        Navigator.of(context).pop();
      },
    );
  }
}

class EditItemForm extends StatefulWidget {
  final Item item;
  final ValueChanged<bool> onDone;

  EditItemForm({
    @required this.item,
    @required this.onDone,
  });

  @override
  _EditItemFormState createState() => _EditItemFormState();
}

class _EditItemFormState extends State<EditItemForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              initialValue: widget.item.name,
              decoration: InputDecoration(
                labelText: 'Name',
              ),
              onChanged: (newValue) {
                widget.item.name = newValue;
              },
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter a name';
                }
                return null;
              },
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
          ),
        ],
      ),
    );
  }
}
