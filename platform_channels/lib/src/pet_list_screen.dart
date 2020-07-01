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
  PetModel petModel;

  @override
  void initState() {
    super.initState();
    // Receives a string of json object from the platform and converts it
    // to PetModel.
    BasicMessageChannel('stringCodecDemo', StringCodec())
        .setMessageHandler((message) async {
      setState(() {
        petModel = PetModel.fromJson(message);
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
      body: petModel == null
          ? Center(
              child: Text('Enter Pet Details')
            )
          : ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: petModel.petList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Pet Breed: ${petModel.petList[index].breed}'),
                  subtitle: Text(
                    'Pet Type: ${petModel.petList[index].petType}',
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () => PetListMessageChannel.removePet(index),
                  ),
                );
              },
            ),
    );
  }
}
