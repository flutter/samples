// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

class PolicyDialog extends StatelessWidget {
  PolicyDialog({
    Key key,
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
          return Container(
            height: height / 4,
            width: width / 4,
            child: Column(
              children: [
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: 'Terms & Conditions:\n',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: '• ',
                    style: TextStyle(color: Colors.lightBlue, fontSize: 18),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'https://policies.google.com/terms',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            final url = 'https://policies.google.com/terms';
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
                    style: TextStyle(color: Colors.lightBlue, fontSize: 18),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'https://unsplash.com/terms',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            final url = 'https://unsplash.com/terms';
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
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
