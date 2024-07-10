import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AppCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    // Allow to drag with mouse on Regions carousel
    PointerDeviceKind.mouse,
  };
}