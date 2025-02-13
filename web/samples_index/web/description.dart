// TODO(kevmoo): https://github.com/flutter/samples/issues/2582
// ignore: deprecated_member_use
import 'dart:html';

import 'package:mdc_web/mdc_web.dart';
import 'package:samples_index/src/carousel.dart';

void main() {
  querySelectorAll('.mdc-card__primary-action').forEach((el) => MDCRipple(el));

  // Initialize carousel
  // This carousel will use the div slider-container as the base
  // withArrowKeyControl is used to listen for arrow key up events
  Carousel.init(withArrowKeyControl: true);
}
