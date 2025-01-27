// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'data/contact_list.dart';
import 'screens/contacts.dart';
import 'screens/lists.dart';

void main() {
  runApp(const RolodexApp());
}

class RolodexApp extends StatelessWidget {
  const RolodexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ContactListsModel(),
      child: CupertinoApp(
        title: 'Rolodex',
        initialRoute: '/contacts',
        onGenerateInitialRoutes: (initialRoute) {
          return [
            CupertinoPageRoute(
              title: 'Lists',
              builder: (BuildContext context) {
                return ListsPage();
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
