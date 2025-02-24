// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:rolodex/data/contact.dart';
import 'package:rolodex/data/contact_group.dart';

class ContactListsPage extends StatelessWidget {
  const ContactListsPage({super.key, required this.listId});

  final int listId;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Consumer<ContactGroupsModel>(
        builder: (context, contactGroups, child) {
          final ContactGroup contactList = contactGroups.findContactList(
            listId,
          );
          final AlphabetizedContactMap contacts =
              contactList.alphabetizedContacts;
          return CustomScrollView(
            slivers: [
              CupertinoSliverNavigationBar.search(
                padding: EdgeInsetsDirectional.only(start: 8, end: 6),
                transitionBetweenRoutes: false,
                automaticallyImplyLeading: true,
                largeTitle: Text(contactList.title),
                trailing: CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  child: Icon(CupertinoIcons.add, size: 25),
                ),
                bottomMode: NavigationBarBottomMode.always,
                searchField: CupertinoSearchTextField(
                  suffixIcon: Icon(CupertinoIcons.mic_fill),
                  suffixMode: OverlayVisibilityMode.always,
                ),
              ),
              SliverList.list(
                children: [
                  SizedBox(height: 20),
                  ...contacts.keys.map(
                    (String initial) => ContactListSection(
                      lastInitial: initial,
                      contacts: contacts[initial]!,
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

// Section of contacts grouped under the first letter of their last name.
class ContactListSection extends StatelessWidget {
  const ContactListSection({
    super.key,
    required this.lastInitial,
    required this.contacts,
  });

  final String lastInitial;

  final List<Contact> contacts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
      child: Column(
        children: [
          SizedBox(height: 15),
          Align(
            alignment: AlignmentDirectional.bottomStart,
            child: Text(
              lastInitial,
              style: TextStyle(
                color: CupertinoColors.systemGrey,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          CupertinoListSection(
            backgroundColor: CupertinoColors.systemBackground,
            dividerMargin: 0,
            additionalDividerMargin: 0,
            topMargin: 4,
            children:
                contacts.map((contact) {
                  return CupertinoListTile(
                    padding: EdgeInsetsDirectional.only(start: 0.0, end: 0.0),
                    title: RichText(
                      text: TextSpan(
                        text: "${contact.firstName} ",
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          if (contact.middleName != null)
                            TextSpan(text: "${contact.middleName} "),
                          TextSpan(
                            text: contact.lastName,
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          if (contact.suffix != null)
                            TextSpan(text: " ${contact.suffix}"),
                        ],
                      ),
                    ),
                  );
                }).toList(),
          ),
        ],
      ),
    );
  }
}
