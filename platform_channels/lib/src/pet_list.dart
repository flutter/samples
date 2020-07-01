// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:platform_channels/src/platform_message_channel.dart';

class BasicMessageChannelDemo extends StatefulWidget {
  @override
  _BasicMessageChannelDemoState createState() =>
      _BasicMessageChannelDemoState();
}

class _BasicMessageChannelDemoState extends State<BasicMessageChannelDemo> {
  PetModel petModel;

  @override
  void initState() {
    super.initState();
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
              child: Text('Enter Pet Details'),
            )
          : ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: petModel.petList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(petModel.petList[index].breed),
                  subtitle: Text(petModel.petList[index].petType),
                );
              },
            ),
    );
  }
}