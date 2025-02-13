// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:rolodex/data/contact_list.dart';
import 'contacts.dart';

class ListsPage extends StatelessWidget {
  const ListsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.extraLightBackgroundGray,
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            leading: CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              child: Text('Edit'),
            ),
            largeTitle: Text('Lists'),
            trailing: CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              child: Text('Add List'),
            ),
          ),
          SliverFillRemaining(
            child: Consumer<ContactListsModel>(
              builder: (context, contactLists, child) {
                return CupertinoListSection.insetGrouped(
                  header: Text('iPhone'),
                  children: [
                    for (ContactList contactList in contactLists.lists)
                      CupertinoListTile(
                        leading: Icon(
                          contactList.id == 0
                              ? CupertinoIcons.group
                              : CupertinoIcons.person_2,
                        ),
                        title: Text(contactList.label),
                        onTap:
                            () => Navigator.of(context).push(
                              CupertinoPageRoute(
                                title: contactList.title,
                                builder: (BuildContext context) {
                                  return ContactListsPage(
                                    listId: contactList.id,
                                  );
                                },
                              ),
                            ),
                      ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
