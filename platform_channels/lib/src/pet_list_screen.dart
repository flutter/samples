// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:platform_channels/src/pet_list_message_channel.dart';

/// Demonstrates how to use [BasicMessageChannel] to send & receive the platform
/// Message.
class PetListScreen extends StatefulWidget {
  const PetListScreen({super.key});

  @override
  State<PetListScreen> createState() => _PetListScreenState();
}

class _PetListScreenState extends State<PetListScreen> {
  PetListModel petListModel = PetListModel(petList: []);
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Receives a string of json object from the platform and converts it
    // to PetModel.
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    const BasicMessageChannel<String?>('stringCodecDemo', StringCodec())
        .setMessageHandler((message) async {
      if (message == null) {
        scaffoldMessenger.showSnackBar(
          const SnackBar(
            content: Text('An error occurred while adding pet details.'),
          ),
        );
      } else {
        setState(() {
          petListModel = PetListModel.fromJson(message);
        });
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Pet List'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          context.go('/petListScreen/addPetDetails');
        },
      ),
      body: petListModel.petList.isEmpty
          ? const Center(child: Text('Enter Pet Details'))
          : BuildPetList(petListModel.petList),
    );
  }
}

/// Shows list of [PetDetails].
class BuildPetList extends StatelessWidget {
  final List<PetDetails> petList;

  const BuildPetList(this.petList, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: petList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Pet breed: ${petList[index].breed}'),
          subtitle: Text(
            'Pet type: ${petList[index].petType}',
          ),
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () async {
              final scaffoldMessenger = ScaffoldMessenger.of(context);
              try {
                await PetListMessageChannel.removePet(index);
                scaffoldMessenger.showSnackBar(
                  const SnackBar(content: Text('Removed successfully!')),
                );
              } catch (error) {
                scaffoldMessenger.showSnackBar(SnackBar(
                  content: Text((error as PlatformException).message!),
                ));
              }
            },
          ),
        );
      },
    );
  }
}
