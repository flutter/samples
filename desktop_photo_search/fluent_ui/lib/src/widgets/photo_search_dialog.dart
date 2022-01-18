// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:fluent_ui/fluent_ui.dart';

typedef PhotoSearchDialogCallback = void Function(String searchQuery);

class PhotoSearchDialog extends StatefulWidget {
  const PhotoSearchDialog({required this.callback, Key? key}) : super(key: key);
  final PhotoSearchDialogCallback callback;
  @override
  State<PhotoSearchDialog> createState() => _PhotoSearchDialogState();
}

class _PhotoSearchDialogState extends State<PhotoSearchDialog> {
  final _controller = TextEditingController();
  bool _searchEnabled = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _searchEnabled = _controller.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ContentDialog(
        title: const Text('Photo Search'),
        content: TextBox(
          autofocus: true,
          controller: _controller,
          onSubmitted: (content) {
            if (content.isNotEmpty) {
              widget.callback(content);
              Navigator.of(context).pop();
            }
          },
        ),
        actions: [
          FilledButton(
            onPressed: _searchEnabled
                ? () {
                    widget.callback(_controller.text);
                    Navigator.of(context).pop();
                  }
                : null,
            child: const Text('Search'),
          ),
          Button(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cancel'),
          ),
        ],
      );
}
