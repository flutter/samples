// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:rolodex/data/contact_list.dart';

class ContactListsPage extends StatelessWidget {
  const ContactListsPage({super.key, required this.listId});

  final int listId;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Consumer<ContactListsModel>(
        builder: (context, contactLists, child) {
          final ContactList contacts = contactLists.findContactList(listId);
          return CustomScrollView(
            slivers: [
              CupertinoSliverNavigationBar(
                automaticallyImplyLeading: true,
                largeTitle: Text(contacts.title),
                trailing: CupertinoButton(
                  onPressed: () {},
                  child: Icon(CupertinoIcons.add),
                ),
              ),
              SliverFillRemaining(child: Center(child: Text('Contacts page'))),
            ],
          );
        },
      ),
    );
  }
}
