// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:platform_channels/src/pet_list_message_channel.dart';

/// Demonstrates how to use [BasicMessageChannel] to send & receive the platform
/// Message.
class PetListScreen extends StatefulWidget {
  @override
  _PetListScreenState createState() => _PetListScreenState();
}

class _PetListScreenState extends State<PetListScreen> {
  PetListModel petListModel;

  @override
  void initState() {
    super.initState();
    // Receives a string of json object from the platform and converts it
    // to PetModel.
    BasicMessageChannel('stringCodecDemo', StringCodec())
        .setMessageHandler((message) async {
      setState(() {
        petListModel = PetListModel.fromJson(message);
      });
      return;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pet List'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, '/addPetDetails');
        },
      ),
      body: petListModel?.petList?.isEmpty ?? true
          ? Center(child: Text('Enter Pet Details'))
          : BuildPetList(petListModel.petList),
    );
  }
}

/// Shows list of [PetDetails].
class BuildPetList extends StatelessWidget {
  final List<PetDetails> petList;

  BuildPetList(this.petList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(8),
      itemCount: petList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Pet breed: ${petList[index].breed}'),
          subtitle: Text(
            'Pet type: ${petList[index].petType}',
          ),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () async {
              try {
                await PetListMessageChannel.removePet(index);
                showSnackBar('Removed successfully!', context);
              } catch (error) {
                showSnackBar(error.message.toString(), context);
              }
            },
          ),
        );
      },
    );
  }

  void showSnackBar(String message, BuildContext context) {
    Scaffold.of(context).showSnackBar(SnackBar(
      backgroundColor: Theme.of(context).primaryColor,
      content: Text(message),
    ));
  }
}
