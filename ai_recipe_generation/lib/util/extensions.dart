import 'package:flutter/rendering.dart';

extension SliverBreakpointUtils on SliverConstraints {
  bool get isTablet => crossAxisExtent > 730 && crossAxisExtent < 1000;
  bool get isDesktop => crossAxisExtent > 1000;
  bool get isMobile => crossAxisExtent < 730;
}

extension BoxBreakpointUtils on BoxConstraints {
  bool get isTablet => maxWidth > 730 && maxWidth < 1000;
  bool get isDesktop => maxWidth > 1000;
  bool get isMobile => maxWidth < 730;
}
