// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file

import 'dart:html';

class Carousel {
  final bool withArrowKeyControl;

  final Element container = querySelector('.slider-container');
  final List<Element> slides = querySelectorAll('.slider-single');

  int currentSlideIndex, lastSlideIndex;

  Element prevSlide, currentSlide, nextSlide;

  Carousel.init({this.withArrowKeyControl = false}) {
    lastSlideIndex = slides.length - 1;
    currentSlideIndex = -1;

    _hideSlides();
    _initBullets();
    _initArrows();

    if (withArrowKeyControl) {
      _initArrowKeyControl();
    }

    // Move to the first slide after init
    // This is responsible for creating a smooth animation
    Future.delayed(Duration(milliseconds: 500)).then((value) => _slideRight());
  }

  void _hideSlides() {
    slides.forEach((s) {
      s.classes.add('next-hidden');
    });
  }

  void _initBullets() {
    final bulletContainer = DivElement();
    bulletContainer.classes.add('bullet-container');

    for (var i = 0; i < slides.length; i++) {
      final bullet = DivElement();
      bullet.classes.add('bullet');
      bullet.id = 'bullet-index-$i';
      bullet.onClick.listen((e) => _goToIndexSlide(i));
      bulletContainer.append(bullet);
    }

    container.append(bulletContainer);
  }

  void _initArrows() {
    final prevArrow = AnchorElement();
    final iPrev = DivElement();
    iPrev.classes.addAll(['fa', 'fa-chevron-left', 'fa-lg']);
    prevArrow.classes.add('slider-left');
    prevArrow.append(iPrev);
    prevArrow.onClick.listen((e) => _slideLeft());

    final nextArrow = AnchorElement();
    final iNext = DivElement();
    iNext.classes.addAll(['fa', 'fa-chevron-right', 'fa-lg']);
    nextArrow.classes.add('slider-right');
    nextArrow.append(iNext);
    nextArrow.onClick.listen((e) => _slideRight());

    container.append(prevArrow);
    container.append(nextArrow);
  }

  void _updateBullets() {
    final bullets =
        querySelector('.bullet-container').querySelectorAll('.bullet');
    for (var i = 0; i < bullets.length; i++) {
      bullets[i].classes.remove('active');
      if (i == currentSlideIndex) {
        bullets[i].classes.add('active');
      }
    }
    _checkRepeat();
  }

  void _checkRepeat() {
    var prevArrow = querySelector('.slider-left');
    var nextArrow = querySelector('.slider-right');

    if (currentSlideIndex == slides.length - 1) {
      slides[0].classes.add('hidden');
      slides[slides.length - 1].classes.remove('hidden');
      prevArrow.classes.remove('hidden');
      nextArrow.classes.add('hidden');
    } else if (currentSlideIndex == 0) {
      slides[slides.length - 1].classes.add('hidden');
      slides[0].classes.remove('hidden');
      prevArrow.classes.add('hidden');
      nextArrow.classes.remove('hidden');
    } else {
      slides[slides.length - 1].classes.remove('hidden');
      slides[0].classes.remove('hidden');
      prevArrow.classes.remove('hidden');
      nextArrow.classes.remove('hidden');
    }
  }

  void _slideRight() {
    if (currentSlideIndex < lastSlideIndex) {
      currentSlideIndex++;
    } else {
      currentSlideIndex = 0;
    }

    if (currentSlideIndex > 0) {
      prevSlide = slides[currentSlideIndex - 1];
    } else {
      prevSlide = slides[lastSlideIndex];
    }

    currentSlide = slides[currentSlideIndex];

    if (currentSlideIndex < lastSlideIndex) {
      nextSlide = slides[currentSlideIndex + 1];
    } else {
      nextSlide = slides[0];
    }

    slides.forEach((e) {
      _removeSlideClasses([e]);
      if (e.classes.contains('prev-hidden')) e.classes.add('next-hidden');
      if (e.classes.contains('prev')) e.classes.add('prev-hidden');
    });

    _removeSlideClasses([prevSlide, currentSlide, nextSlide]);

    prevSlide.classes.add('prev');
    currentSlide.classes.add('active');
    nextSlide.classes.add('next');

    _updateBullets();
  }

  void _slideLeft() {
    if (currentSlideIndex > 0) {
      currentSlideIndex--;
    } else {
      currentSlideIndex = lastSlideIndex;
    }

    if (currentSlideIndex < lastSlideIndex) {
      nextSlide = slides[currentSlideIndex + 1];
    } else {
      nextSlide = slides[0];
    }

    currentSlide = slides[currentSlideIndex];

    if (currentSlideIndex > 0) {
      prevSlide = slides[currentSlideIndex - 1];
    } else {
      prevSlide = slides[lastSlideIndex];
    }

    slides.forEach((e) {
      _removeSlideClasses([e]);
      if (e.classes.contains('next')) e.classes.add('next-hidden');
      if (e.classes.contains('next-hidden')) e.classes.add('prev-hidden');
    });

    _removeSlideClasses([prevSlide, currentSlide, nextSlide]);

    prevSlide.classes.add('prev');
    currentSlide.classes.add('active');
    nextSlide.classes.add('next');

    _updateBullets();
  }

  void _goToIndexSlide(index) {
    final sliding =
        (currentSlideIndex < index) ? () => _slideRight() : () => _slideLeft();
    while (currentSlideIndex != index) {
      sliding();
    }
  }

  void _removeSlideClasses(List<Element> slides) {
    slides.forEach((s) {
      s.classes
          .removeAll(['prev-hidden', 'prev', 'active', 'next', 'next-hidden']);
    });
  }

  void _initArrowKeyControl() {
    Element.keyUpEvent.forTarget(document.body).listen((e) {
      if (e.keyCode == KeyCode.LEFT && currentSlideIndex > 0) {
        _slideLeft();
      }
      if (e.keyCode == KeyCode.RIGHT && currentSlideIndex < lastSlideIndex) {
        _slideRight();
      }
    });
  }
}
