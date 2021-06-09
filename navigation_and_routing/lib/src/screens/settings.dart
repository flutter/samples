// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

import '../auth/auth.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
                  child: Column(
                    children: [
                      ...[
                        Text(
                          'Settings',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            BookstoreAuth.of(context).signOut();
                          },
                          child: const Text('Sign out'),
                        ),
                        Link(
                          uri: Uri.parse('/books/0'),
                          builder: (context, followLink) {
                            return TextButton(
                              child: const Text('Go directly to /books/0'),
                              onPressed: followLink,
                            );
                          },
                        ),
                        Link(
                          uri: Uri.parse('/books/0'),
                          builder: (context, followLink) {
                            return TextButton(
                              child: const Text('Go directly to /authors/0'),
                              onPressed: followLink,
                            );
                          },
                        ),
                      ].map((w) =>
                          Padding(padding: const EdgeInsets.all(8), child: w)),
                      TextButton(
                        onPressed: () => showDialog<String>(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Alert!'),
                            content: const Text('You showed a dialog'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'Cancel'),
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        ),
                        child: const Text('Show Dialog'),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
