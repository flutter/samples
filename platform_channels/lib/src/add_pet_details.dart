// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:platform_channels/src/pet_list_message_channel.dart';

/// Demonstrates how to use [BasicMessageChannel] to send a message to platform.
///
/// The widget uses [TextField] and [RadioListTile] to take the [PetDetails.breed] and
/// [PetDetails.petType] from the user respectively.
class AddPetDetails extends StatefulWidget {
  const AddPetDetails({Key? key}) : super(key: key);

  @override
  _AddPetDetailsState createState() => _AddPetDetailsState();
}

class _AddPetDetailsState extends State<AddPetDetails> {
  final breedTextController = TextEditingController();
  String petType = 'Dog';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Pet Details'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              PetListMessageChannel.addPetDetails(
                PetDetails(
                  petType: petType,
                  breed: breedTextController.text,
                ),
              );

              Navigator.pop(context);
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: breedTextController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                hintText: 'Breed of pet',
                labelText: 'Breed',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            RadioListTile<String>(
              title: const Text('Dog'),
              value: 'Dog',
              groupValue: petType,
              onChanged: (value) {
                setState(() {
                  petType = value!;
                });
              },
            ),
            RadioListTile<String>(
              title: const Text('Cat'),
              value: 'Cat',
              groupValue: petType,
              onChanged: (value) {
                setState(() {
                  petType = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
