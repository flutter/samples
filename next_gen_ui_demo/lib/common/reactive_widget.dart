// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'ticking_builder.dart';

typedef ReactiveWidgetBuilder = Widget Function(
    BuildContext context, double time, Size bounds);

class ReactiveWidget extends StatefulWidget {
  const ReactiveWidget({
    super.key,
    required this.builder,
  });
  final ReactiveWidgetBuilder builder;
  @override
  State<ReactiveWidget> createState() => _ReactiveWidgetState();
}

class _ReactiveWidgetState extends State<ReactiveWidget> {
  @override
  Widget build(BuildContext context) {
    return TickingBuilder(
      builder: (_, time) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return widget.builder(context, time, constraints.biggest);
          },
        );
      },
    );
  }
}
