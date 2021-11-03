// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import 'package:provider/provider.dart';
import 'package:web_dashboard/src/api/api.dart';

import '../app.dart';
import 'categories_dropdown.dart';

class NewEntryForm extends StatefulWidget {
  const NewEntryForm({Key? key}) : super(key: key);

  @override
  _NewEntryFormState createState() => _NewEntryFormState();
}

class _NewEntryFormState extends State<NewEntryForm> {
  late Category _selected;
  final Entry _entry = Entry(0, DateTime.now());

  @override
  Widget build(BuildContext context) {
    var api = Provider.of<AppState>(context).api!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CategoryDropdown(
            api: api.categories,
            onSelected: (category) {
              if (category == null) return;
              setState(() {
                _selected = category;
              });
            },
          ),
        ),
        EditEntryForm(
          entry: _entry,
          onDone: (shouldInsert) {
            if (shouldInsert) {
              api.entries.insert(_selected.id!, _entry);
            }
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

class EditEntryForm extends StatefulWidget {
  final Entry? entry;
  final ValueChanged<bool> onDone;

  const EditEntryForm({
    required this.entry,
    required this.onDone,
    Key? key,
  }) : super(key: key);

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
            padding: const EdgeInsets.all(8),
            child: TextFormField(
              initialValue: widget.entry!.value.toString(),
              decoration: const InputDecoration(labelText: 'Value'),
              keyboardType: TextInputType.number,
              validator: (value) {
                try {
                  int.parse(value!);
                } catch (e) {
                  return "Please enter a whole number";
                }
                return null;
              },
              onChanged: (newValue) {
                widget.entry!.value = int.parse(newValue);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(intl.DateFormat('MM/dd/yyyy').format(widget.entry!.time)),
                ElevatedButton(
                  child: const Text('Edit'),
                  onPressed: () async {
                    var result = await showDatePicker(
                        context: context,
                        initialDate: widget.entry!.time,
                        firstDate:
                            DateTime.now().subtract(const Duration(days: 365)),
                        lastDate: DateTime.now());
                    if (result == null) {
                      return;
                    }
                    setState(() {
                      widget.entry!.time = result;
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
                child: ElevatedButton(
                  child: const Text('Cancel'),
                  onPressed: () {
                    widget.onDone(false);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: ElevatedButton(
                  child: const Text('OK'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
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
