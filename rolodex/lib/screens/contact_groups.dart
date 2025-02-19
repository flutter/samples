// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:rolodex/data/contact.dart';
import 'package:rolodex/data/contact_group.dart';
import 'contacts.dart';

class ContactGroupsPage extends StatelessWidget {
  const ContactGroupsPage({super.key});

  Widget _buildTrailing(List<Contact> contacts, BuildContext context) {
    final TextStyle style = CupertinoTheme.of(
      context,
    ).textTheme.textStyle.copyWith(color: CupertinoColors.systemGrey);

    return Row(
      spacing: 5,
      children: [
        Text(contacts.length.toString(), style: style),
        Icon(
          CupertinoIcons.forward,
          color: CupertinoColors.systemGrey3,
          size: 18,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.extraLightBackgroundGray,
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            padding: EdgeInsetsDirectional.only(start: 8, end: 16),
            stretch: true,
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
            child: Consumer<ContactGroupsModel>(
              builder: (context, contactLists, child) {
                const groupIcon = Icon(
                  CupertinoIcons.group,
                  weight: 900,
                  size: 32,
                );

                const pairIcon = Icon(
                  CupertinoIcons.person_2,
                  weight: 900,
                  size: 24,
                );

                return CupertinoListSection.insetGrouped(
                  header: Text('iPhone'),
                  children: [
                    for (ContactGroup contactList in contactLists.lists)
                      CupertinoListTile(
                        leading: contactList.id == 0 ? groupIcon : pairIcon,
                        leadingSize: 32,
                        leadingToTitle: 9,
                        padding: EdgeInsets.symmetric(horizontal: 13.0),
                        title: Text(contactList.label),
                        trailing: _buildTrailing(contactList.contacts, context),
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
