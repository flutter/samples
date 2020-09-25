import 'dart:html';

import 'package:mdc_web/mdc_web.dart';

InputElement searchInput;

void main() {
 querySelectorAll('.mdc-card__primary-action')
      .forEach((el) => MDCRipple(el));
}
