// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_dashboard/src/api/api.dart';
import 'package:web_dashboard/src/widgets/category_forms.dart';

import '../app.dart';
import 'edit_entry.dart';

class NewCategoryDialog extends StatelessWidget {
  const NewCategoryDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const SimpleDialog(
      title: Text('New Category'),
      children: [
        NewCategoryForm(),
      ],
    );
  }
}

class EditCategoryDialog extends StatefulWidget {
  final Category category;

  const EditCategoryDialog({
    required this.category,
    super.key,
  });

  @override
  State<EditCategoryDialog> createState() => _EditCategoryDialogState();
}

class _EditCategoryDialogState extends State<EditCategoryDialog> {
  @override
  Widget build(BuildContext context) {
    var api = Provider.of<AppState>(context).api;

    return SimpleDialog(
      title: const Text('Edit Category'),
      children: [
        EditCategoryForm(
          category: widget.category,
          onDone: (shouldUpdate) async {
            if (shouldUpdate) {
              await api!.categories
                  .update(widget.category, widget.category.id!);
            }
            if (!mounted) return;
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

class NewEntryDialog extends StatefulWidget {
  const NewEntryDialog({super.key});

  @override
  State<NewEntryDialog> createState() => _NewEntryDialogState();
}

class _NewEntryDialogState extends State<NewEntryDialog> {
  @override
  Widget build(BuildContext context) {
    return const SimpleDialog(
      title: Text('New Entry'),
      children: [
        NewEntryForm(),
      ],
    );
  }
}

class EditEntryDialog extends StatefulWidget {
  final Category? category;
  final Entry? entry;

  const EditEntryDialog({
    this.category,
    this.entry,
    super.key,
  });

  @override
  State<EditEntryDialog> createState() => _EditEntryDialogState();
}

class _EditEntryDialogState extends State<EditEntryDialog> {
  @override
  Widget build(BuildContext context) {
    var api = Provider.of<AppState>(context).api;

    return SimpleDialog(
      title: const Text('Edit Entry'),
      children: [
        EditEntryForm(
          entry: widget.entry,
          onDone: (shouldUpdate) async {
            if (shouldUpdate) {
              await api!.entries.update(
                  widget.category!.id!, widget.entry!.id!, widget.entry!);
            }
            if (!mounted) return;
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}
