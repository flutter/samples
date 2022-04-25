// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

class PolicyDialog extends StatelessWidget {
  const PolicyDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContentDialog(
      title: const Text('Terms & Conditions'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text: '• ',
              style: const TextStyle(color: Colors.black, fontSize: 18),
              children: [
                TextSpan(
                  text: 'https://policies.google.com/terms',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue.normal),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      final url =
                          Uri.parse('https://policies.google.com/terms');
                      if (await url_launcher.canLaunchUrl(url)) {
                        await url_launcher.launchUrl(url);
                      }
                    },
                )
              ],
            ),
          ),
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text: '• ',
              style: const TextStyle(color: Colors.black, fontSize: 18),
              children: [
                TextSpan(
                  text: 'https://unsplash.com/terms',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue.normal),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      final url = Uri.parse('https://unsplash.com/terms');
                      if (await url_launcher.canLaunchUrl(url)) {
                        await url_launcher.launchUrl(url);
                      }
                    },
                )
              ],
            ),
          ),
        ],
      ),
      actions: [
        FilledButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Accept'),
        ),
      ],
    );
  }
}
