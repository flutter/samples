// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnimatedListDemo extends StatefulWidget {
  static String routeName = '/basics/08_animated_list';

  _AnimatedListDemoState createState() => _AnimatedListDemoState();
}

class _AnimatedListDemoState extends State<AnimatedListDemo> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();

  void addUser() {
    int index = listData.length;
    listData.add(listData[Random().nextInt(5)]);
    _listKey.currentState
        .insertItem(index, duration: Duration(milliseconds: 500));
  }

  void deleteUser(int index) {
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
  }

  Widget _buildItem(UserModel user, [int index]) {
    return ListTile(
      key: ValueKey<UserModel>(user),
      title: Text(user.firstName),
      subtitle: Text(user.lastName),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(user.profileImageUrl),
      ),
      onLongPress: index != null ? () => deleteUser(index) : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated List Demo"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.add),
          onPressed: addUser,
        ),
      ),
      body: SafeArea(
        child: AnimatedList(
          key: _listKey,
          initialItemCount: listData.length,
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
  UserModel({this.firstName, this.lastName, this.profileImageUrl});

  String firstName;
  String lastName;
  String profileImageUrl;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModel &&
          runtimeType == other.runtimeType &&
          firstName == other.firstName &&
          lastName == other.lastName &&
          profileImageUrl == other.profileImageUrl;

  @override
  int get hashCode =>
      firstName.hashCode ^ lastName.hashCode ^ profileImageUrl.hashCode;
}

List<UserModel> listData = [
  UserModel(
    firstName: "Govind",
    lastName: "Dixit",
    profileImageUrl:
        "https://ca.slack-edge.com/TADUGCD9D-UC5F6HJ6T-gfbe5883d03f-1024",
  ),
  UserModel(
    firstName: "Greta",
    lastName: "Stoll",
    profileImageUrl:
        "https://ca.slack-edge.com/TADUGCD9D-UC5F6HJ6T-gfbe5883d03f-1024",
  ),
  UserModel(
    firstName: "Monty",
    lastName: "Carlo",
    profileImageUrl:
        "https://ca.slack-edge.com/TADUGCD9D-UC5F6HJ6T-gfbe5883d03f-1024",
  ),
  UserModel(
    firstName: "Petey",
    lastName: "Cruiser",
    profileImageUrl:
        "https://ca.slack-edge.com/TADUGCD9D-UC5F6HJ6T-gfbe5883d03f-1024",
  ),
  UserModel(
    firstName: "Barry",
    lastName: "Cade",
    profileImageUrl:
        "https://ca.slack-edge.com/TADUGCD9D-UC5F6HJ6T-gfbe5883d03f-1024",
  ),
];
