// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';

import 'event_task.dart';

class TaskRow extends StatefulWidget {
  final EventTask task;
  final bool isEditing;
  const TaskRow({super.key, required this.task, required this.isEditing});

  @override
  State<TaskRow> createState() => _TaskRowState();
}

class _TaskRowState extends State<TaskRow> {
  final _taskText = TextEditingController();

  @override
  void initState() {
    _taskText.text = widget.task.text;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CupertinoButton(
          onPressed:
              widget.isEditing
                  ? () {
                    setState(() {
                      widget.task.isCompleted = !widget.task.isCompleted;
                    });
                  }
                  : null,
          child: Icon(
            widget.task.isCompleted
                ? CupertinoIcons.checkmark_circle_fill
                : CupertinoIcons.circle,
            color: CupertinoColors.black,
          ),
        ),
        Expanded(
          child:
              widget.isEditing
                  ? CupertinoTextField(
                    decoration: null,
                    padding: EdgeInsets.zero,
                    controller: _taskText,
                    onChanged: (value) => widget.task.text = value,
                  )
                  : Text(widget.task.text),
        ),
      ],
    );
  }
}
