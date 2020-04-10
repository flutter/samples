// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:web_dashboard/src/api/api.dart';

import 'edit_item.dart';

class ItemChart extends StatelessWidget {
  final Item item;

  ItemChart({
    @required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("${item.name}"),
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            showDialog(
              context: context,
              child: Builder(
                builder: (context) => EditItemDialog(item: item),
              ),
            );
          },
        ),
      ],
    );
  }
}
