// Copyright 2023 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import '../components/components.dart';
import '../page_content/pages_flow.dart';
import '../styles.dart';

class PageNarrativePost extends NarrativePage {
  const PageNarrativePost({
    super.key,
    required super.pageConfig,
  });

  @override
  State<NarrativePage> createState() => _PageNarrativePostState();
}

class _PageNarrativePostState extends NarrativePageState {
  @override
  void initState() {
    panels = [
      LightboxedPanel(
        pageConfig: widget.pageConfig,
        fadeOnDismiss: false,
        buildButton: true,
        onDismiss: super.handleIntroDismiss,
        content: [
          Text(
            'Whew, we put everything back together just before the font launch.',
            style: TextStyles.bodyStyle(),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 8,
          ),
          const Image(
            image: AssetImage('assets/images/specimen-1.png'),
          ),
          Text(
            'As a reward, please enjoy the FontCo wallpapers on the next screen. Congratulations!',
            style: TextStyles.bodyStyle(),
            textAlign: TextAlign.left,
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
