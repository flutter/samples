import 'package:flutter/material.dart';

import '../main.dart';

abstract class TitleScreenBase extends StatefulWidget {
  const TitleScreenBase({super.key, required this.callback});
  final ColorCallback callback;
}
