// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class Item {
  final Color color;

  final int price;

  final String name;

  Item({
    required this.color,
    required this.name,
    required this.price,
  });

  Item.loading() : this(color: Colors.grey, name: '...', price: 0);

  bool get isLoading => name == '...';
}
