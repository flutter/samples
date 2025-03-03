// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'data/contact_group.dart';
import 'screens/contacts.dart';
import 'screens/contact_groups.dart';

void main() {
  runApp(const RolodexApp());
}

class RolodexApp extends StatelessWidget {
  const RolodexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ContactGroupsModel(),
      child: CupertinoApp(
        title: 'Rolodex',
        theme: CupertinoThemeData(
          barBackgroundColor: CupertinoDynamicColor.withBrightness(
            color: Color(0xFFF9F9F9),
            darkColor: Color(0xFF1D1D1D),
          ),
        ),
        initialRoute: '/contacts',
        onGenerateInitialRoutes: (initialRoute) {
          return [
            CupertinoPageRoute(
              title: 'Lists',
              builder: (BuildContext context) {
                return ContactGroupsPage();
              },
            ),
            CupertinoPageRoute(
              builder: (BuildContext context) {
                return ContactListsPage(listId: 0);
              },
            ),
          ];
        },
        onUnknownRoute: (RouteSettings settings) {
          return CupertinoPageRoute(
            builder: (BuildContext context) {
              return const CupertinoPageScaffold(
                child: Center(child: Text('Unknown Route')),
              );
            },
          );
        },
      ),
    );
  }
}
