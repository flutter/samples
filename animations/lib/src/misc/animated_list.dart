// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnimatedListDemo extends StatefulWidget {
  static String routeName = '/misc/animated_list';

  @override
  _AnimatedListDemoState createState() => _AnimatedListDemoState();
}

class _AnimatedListDemoState extends State<AnimatedListDemo> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  final listData = initialListData;

  void addUser() {
    setState(() {
      var index = listData.length;
      listData.add(
        UserModel(firstName: 'New', lastName: 'Person'),
      );
      _listKey.currentState
          .insertItem(index, duration: Duration(milliseconds: 300));
    });
  }

  void deleteUser(int index) {
    setState(() {
      var user = listData.removeAt(index);
      _listKey.currentState.removeItem(
        index,
        (context, animation) {
          return FadeTransition(
            opacity:
                CurvedAnimation(parent: animation, curve: Interval(0.5, 1.0)),
            child: SizeTransition(
              sizeFactor:
                  CurvedAnimation(parent: animation, curve: Interval(0.0, 1.0)),
              axisAlignment: 0.0,
              child: _buildItem(user),
            ),
          );
        },
        duration: Duration(milliseconds: 600),
      );
    });
  }

  Widget _buildItem(UserModel user, [int index]) {
    return ListTile(
      key: ValueKey<UserModel>(user),
      title: Text(user.firstName),
      subtitle: Text(user.lastName),
      leading: CircleAvatar(
        child: Icon(Icons.person),
      ),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () => deleteUser(index),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: addUser,
          ),
        ],
      ),
      body: SafeArea(
        child: AnimatedList(
          key: _listKey,
          initialItemCount: initialListData.length,
          itemBuilder: (context, index, animation) {
            return FadeTransition(
              opacity: animation,
              child: _buildItem(listData[index], index),
            );
          },
        ),
      ),
    );
  }
}

class UserModel {
  const UserModel({this.firstName, this.lastName});

  final String firstName;
  final String lastName;
}

List<UserModel> initialListData = [
  UserModel(
    firstName: 'Govind',
    lastName: 'Dixit',
  ),
  UserModel(
    firstName: 'Greta',
    lastName: 'Stoll',
  ),
  UserModel(
    firstName: 'Monty',
    lastName: 'Carlo',
  ),
  UserModel(
    firstName: 'Petey',
    lastName: 'Cruiser',
  ),
  UserModel(
    firstName: 'Barry',
    lastName: 'Cade',
  ),
];
