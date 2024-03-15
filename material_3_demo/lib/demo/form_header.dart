import 'package:flutter/material.dart';

class FormHeader extends AppBar {
  FormHeader({super.key, super.title});

  @override
  List<Widget>? get actions => [const SizedBox.shrink()];

  @override
  bool? get centerTitle => false;

  @override
  double? get titleSpacing => 6;

  // @override
  // Widget? get leading => const BackButton();

  @override
  Color? get backgroundColor => Colors.transparent;
}
