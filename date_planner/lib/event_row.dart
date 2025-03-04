// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:flutter/cupertino.dart';

import 'event.dart';

class EventRow extends StatelessWidget {
  const EventRow({super.key, required this.event, this.onTap});

  final Event event;
  final FutureOr<void> Function()? onTap;

  @override
  Widget build(BuildContext context) {
    // TODO(mit-mit): The corners of the tiles should be rounded.
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: CupertinoListTile(
        title: Text(
          event.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(event.dateFormated),
        leading: Icon(event.icon, size: 28, color: event.color.color),
        trailing: Row(
          children: [
            event.isComplete
                ? const Icon(CupertinoIcons.check_mark)
                : Text(
                  '${event.remainingTaskCount}',
                  style: const TextStyle(color: CupertinoColors.systemGrey),
                ),
            const CupertinoListTileChevron(),
          ],
        ),
        onTap: onTap,
      ),
    );
  }
}
