// Copyright 2023 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import '../components/components.dart';
import '../page_content/pages_flow.dart';
import '../styles.dart';

class PageNarrativePre extends NarrativePage {
  const PageNarrativePre({
    super.key,
    required super.pageConfig,
  });

  @override
  State<NarrativePage> createState() => _PageNarrativePreState();
}

class _PageNarrativePreState extends NarrativePageState {
  @override
  void initState() {
    panels = [
      LightboxedPanel(
        key: UniqueKey(),
        pageConfig: widget.pageConfig,
        fadeOnDismiss: false,
        onDismiss: super.handleIntroDismiss,
        content: [
          Text(
            'Welcome to your first day on the FontCo team! Are you ready to help us publish our newest font, Designer Pro?',
            style: TextStyles.bodyStyle(),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 8,
          ),
          const Image(
            image: AssetImage('assets/images/specimen-1.png'),
          ),
        ],
      ),
      LightboxedPanel(
        key: UniqueKey(),
        pageConfig: widget.pageConfig,
        fadeOnDismiss: false,
        onDismiss: super.handleIntroDismiss,
        autoDismissAfter: 100,
        buildButton: false,
        lightBoxBgColor: Colors.black,
        cardBgColor: Colors.black,
        content: [
          Transform.scale(
            scaleX: -1,
            child: Text(
              'Welcome to your first day on the FontCo team! Are you ready to help us publish our newest font, Designer Pro?',
              style: TextStyles.bodyStyle().copyWith(color: Colors.white),
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Transform.scale(
            scaleX: -1,
            child: const Image(
              image: AssetImage('assets/images/specimen-1-glitch.png'),
            ),
          ),
          const SizedBox(
            height: 56,
          ),
        ],
      ),
      LightboxedPanel(
        key: UniqueKey(),
        pageConfig: widget.pageConfig,
        fadeOnDismiss: false,
        onDismiss: super.handleIntroDismiss,
        autoDismissAfter: 100,
        buildButton: false,
        lightBoxBgColor: Colors.black,
        cardBgColor: Colors.black,
        content: [
          Transform.scale(
            scaleX: -1,
            child: Transform.translate(
              offset: const Offset(20.0, 0.0),
              child: Text(
                'Welcome to your first day on the FontCo team! Are you ready to help us publish our newest font, Designer Pro?',
                style: TextStyles.bodyStyle().copyWith(color: Colors.white),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Transform.scale(
            scaleX: -1,
            child: Transform.translate(
              offset: const Offset(-20.0, 0.0),
              child: const Image(
                image: AssetImage('assets/images/specimen-1-glitch.png'),
              ),
            ),
          ),
          const SizedBox(
            height: 56,
          ),
        ],
      ),
      LightboxedPanel(
        key: UniqueKey(),
        pageConfig: widget.pageConfig,
        fadeOnDismiss: false,
        onDismiss: super.handleIntroDismiss,
        autoDismissAfter: 100,
        buildButton: false,
        lightBoxBgColor: Colors.black,
        cardBgColor: Colors.black,
        content: [
          Transform.scale(
            scaleX: -1,
            child: Text(
              'Welcome to your first day on the FontCo team! Are you ready to help us publish our newest font, Designer Pro?',
              style: TextStyles.bodyStyle().copyWith(color: Colors.white),
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Transform.scale(
            scaleX: -1,
            child: const Image(
              image: AssetImage('assets/images/specimen-1-glitch.png'),
            ),
          ),
          const SizedBox(
            height: 56,
          ),
        ],
      ),
      LightboxedPanel(
        key: UniqueKey(),
        pageConfig: widget.pageConfig,
        fadeOnDismiss: false,
        onDismiss: super.handleIntroDismiss,
        content: [
          Text(
            'Oh no, you clicked the button too hard! Now the font file is glitched. Help us put the letters back together so we can launch!',
            style: TextStyles.bodyStyle(),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 8,
          ),
          const Image(
            image: AssetImage('assets/images/specimen-2.png'),
          ),
        ],
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return panels[panelIndex];
  }
}
