// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

class PolicyDialog extends StatelessWidget {
  const PolicyDialog({
    Key? key,
    this.radius = 8,
  }) : super(key: key);

  final double radius;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      content: Builder(
        builder: (context) {
          var height = MediaQuery.of(context).size.height;
          var width = MediaQuery.of(context).size.width;
          return SizedBox(
            height: height / 4,
            width: width / 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Terms & Conditions:\n',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: '• ',
                    style: const TextStyle(color: Colors.black, fontSize: 18),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'https://policies.google.com/terms',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            const url = 'https://policies.google.com/terms';
                            if (await url_launcher.canLaunch(url)) {
                              await url_launcher.launch(url);
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
                    children: <TextSpan>[
                      TextSpan(
                        text: 'https://unsplash.com/terms',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            const url = 'https://unsplash.com/terms';
                            if (await url_launcher.canLaunch(url)) {
                              await url_launcher.launch(url);
                            }
                          },
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'CLOSE'.toUpperCase(),
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
