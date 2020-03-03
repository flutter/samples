// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:web_dashboard/src/api/api.dart';

class ItemDetailsPage extends StatelessWidget {
  final Item item;

  ItemDetailsPage(this.item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('${item.name}'),
      ),
    );
  }
}
