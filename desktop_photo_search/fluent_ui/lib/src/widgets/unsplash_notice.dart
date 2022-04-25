// Copyright 2022 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../unsplash_access_key.dart';

final _unsplashHomepage = Uri.parse(
    'https://unsplash.com/?utm_source=${Uri.encodeFull(unsplashAppName)}&utm_medium=referral');
final _unsplashPrivacyPolicy = Uri.parse(
    'https://unsplash.com/privacy?utm_source=${Uri.encodeFull(unsplashAppName)}&utm_medium=referral');

class UnsplashNotice extends StatefulWidget {
  const UnsplashNotice({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  State<UnsplashNotice> createState() => _UnsplashNoticeState();
}

class _UnsplashNoticeState extends State<UnsplashNotice> {
  bool noticeAccepted = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      showDialog(
          context: context,
          builder: (context) {
            return _UnsplashDialog(accepted: () {
              setState(() {
                noticeAccepted = true;
              });
            });
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}

class _UnsplashDialog extends StatelessWidget {
  const _UnsplashDialog({Key? key, required this.accepted}) : super(key: key);
  final Function accepted;

  @override
  Widget build(BuildContext context) {
    return ContentDialog(
      title: const Text('Unsplash Notice'),
      content: RichText(
        text: TextSpan(
            text: 'This is a sample desktop application provided by Google'
                ' that enables you to search ',
            style: const TextStyle(color: Colors.grey),
            children: [
              TextSpan(
                text: 'Unsplash',
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    if (!await launchUrl(_unsplashHomepage)) {
                      throw 'Could not launch $_unsplashHomepage';
                    }
                  },
                style: TextStyle(color: Colors.blue),
              ),
              const TextSpan(
                text: ' for photographs that interest you. When you search'
                    ' for and interact with photos, Unsplash will collect'
                    ' information about you and your use of the Unsplash'
                    ' services. Learn more about ',
                style: TextStyle(color: Colors.grey),
              ),
              TextSpan(
                text: 'how Unsplash collects and uses data',
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    if (!await launchUrl(_unsplashPrivacyPolicy)) {
                      throw 'Could not launch $_unsplashPrivacyPolicy';
                    }
                  },
                style: TextStyle(color: Colors.blue),
              ),
              const TextSpan(
                text: '.',
                style: TextStyle(color: Colors.grey),
              ),
            ]),
      ),
      actions: [
        Button(
            child: const Text('Got it'),
            onPressed: () {
              accepted();
              Navigator.pop(context);
            })
      ],
    );
  }
}
