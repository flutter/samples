// Copyright 2023 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import '../page_content/pages_flow.dart';
import '../styles.dart';

class LightboxedPanel extends StatefulWidget {
  final PageConfig pageConfig;
  final List<Widget> content;
  final double width = 300;
  final Function? onDismiss;
  final bool fadeOnDismiss;
  final int? autoDismissAfter;
  final bool buildButton;
  final Color lightBoxBgColor;
  final Color cardBgColor;

  const LightboxedPanel({
    super.key,
    required this.pageConfig,
    required this.content,
    this.onDismiss,
    this.fadeOnDismiss = true,
    this.autoDismissAfter,
    this.buildButton = true,
    this.lightBoxBgColor = const Color.fromARGB(200, 255, 255, 255),
    this.cardBgColor = Colors.white,
  });

  @override
  State<LightboxedPanel> createState() => _LightboxedPanelState();
}

class _LightboxedPanelState extends State<LightboxedPanel> {
  bool _fading = false;
  bool _show = true;
  late int _fadeOutDur = 200;

  @override
  void initState() {
    _fadeOutDur = widget.fadeOnDismiss ? _fadeOutDur : 0;
    if (null != widget.autoDismissAfter) {
      _fadeOutDur = 0;
      Future.delayed(
        Duration(milliseconds: widget.autoDismissAfter!),
        handleDismiss,
      );
    }
    super.initState();
  }

  void handleDismiss() {
    if (widget.fadeOnDismiss) {
      setState(() {
        _fading = true;
      });
    }
    Future.delayed(Duration(milliseconds: _fadeOutDur), () {
      setState(() {
        if (widget.fadeOnDismiss) {
          _show = false;
        }
        if (null != widget.onDismiss) {
          widget.onDismiss!();
        }
      });
    });
  }

  List<Widget> buttonComponents() {
    return [
      Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          TextButton(
            onPressed: handleDismiss,
            style: ButtonStyles.style(),
            child: Text(
              'OK',
              style: TextStyles.bodyStyle()
                  .copyWith(color: Colors.white, height: 1.2),
            ),
          ),
        ],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    if (_show) {
      return AnimatedOpacity(
        opacity: _fading ? 0 : 1,
        curve: Curves.easeOut,
        duration: Duration(milliseconds: _fadeOutDur),
        child: DecoratedBox(
          decoration: BoxDecoration(color: widget.lightBoxBgColor),
          child: Center(
            child: SizedBox(
              width: widget.width,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: widget.cardBgColor,
                  border: Border.all(
                    color: const Color.fromARGB(255, 200, 200, 200),
                    width: 1.0,
                  ),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(30, 0, 0, 0),
                        offset: Offset.zero,
                        blurRadius: 4.0,
                        spreadRadius: 2.0),
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: widget.content +
                        (widget.buildButton ? buttonComponents() : []),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }
    return const SizedBox(
      width: 0,
      height: 0,
    );
  }
}
